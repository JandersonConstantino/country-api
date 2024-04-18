// @generated automatically by Diesel CLI.

pub mod sql_types {
    #[derive(diesel::query_builder::QueryId, diesel::sql_types::SqlType)]
    #[diesel(postgres_type(name = "point", schema = "pg_catalog"))]
    pub struct Point;
}

diesel::table! {
    use diesel::sql_types::*;
    use super::sql_types::Point;

    cidade (id) {
        id -> Int8,
        #[max_length = 120]
        nome -> Nullable<Varchar>,
        uf -> Nullable<Int4>,
        ibge -> Nullable<Int4>,
        lat_lon -> Nullable<Point>,
        latitude -> Nullable<Float8>,
        longitude -> Nullable<Float8>,
        cod_tom -> Nullable<Int2>,
    }
}

diesel::table! {
    estado (id) {
        id -> Int8,
        #[max_length = 60]
        nome -> Nullable<Varchar>,
        #[max_length = 2]
        uf -> Nullable<Varchar>,
        ibge -> Nullable<Int4>,
        pais -> Nullable<Int4>,
        ddd -> Nullable<Json>,
    }
}

diesel::table! {
    pais (id) {
        id -> Int8,
        #[max_length = 60]
        nome -> Nullable<Varchar>,
        #[max_length = 60]
        nome_pt -> Nullable<Varchar>,
        #[max_length = 2]
        sigla -> Nullable<Varchar>,
        bacen -> Nullable<Int4>,
    }
}

diesel::allow_tables_to_appear_in_same_query!(
    cidade,
    estado,
    pais,
);
