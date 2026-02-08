/// Maps a file extension to the corresponding code fence language identifier.
pub fn ext_to_lang(ext: &str) -> &'static str {
    match ext {
        "rs" => "rust",
        "ts" => "typescript",
        "js" => "javascript",
        "py" => "python",
        "sh" | "bash" => "bash",
        "yml" | "yaml" => "yaml",
        "json" => "json",
        "go" => "go",
        "java" => "java",
        "c" => "c",
        "cpp" | "cc" | "cxx" => "cpp",
        "h" | "hpp" => "c",
        "rb" => "ruby",
        "sql" => "sql",
        "html" => "html",
        "css" => "css",
        "md" => "markdown",
        "toml" => "toml",
        "xml" => "xml",
        "txt" => "text",
        _ => "",
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn known_extensions() {
        assert_eq!(ext_to_lang("rs"), "rust");
        assert_eq!(ext_to_lang("py"), "python");
        assert_eq!(ext_to_lang("yml"), "yaml");
        assert_eq!(ext_to_lang("yaml"), "yaml");
        assert_eq!(ext_to_lang("cpp"), "cpp");
    }

    #[test]
    fn unknown_extension() {
        assert_eq!(ext_to_lang("zzz"), "");
        assert_eq!(ext_to_lang(""), "");
    }
}
