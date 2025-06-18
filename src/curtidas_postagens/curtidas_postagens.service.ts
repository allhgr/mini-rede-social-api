import { Injectable } from '@nestjs/common';
import { CreateCurtidasPostagenDto } from './dto/create-curtidas_postagen.dto';
import { UpdateCurtidasPostagenDto } from './dto/update-curtidas_postagen.dto';

@Injectable()
export class CurtidasPostagensService {
  create(createCurtidasPostagenDto: CreateCurtidasPostagenDto) {
    return 'This action adds a new curtidasPostagen';
  }

  findAll() {
    return `This action returns all curtidasPostagens`;
  }

  findOne(id: number) {
    return `This action returns a #${id} curtidasPostagen`;
  }

  update(id: number, updateCurtidasPostagenDto: UpdateCurtidasPostagenDto) {
    return `This action updates a #${id} curtidasPostagen`;
  }

  remove(id: number) {
    return `This action removes a #${id} curtidasPostagen`;
  }
}
