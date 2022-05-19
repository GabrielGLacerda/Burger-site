import { Module } from '@nestjs/common'
import { BurgerController } from './burger.controller';
import { BurgerService } from './burger.service';

@Module({
    controllers: [BurgerController],
    providers: [BurgerService]
})
export class BurgerModule {}