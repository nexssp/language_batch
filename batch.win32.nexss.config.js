let languageConfig = Object.assign({}, require("../config.win32"));
languageConfig.title = "Batch";
languageConfig.description = "";
languageConfig.url = "https://microsoft.com";
languageConfig.extensions = [".bat", ".cmd"];
languageConfig.executeCommandLine = "cmd";
languageConfig.printCommandLine = ""; //no console.log() needed to display result eg node -p "4+6"
languageConfig.checkSyntax = "";
languageConfig.interactiveShell = "cmd";
languageConfig.builders = {};
languageConfig.compilers = {
  node: {
    install: "installed",
    command: "cmd",
    args: "/c <file>",
    help: ``,
  },
};
languageConfig.errors = require("./nexss.batch.errors");
languageConfig.languagePackageManagers = {
  bat: {},
  else: "",
};

module.exports = languageConfig;
