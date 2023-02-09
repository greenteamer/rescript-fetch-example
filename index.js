require("dotenv").config();
const envHelpers = require("./src/config/DecodeEnv.bs.js");
// const httpClient = require("./src/utils/Http.bs.js");

const env = envHelpers.decodeEnv(process.env);

(async () => {
  console.log(">>> start async <<<");
  console.log(env);
  const res = await fetch("");
  console.log(res);
  console.log(">>> end async <<<");
})();

// httpClient.someRaw();
