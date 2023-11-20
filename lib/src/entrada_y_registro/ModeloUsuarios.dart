class ModeloUsuario {
  final String? id;
  final String nombre;
  final String apellido;
  final String email;
  final String password;

  const ModeloUsuario({
    this.id,
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.password,
  });

  ToJsonUsuario() {
    return {
      "nombre": nombre,
      "apeliido": apellido,
      "email": email,
      "password": password
    };
  }
}
