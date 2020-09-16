// aqui voy a poner valores por defecto, a manera de ejemplo

let precioHora = 4.25;
let cantEmpleados = 10;
let cantHoras = 100;

// Esta es una manera corta de escribir una funcion que retornara un valor
const costoEmpleados = () => (
    {
        totalSalarios: cantHoras * precioHora,
        totalEmpleados: cantEmpleados
    }
);

const costoEmpleados = () => {
    return ({
        totalSalarios: cantHoras * precioHora,
        totalEmpleados: cantEmpleados
    });
};

module.exports = {
    costoEmpleados: costoEmpleados
}

// Ahora imaginate que este codigo esta en el archivo principal
const miModulo = require('path_to_mi_module');
// Ahora para acceder a los valores podes hacerlo mediante el modulo que acabas de importar
let llamoLaFuncDeMiModulo = miModulo.costoEmpleados();
// accedo a los valores que retorno como si fuera un objeto
// porque la funcion retorna literalmente un objeto XD

// obtengo el total de los salrios
llamoLaFuncDeMiModulo.totalSalarios();

// Obtengo el total de trabajadores
llamoLaFuncDeMiModulo.totalEmpleados();