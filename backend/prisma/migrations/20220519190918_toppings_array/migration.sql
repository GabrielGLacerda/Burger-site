/*
  Warnings:

  - The `toppings` column on the `Burger` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Burger" DROP COLUMN "toppings",
ADD COLUMN     "toppings" VARCHAR(100)[];
