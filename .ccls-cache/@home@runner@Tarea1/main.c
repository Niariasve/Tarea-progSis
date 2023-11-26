#include "funciones.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
  char *usuario;
  char *contrasena;
  if (argc > 2) {
    FILE *archivo = fopen("usuarios.txt", "r");
    if (archivo == NULL) {
      printf("Error al abrir el archivo.\n");
      return 1;
    }
    char usuarioArchivo[20];
    char contrasenaArchivo[20];
    char tipo[20];
    char linea[70];
    int opcion;
    usuario = argv[1];
    contrasena = argv[2];
    while (fgets(linea, sizeof(linea), archivo) != NULL) {
      sscanf(linea, "%19s %19s %19s", usuarioArchivo, contrasenaArchivo, tipo);
      if (strcmp(usuario, usuarioArchivo) == 0 && strcmp(contrasena, contrasenaArchivo) == 0) {
        if (strcmp(tipo, "administrador") == 0) {
          printf("1. crear usuario\n");
          printf("2. actualizar usuario\n");
          printf("3. salir\n");
          scanf("%d", &opcion);
          switch (opcion) {
            case 1:
              crearUsuario();
            case 2:
              actualizarUsuario();
            default:
              break;
          }
        } else if (strcmp(tipo, "bodeguero") == 0) {
          printf("1. crear producto\n");
          printf("2. actualizar producto\n");
          printf("3. salir\n");
          scanf("%d", &opcion);
          switch (opcion) {
            case 1:
              crearProducto();
            case 2:
              actualizarProducto();
            default:
              break;
          }
        } else if (strcmp(tipo, "vendedor") == 0) {
          printf("1.registrar venta\n");
          printf("2. salir\n");
          scanf("%d", &opcion);
          switch (opcion) {
            case 1:
              registrarVenta();
            default:
              break;
          }
        }      
      }
    }
    fclose(archivo);
    return 0;
  }
  
  printf("No se han recibido parametros\n");
  return -1;
}