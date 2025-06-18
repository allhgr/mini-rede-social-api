import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { CreateUsuarioDto } from "../dto/create-usuario.dto";
import { UsuarioEntity } from "../entities/usuario.entity";

@Injectable()
export class UsuarioRepository {
    constructor(private readonly prismaRepository: PrismaService) {}

    async create(createUsuarioDto: CreateUsuarioDto): Promise<UsuarioEntity> {
        return this.prismaRepository.usuarios.create({
            data: createUsuarioDto,
        });
    }
}