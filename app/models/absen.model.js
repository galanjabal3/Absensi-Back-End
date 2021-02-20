module.exports = (sequelize, Sequelize) => {
    const Absen = sequelize.define("absens", {
      username: {
        type: Sequelize.STRING
      },
      absensi: {
        type: Sequelize.STRING
      },
      lat: {
        type: Sequelize.STRING
      },
      lng: {
        type: Sequelize.STRING
      }
    });
  
    return Absen;
  };