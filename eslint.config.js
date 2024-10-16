export default [
    {
      ignores: ["node_modules/**"],
    },
    {
      files: ["**/*.js"],
      languageOptions: {
        sourceType: "module",
      },
      rules: {
        // Add your rules here
        "no-unused-vars": "warn",
        "no-console": "off",
      },
    },
  ];