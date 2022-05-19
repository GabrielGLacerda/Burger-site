import { Body, Controller, Delete, Get, Param, Patch, Post } from "@nestjs/common";
import { BurgerService } from "./burger.service";
import { BurgerDto } from "./dto";
import { UpdateBurgerDto } from "./dto/updateBurgerDto.dto";

@Controller('burgers')
export class BurgerController {
    constructor(private burgerService: BurgerService) {}

    @Post('build')
    create(@Body() dto: BurgerDto) {
        return this.burgerService.create(dto)
    }
    
    @Get()
    FindAll() {
        return this.burgerService.findAll()
    }

    @Patch(':id')
    update(@Param('id') id: string, @Body() updateBurgerDto: UpdateBurgerDto) {
        return this.burgerService.update(id, updateBurgerDto)    
    }

    @Delete(':id')
    remove(@Param('id') id: string) {
        return this.burgerService.remove(id)
    }
}