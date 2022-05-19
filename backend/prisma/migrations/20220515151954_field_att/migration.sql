/*
  Warnings:

  - The `meat` column on the `Burguer` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "Burguer" DROP COLUMN "meat",
ADD COLUMN     "meat" VARCHAR(100)[];

-- CreateIndex
CREATE UNIQUE INDEX "Burguer_meat_key" ON "Burguer"("meat");
