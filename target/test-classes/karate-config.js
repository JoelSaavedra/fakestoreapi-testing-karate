function fn() {
  //Obtiene el system.property env de karate
  var env = karate.env;
  var baseURL = ''

  karate.log('Se realiza la ejecución en ambiente: ', env);

  //Configuración de los ambientes env
  if (!env) {
    env = 'dev';
  }
  if (env === 'dev') {

    baseURL = 'https://fakestoreapi.com'
  } else if (env === 'cert') {
    baseURL = 'https://fakestoreapi.com'
  }

  //
  var config = {
      env: env,
      baseURL: baseURL
    }
  return config;
}