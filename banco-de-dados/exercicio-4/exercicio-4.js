db.posts.updateOne(
    { "titulo": "Primeiro Post em MongoDB" },
    {
        $set: {
            "comentarios": [
                { "usuario": "maria_dev", "texto": "Ótimo post!" },
                { "usuario": "joao_data", "texto": "Curti a introdução." }
            ]
        }
    }
)