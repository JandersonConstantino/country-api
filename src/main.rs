mod common;
mod controller;
mod core;
mod models;
mod repository;
mod schema;
mod service;

use actix_web::middleware::Logger;
use actix_web::{App, HttpServer};
use dotenv::dotenv;
use env_logger::Env;

use controller::country_controller;
use core::environment::Environment;

const ADDRESS: &str = "127.0.0.1";

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    dotenv().ok();

    let port = Environment::get_or_default("PORT", "8080")
        .parse::<u16>()
        .expect("[ENVIRONMENT]: PORT must be a valid u16 number");

    println!("Server is running on http://{}:{}", ADDRESS, port);
    env_logger::init_from_env(Env::default().default_filter_or("info"));

    HttpServer::new(|| {
        App::new()
            .wrap(Logger::default())
            .configure(country_controller::register)
    })
    .bind((ADDRESS, port))?
    .run()
    .await
}
