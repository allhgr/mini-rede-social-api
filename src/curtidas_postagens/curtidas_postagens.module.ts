import { Module } from '@nestjs/common';
import { CurtidasPostagensService } from './curtidas_postagens.service';
import { CurtidasPostagensController } from './curtidas_postagens.controller';

@Module({
  controllers: [CurtidasPostagensController],
  providers: [CurtidasPostagensService],
})
export class CurtidasPostagensModule {}
