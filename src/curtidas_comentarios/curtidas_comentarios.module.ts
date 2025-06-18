import { Module } from '@nestjs/common';
import { CurtidasComentariosService } from './curtidas_comentarios.service';
import { CurtidasComentariosController } from './curtidas_comentarios.controller';

@Module({
  controllers: [CurtidasComentariosController],
  providers: [CurtidasComentariosService],
})
export class CurtidasComentariosModule {}
