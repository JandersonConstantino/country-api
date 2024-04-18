use crate::common::ErrorHandler;
use crate::repository::country_repository::CountryRepository;
use crate::{common::ErrorResult, models::Pais};

pub struct CountryService;

impl CountryService {
    pub fn new() -> CountryService {
        CountryService
    }

    pub async fn get_all(&self, page: &str, page_size: &str) -> Result<Vec<Pais>, ErrorResult> {
        let repository = CountryRepository::new();

        let limit = match page_size.is_empty() {
            true => 10,
            false => match page_size.parse::<i64>() {
                Ok(p) => p,
                Err(_) => return Err(ErrorHandler::bad_request("page_size must be a number")),
            },
        };

        if limit < 1 {
            return Err(ErrorHandler::bad_request(
                "page_size must be greater than 0",
            ));
        }

        if limit > 100 {
            return Err(ErrorHandler::bad_request(
                "page_size must be less than or equal to 100",
            ));
        }

        let offset = match page.is_empty() {
            true => 0,
            false => match page.parse::<i64>() {
                Ok(p) => p * limit,
                Err(_) => return Err(ErrorHandler::bad_request("page must be a number")),
            },
        };

        repository.get_all(offset, limit)
    }

    pub async fn get_by_id(&self, id: String) -> Result<Pais, ErrorResult> {
        let parsed_id = id.parse::<i64>();

        match parsed_id {
            Ok(id) => CountryRepository::new().get_by_id(id),
            Err(_) => Err(ErrorHandler::bad_request("id must be a number")),
        }
    }
}
