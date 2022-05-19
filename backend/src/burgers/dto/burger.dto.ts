import { IsNotEmpty, IsString } from "class-validator"

export class BurgerDto {
    @IsString()
    @IsNotEmpty()
    bread: string

    @IsString()
    @IsNotEmpty()
    meat: string

    @IsString()
    toppings: string
}