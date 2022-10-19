import Sequelize from 'sequelize';

/**
 * Creamos conexion a nuestra base de datos
 */
const sequelize = new Sequelize('mascotas', 'carlos', '@Unlock950409', {
    host: 'localhost',
    dialect:'postgres'
  });

  export {
    sequelize
  }
