# Limpiar registros existentes
Recipe.destroy_all
User.destroy_all

# Crear usuario admin
admin_user = User.create!(
  email: 'admin@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  role: 'admin'
)

# Crear usuario regular
regular_user = User.create!(
  email: 'usuario@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  role: 'regular'
)

# Receta 1: Pasta al Pesto Genovés (del usuario regular)
Recipe.create!(
  title: "Pasta al Pesto Genovés",
  cook_time: 25,
  difficulty: "Fácil",
  user: regular_user
).tap do |r|
  r.instructions = <<~TEXT
    INGREDIENTES:
    - 400g de espaguetis o linguini
    - 2 tazas de hojas de albahaca fresca
    - 1/2 taza de queso parmesano rallado
    - 1/4 taza de piñones
    - 2 dientes de ajo
    - 1/2 taza de aceite de oliva extra virgen
    - Sal y pimienta al gusto

    INSTRUCCIONES:

    1. PREPARAR EL PESTO:
    En un procesador de alimentos, combina la albahaca, piñones, ajo y queso parmesano. Procesa hasta que quede bien picado. Con el procesador en funcionamiento, vierte lentamente el aceite de oliva hasta que se forme una pasta homogénea. Sazona con sal y pimienta al gusto. Reserva.

    2. COCER LA PASTA:
    En una olla grande, lleva agua a ebullición y agrega sal generosamente. Cocina la pasta según las instrucciones del paquete hasta que esté al dente. Reserva 1/2 taza del agua de cocción antes de escurrir la pasta.

    3. MEZCLAR Y SERVIR:
    En la olla aún caliente, combina la pasta escurrida con el pesto. Agrega un poco del agua de cocción reservada para ayudar a emulsionar la salsa. Mezcla bien hasta que toda la pasta esté cubierta de pesto. Decora con hojas de albahaca fresca y queso parmesano adicional.

    CONSEJOS:
    - Para un pesto más cremoso, agrega 2 cucharadas de yogur griego
    - Los piñones pueden sustituirse por nueces o almendras
    - Sirve inmediatamente para disfrutar del mejor sabor
  TEXT
  r.save!
end

# Receta 2: Sopa Mediterránea de Lentejas (del admin)
Recipe.create!(
  title: "Sopa Mediterránea de Lentejas",
  cook_time: 45,
  difficulty: "Medio",
  user: admin_user
).tap do |r|
  r.instructions = <<~TEXT
    INGREDIENTES:
    - 1 taza de lentejas secas
    - 1 cebolla grande picada
    - 2 zanahorias en cubos
    - 2 tallos de apio picados
    - 3 dientes de ajo picados
    - 1 lata de tomates picados (400g)
    - 6 tazas de caldo de verduras
    - 2 cucharadas de aceite de oliva
    - 1 cucharadita de comino
    - 1 cucharadita de pimentón dulce
    - Sal, pimienta y hojas de laurel

    INSTRUCCIONES:

    1. PREPARAR LAS VERDURAS:
    En una olla grande, calienta el aceite de oliva a fuego medio. Agrega la cebolla, zanahorias y apio. Sofríe por 5-7 minutos hasta que las verduras estén tiernas. Añade el ajo y cocina por 1 minuto más.

    2. COCINAR LAS LENTEJAS:
    Agrega las lentejas secas a la olla y revuelve para cubrirlas con el aceite. Añade los tomates picados, el caldo de verduras, comino, pimentón y las hojas de laurel. Lleva a ebullición.

    3. COCCIÓN LENTA:
    Reduce el fuego a bajo, tapa la olla y cocina por 30-35 minutos, o hasta que las lentejas estén tiernas. Revuelve ocasionalmente.

    4. ACABADO Y SERVIR:
    Retira las hojas de laurel. Sazona con sal y pimienta al gusto. Si prefieres una textura más cremosa, puedes triturar ligeramente parte de la sopa con un aplastador. Sirve caliente con un chorrito de aceite de oliva y pan crujiente.

    CONSEJOS:
    - Puedes agregar espinacas frescas los últimos 5 minutos de cocción
    - Esta sopa sabe aún mejor al día siguiente
    - Ajusta la consistencia agregando más caldo si es necesario
  TEXT
  r.save!
end

puts "¡Base de datos poblada exitosamente!"
puts "Usuario admin: admin@example.com / password123"
puts "Usuario regular: usuario@example.com / password123"
