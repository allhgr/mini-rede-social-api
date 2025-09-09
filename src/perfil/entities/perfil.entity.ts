import { Perfil } from "@prisma/client";

export class PerfilEntity implements Perfil {
    id: number;
    usuario_id: number;
    nome_per: string;
    usuario?: {
        nome_usua: string;
      };
}
