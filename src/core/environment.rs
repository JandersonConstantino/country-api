pub struct Environment;

impl Environment {
    pub fn get(key: &str) -> String {
        std::env::var(key).expect(&format!("[ENVIRONMENT]: {} must be set", key))
    }

    pub fn get_or_default(key: &str, default: &str) -> String {
        std::env::var(key).unwrap_or(default.to_string())
    }
}
