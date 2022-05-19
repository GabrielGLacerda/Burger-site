import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { BurgerDto } from "./dto";
import { UpdateBurgerDto } from "./dto/updateBurgerDto.dto";

@Injectable({})
export class BurgerService {
    constructor(private prisma: PrismaService){}

    create(dto: BurgerDto) {
        const burger = this.prisma.burger.create({
            data: {
                bread: dto.bread,
                meat: dto.meat,
                toppings: dto.toppings
            }
        })
        return burger
    }

    findAll() {
        return this.prisma.burger.findMany()
    }

    update(id: string, updateBurgerDto: UpdateBurgerDto) {
        return this.prisma.burger.update({
            where: { id: id },
            data: updateBurgerDto
        })
    }

    remove(id: string) {
        return this.prisma.burger.delete({ where: { id: id } });
    }
}
