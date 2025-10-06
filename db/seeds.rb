Recipe.create!(
  title: "Ensalada Cesar",
  cook_time: 20,
  difficulty: "Easy"
).tap do |r|
  r.instructions = "Cocina la pechuga de pollo a la plancha hasta que esté dorada y bien cocida, luego córtala en tiras. Lava y corta la lechuga romana en trozos medianos, colócala en un tazón grande y añade los cubos de pan tostado y el queso parmesano rallado. Incorpora el pollo y mezcla todo suavemente. Finalmente, agrega el aderezo César al gusto y sirve la ensalada fría."
  r.save!
end

Recipe.create!(
  title: "Pasta con salsa de tomate y albahaca",
  cook_time: 25,
  difficulty: "Medium"
).tap do |r|
  r.instructions = "Hierve la pasta en agua con sal siguiendo las instrucciones del empaque. Mientras tanto, calienta aceite de oliva en una sartén y sofríe ajo picado hasta que esté ligeramente dorado. Agrega los tomates triturados o la salsa de tomate, sazona con sal, pimienta y cocina durante unos diez minutos. Incorpora las hojas de albahaca fresca, mezcla bien y deja reposar un par de minutos. Escurre la pasta, combínala con la salsa y sirve caliente."
  r.save!
end

Recipe.create!(
  title: "Tacos de carne",
  cook_time: 30,
  difficulty: "Easy"
).tap do |r|
  r.instructions = "En una sartén grande, cocina la carne molida junto con cebolla y ajo picados hasta que se dore. Agrega tomate picado y condimenta con comino, pimentón, sal y pimienta al gusto. Deja cocinar unos minutos más hasta que la mezcla esté jugosa y bien sazonada. Calienta las tortillas en un sartén o comal y rellénalas con la carne preparada. Añade lechuga picada, queso rallado y la salsa que prefieras, luego sirve los tacos acompañados de rodajas de limón."
  r.save!
end
