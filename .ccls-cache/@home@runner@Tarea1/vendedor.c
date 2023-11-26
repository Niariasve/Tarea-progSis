#include "funciones.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void registrarVenta() {
  FILE *archivo = fopen("ventas.txt", "a");
  if (archivo == NULL) {
    fclose(archivo);
    printf("Error al abrir el archivo\n");
    return;
  }
  int codigoProducto;
  int codigo;
  double precio;
  int cantidad;
  char nombreProducto[20];
  char categoria[20];
  char marca[20];
  char linea[100];

  printf("Ingrese el codigo del producto: ");
  scanf("%d", &codigoProducto);

  while (fgets(linea, sizeof(linea), archivo) != NULL) {
    sscanf(linea, "%d %lf %19s %d %19s %19s", &codigo, &precio, nombreProducto, &cantidad, categoria, marca);
    if (codigo == codigoProducto) {
      double precioVenta;
      char vendedor[20];
      char fecha[20];
      char local[20];
      printf("Ingrese el nombre del vendedor: ");
      scanf("%s", vendedor);
      printf("Ingrese la fecha de venta: ");
      scanf("%s", fecha);
      printf("Ingrese el precio de venta: ");
      scanf("%lf", &precioVenta);
      printf("Ingrese el local de venta: ");
      scanf("%s", local);

      fprintf(archivo, "%s %0.2lf %s %s\n", vendedor, precioVenta, fecha, local);
      disminuirInventario(codigoProducto);
    }
  }
  fclose(archivo);
}