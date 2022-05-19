/*
  Warnings:

  - You are about to alter the column `toppings` on the `Burguer` table. The data in that column could be lost. The data in that column will be cast from `VarChar(100)` to `VarChar(100)`.
  - You are about to alter the column `meat` on the `Burguer` table. The data in that column could be lost. The data in that column will be cast from `VarChar(100)` to `VarChar(100)`.
  - You are about to alter the column `bread` on the `Burguer` table. The data in that column could be lost. The data in that column will be cast from `VarChar(100)` to `VarChar(100)`.

*/
-- AlterTable
ALTER TABLE "Burguer" ALTER COLUMN "toppings" SET NOT NULL,
ALTER COLUMN "toppings" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "meat" SET NOT NULL,
ALTER COLUMN "meat" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "bread" SET NOT NULL,
ALTER COLUMN "bread" SET DATA TYPE VARCHAR(100);
