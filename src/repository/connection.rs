use diesel::pg::PgConnection;
use diesel::prelude::*;

use crate::core::environment::Environment;

pub fn establish_connection() -> PgConnection {
    let database_url = Environment::get("DATABASE_URL");

    PgConnection::establish(&database_url)
        .expect(&format!("[DATABASE]: Error connecting to {}", database_url))
}
