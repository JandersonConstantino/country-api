use crate::{common::ErrorHandler, service::country_service::CountryService};
use actix_web::{web, HttpResponse, Responder};
use serde::Deserialize;

#[derive(Deserialize)]
struct GetAllQuery {
    page: Option<String>,
    page_size: Option<String>,
}

#[derive(Deserialize)]
struct GetByIdPath {
    id: String,
}

async fn get_all(query: web::Query<GetAllQuery>) -> impl Responder {
    let page = match query.page.clone() {
        Some(p) => p,
        None => "".to_string(),
    };

    let page_size = match query.page_size.clone() {
        Some(p) => p,
        None => "".to_string(),
    };

    match CountryService::new()
        .get_all(page.as_str(), page_size.as_str())
        .await
    {
        Ok(countries) => HttpResponse::Ok().json(countries),
        Err(e) => ErrorHandler::to_http_response(e),
    }
}

async fn get_by_id(params: web::Path<GetByIdPath>) -> impl Responder {
    match CountryService::new().get_by_id(params.id.clone()).await {
        Ok(country) => HttpResponse::Ok().json(country),
        Err(e) => ErrorHandler::to_http_response(e),
    }
}

pub fn register(cfg: &mut web::ServiceConfig) {
    cfg.service(
        web::scope("/country")
            .route("", web::get().to(get_all))
            .route("/{id}", web::get().to(get_by_id)),
    );
}
