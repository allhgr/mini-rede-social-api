-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Comentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "mensagem_come" TEXT NOT NULL,
    "criacao_come" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Comentarios_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Comentarios_postagem_id_fkey" FOREIGN KEY ("postagem_id") REFERENCES "Postagens" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Comentarios" ("criacao_come", "id", "mensagem_come", "postagem_id", "usuario_id") SELECT "criacao_come", "id", "mensagem_come", "postagem_id", "usuario_id" FROM "Comentarios";
DROP TABLE "Comentarios";
ALTER TABLE "new_Comentarios" RENAME TO "Comentarios";
CREATE TABLE "new_CurtidasComentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "comentario_id" INTEGER NOT NULL,
    "criacao_cuco" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "CurtidasComentarios_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "CurtidasComentarios_comentario_id_fkey" FOREIGN KEY ("comentario_id") REFERENCES "Comentarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_CurtidasComentarios" ("comentario_id", "criacao_cuco", "id", "usuario_id") SELECT "comentario_id", "criacao_cuco", "id", "usuario_id" FROM "CurtidasComentarios";
DROP TABLE "CurtidasComentarios";
ALTER TABLE "new_CurtidasComentarios" RENAME TO "CurtidasComentarios";
CREATE TABLE "new_CurtidasPostagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "criacao_cupo" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "CurtidasPostagens_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "CurtidasPostagens_postagem_id_fkey" FOREIGN KEY ("postagem_id") REFERENCES "Postagens" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_CurtidasPostagens" ("criacao_cupo", "id", "postagem_id", "usuario_id") SELECT "criacao_cupo", "id", "postagem_id", "usuario_id" FROM "CurtidasPostagens";
DROP TABLE "CurtidasPostagens";
ALTER TABLE "new_CurtidasPostagens" RENAME TO "CurtidasPostagens";
CREATE TABLE "new_Postagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "mensagem_post" TEXT NOT NULL,
    "criacao_post" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Postagens_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Postagens" ("criacao_post", "id", "mensagem_post", "usuario_id") SELECT "criacao_post", "id", "mensagem_post", "usuario_id" FROM "Postagens";
DROP TABLE "Postagens";
ALTER TABLE "new_Postagens" RENAME TO "Postagens";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
