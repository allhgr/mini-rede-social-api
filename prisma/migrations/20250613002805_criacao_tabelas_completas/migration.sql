-- CreateTable
CREATE TABLE "Postagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "mensagem_post" TEXT NOT NULL,
    "criacao_post" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "CurtidasPostagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "criacao_cupo" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Comentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "mensagem_come" TEXT NOT NULL,
    "criacao_come" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "CurtidasComentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "comentario_id" INTEGER NOT NULL,
    "criacao_cuco" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
