#ifndef FUNCIONES
#define FUNCIONES

struct Producto {
    int codigo;
    float precio_compra;
    int inventario;
    char nombre[50];
    char categoria[50];
    char marca[50];
};

struct RegistroVenta {
  int precioventa;
  char vendedor[20];
  char fecha[20];
  char local[20];
};

struct Bodeguero{
  char username[20];
  char password[20];
};

struct Vendedor {
  char username[20];
  char password[20];
};

struct Admin{
  char username[20];
  char password[20];
};

//funciones de administrador
void crearUsuario();
void actualizarUsuario();

//funciones para bodeguero
void crearProducto();
void actualizarProducto();
void disminuirInventario();

//funciones para vendedor
void registrarVenta();

#endif