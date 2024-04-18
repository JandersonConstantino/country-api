use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub enum ErrorType {
    BadRequest = 400,
    NotFound = 404,
    InternalServerError = 500,
}

pub struct ErrorResult {
    pub code: ErrorType,
    pub message: String,
}

#[derive(Serialize, Deserialize)]
pub struct HttpResponseError {
    pub status_code: ErrorType,
    pub name: String,
    pub message: String,
}

pub struct ErrorHandler;

impl ErrorHandler {
    pub fn bad_request(message: &str) -> ErrorResult {
        ErrorResult {
            code: ErrorType::BadRequest,
            message: message.to_string(),
        }
    }

    // TODO: add stracktrace when in debug mode
    pub fn internal_server_error(message: &str) -> ErrorResult {
        ErrorResult {
            code: ErrorType::InternalServerError,
            message: message.to_string(),
        }
    }

    pub fn not_found(message: &str) -> ErrorResult {
        ErrorResult {
            code: ErrorType::NotFound,
            message: message.to_string(),
        }
    }

    pub fn to_http_response(error_result: ErrorResult) -> actix_web::HttpResponse {
        match error_result.code {
            ErrorType::BadRequest => {
                actix_web::HttpResponse::BadRequest().json(HttpResponseError {
                    status_code: ErrorType::BadRequest,
                    name: "Bad Request".to_string(),
                    message: error_result.message,
                })
            }

            ErrorType::InternalServerError => {
                actix_web::HttpResponse::InternalServerError().json(HttpResponseError {
                    status_code: ErrorType::InternalServerError,
                    name: "Internal Server Error".to_string(),
                    message: error_result.message,
                })
            }

            ErrorType::NotFound => actix_web::HttpResponse::NotFound().json(HttpResponseError {
                status_code: ErrorType::NotFound,
                name: "Not Found".to_string(),
                message: error_result.message,
            }),
        }
    }
}
