use diesel::prelude::*;
use serde::{Deserialize, Serialize};

#[derive(Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = crate::schema::pais)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Pais {
    pub id: i64,
    pub nome: Option<String>,
    pub nome_pt: Option<String>,
    pub sigla: Option<String>,
    pub bacen: Option<i32>,
}

#[derive(Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = crate::schema::estado)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Estado {
    pub id: i64,
    pub nome: Option<String>,
    pub uf: Option<String>,
    pub ibge: Option<i32>,
    pub pais: Option<i32>,
}

#[derive(Queryable, Selectable, Serialize, Deserialize)]
#[diesel(table_name = crate::schema::cidade)]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct Cidade {
    pub id: i64,
    pub nome: Option<String>,
    pub uf: Option<i32>,
    pub ibge: Option<i32>,
    pub latitude: Option<f64>,
    pub longitude: Option<f64>,
    pub cod_tom: Option<i16>,
}
