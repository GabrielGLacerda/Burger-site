import { Module } from '@nestjs/common';
import { BurgerModule } from './burgers/burger.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [BurgerModule, PrismaModule],
})
export class AppModule {}
