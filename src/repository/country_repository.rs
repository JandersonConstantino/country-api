use diesel::query_dsl::methods::{FilterDsl, LimitDsl, OffsetDsl, SelectDsl};
use diesel::{ExpressionMethods, RunQueryDsl, SelectableHelper};

use crate::common::{ErrorHandler, ErrorResult};
use crate::models::Pais;
use crate::repository::connection;
use crate::schema::pais::dsl::*;

pub struct CountryRepository;

impl CountryRepository {
    pub fn new() -> CountryRepository {
        CountryRepository
    }

    pub fn get_all(&self, offset: i64, limit: i64) -> Result<Vec<Pais>, ErrorResult> {
        match pais
            .offset(offset)
            .limit(limit)
            .select(Pais::as_select())
            .load::<Pais>(&mut connection::establish_connection())
        {
            Ok(results) => Ok(results),
            Err(_) => Err(ErrorHandler::internal_server_error("Cannot get countries!")),
        }
    }

    pub fn get_by_id(&self, _id: i64) -> Result<Pais, ErrorResult> {
        match pais
            .filter(id.eq(_id))
            .select(Pais::as_select())
            .first::<Pais>(&mut connection::establish_connection())
        {
            Ok(result) => Ok(result),
            Err(_) => Err(ErrorHandler::not_found("Country not found!")),
        }
    }
}
