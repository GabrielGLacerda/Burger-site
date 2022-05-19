/*
  Warnings:

  - The `bread` column on the `Burguer` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Burguer" DROP COLUMN "bread",
ADD COLUMN     "bread" VARCHAR(100)[];
