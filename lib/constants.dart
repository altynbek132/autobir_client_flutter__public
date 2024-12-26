const kAppStoreBeta = true;

const kIsProd = bool.fromEnvironment('PROD', defaultValue: false);
const kIsDev = !kIsProd;
