#include "funciones.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void crearUsuario() {
  char nombreUsuario[20];
  char contrasena[20];
  char tipo[20];
  
  FILE *archivo = fopen("usuarios.txt", "a");
  if (archivo != NULL) {
    printf("Ingrese el nombre de usuario: ");
    scanf("%s", nombreUsuario);
    printf("Ingrese la contraseña: ");
    scanf("%s", contrasena);
    printf("Ingrese el tipo de usuario (vendedor/bodeguero): ");
    scanf("%s", tipo);
    fprintf(archivo, "%s %s %s\n", nombreUsuario, contrasena, tipo);
  } else {
    printf("Error al abrir el archivo.\n");
  }
  fclose(archivo);
}

void actualizarUsuario() {
  FILE *archivoOriginal = fopen("usuarios.txt", "r");
  FILE *archivoTemporal = fopen("usuarios_temp.txt", "w");

  if (archivoOriginal == NULL || archivoTemporal == NULL) {
    if (archivoOriginal != NULL) fclose(archivoOriginal);
    if (archivoTemporal != NULL) fclose(archivoTemporal);
    printf("Error al abrir el archivo.\n");
    return;
  }

  char linea[70];
  char nombreUsuario[20];
  char nombreActual[20];
  char tipoNuevo[20];
  char nuevaContrasena[20];
  printf("Ingrese el usuario que quiere modificar: ");
  scanf("%s", nombreUsuario);
  
  while (fgets(linea, sizeof(linea), archivoOriginal) != NULL) {
    //solo leer el nombre del usuario  
    sscanf(linea, "%19s", nombreActual);
    if (strcmp(nombreUsuario, nombreActual) == 0) {      
      printf("Ingrese la nueva contraseña: ");
      scanf("%s", nuevaContrasena);
      printf("Ingrese el nuevo tipo: ");
      scanf("%s", tipoNuevo);
      fprintf(archivoTemporal, "%s %s %s\n", nombreActual, nuevaContrasena, tipoNuevo);
    } else {
      fputs(linea, archivoTemporal);
    }    
  }
  fclose(archivoOriginal);
  fclose(archivoTemporal);
  remove("usuarios.txt");
  rename("usuarios_temp.txt", "usuarios.txt");
}