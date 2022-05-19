/*
  Warnings:

  - The primary key for the `Burguer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Made the column `meat` on table `Burguer` required. This step will fail if there are existing NULL values in that column.
  - Made the column `bread` on table `Burguer` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Burguer" DROP CONSTRAINT "Burguer_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "meat" SET NOT NULL,
ALTER COLUMN "bread" SET NOT NULL,
ADD CONSTRAINT "Burguer_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Burguer_id_seq";
