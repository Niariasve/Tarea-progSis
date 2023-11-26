#include "funciones.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void crearProducto() {
  FILE *archivo = fopen("productos.txt", "a");
  if (archivo != NULL) {
    int codigo;
    double precio;
    int cantidad;
    char nombreProducto[20];
    char categoria[20];
    char marca[20];
    printf("Ingrese el codigo del producto: ");
    scanf("%d", &codigo);
    printf("Ingrese el nombre del producto: ");
    scanf("%s", nombreProducto);
    printf("Ingrese el precio del producto: ");
    scanf("%lf", &precio);
    printf("Ingrese la cantidad del producto: ");
    scanf("%d", &cantidad);
    printf("Ingrese la categoria del producto: ");
    scanf("%s", categoria);
    printf("Ingrese la marca del producto: ");
    scanf("%s", marca);
    fprintf(archivo, "%d %0.2lf %s %d %s %s\n", codigo, precio, nombreProducto, cantidad, categoria, marca);
  }
  fclose(archivo);
}

void actualizarProducto() {
  FILE *archivoOriginal = fopen("productos.txt", "r");
  FILE *archivoTemporal = fopen("productos_temp.txt", "w");
  
  if (archivoOriginal == NULL || archivoTemporal == NULL) {
    if (archivoOriginal != NULL) fclose(archivoOriginal);
    if (archivoTemporal != NULL) fclose(archivoTemporal);
    printf("Error al abrir el archivo\n");
    return;
  }

  int codigo;
  double precio;
  int cantidad;
  char nombreProducto[20];
  char categoria[20];
  char marca[20];
  char linea[100];

  int codigoModificar;
  printf("Ingrese el codigo del producto que desea modificar: ");
  scanf("%d", &codigoModificar);

  while (fgets(linea, sizeof(linea), archivoOriginal) != NULL) {
      sscanf(linea, "%d %lf %19s %d %19s %19s", &codigo, &precio, nombreProducto, &cantidad, categoria, marca);

      if (codigo == codigoModificar) {           
          printf("Ingrese el nuevo precio del producto: ");
          scanf("%lf", &precio);
          printf("Ingrese la nueva cantidad del producto: ");
          scanf("%d", &cantidad);
          
          fprintf(archivoTemporal, "%d %0.2lf %s %d %s %s\n", codigo, precio, nombreProducto, cantidad, categoria, marca);
      } else {         
          fputs(linea, archivoTemporal);
      }
  }

  fclose(archivoOriginal);
  fclose(archivoTemporal);

  remove("productos.txt");
  rename("productos_temp.txt", "productos.txt");
}

void disminuirInventario(int codigoProducto){
  FILE *archivoOriginal = fopen("productos.txt", "r");
  FILE *archivoTemporal = fopen("productos_temp.txt", "w");

  if (archivoOriginal == NULL || archivoTemporal == NULL) {
    if (archivoOriginal != NULL) fclose(archivoOriginal);
    if (archivoTemporal != NULL) fclose(archivoTemporal);
    return;
  }

  int codigo;
  double precio;
  int cantidad;
  char nombreProducto[20];
  char categoria[20];
  char marca[20];
  char linea[100];

  while (fgets(linea, sizeof(linea), archivoOriginal) != NULL) {
      sscanf(linea, "%d %lf %19s %d %19s %19s", &codigo, &precio, nombreProducto, &cantidad, categoria, marca);

      if (codigo == codigoProducto) {           
          precio -= 1;
          fprintf(archivoTemporal, "%d %0.2lf %s %d %s %s\n", codigo, precio, nombreProducto, cantidad, categoria, marca);
      } else {         
          fputs(linea, archivoTemporal);
      }
  }
  fclose(archivoOriginal);
  fclose(archivoTemporal);

  remove("productos.txt");
  rename("productos_temp.txt", "productos.txt");
}