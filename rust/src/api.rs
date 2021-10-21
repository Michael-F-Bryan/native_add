use anyhow::Result;

/// Add two numbers.
pub fn add(left: i32, right: i32) -> Result<String> {
    Ok(format!("{} + {} = {}", left, right, left + right))
}
