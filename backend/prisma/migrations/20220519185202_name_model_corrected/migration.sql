/*
  Warnings:

  - You are about to drop the `Burguer` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Burguer";

-- CreateTable
CREATE TABLE "Burger" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "bread" VARCHAR(100) NOT NULL,
    "meat" VARCHAR(100) NOT NULL,
    "toppings" VARCHAR(100),

    CONSTRAINT "Burger_pkey" PRIMARY KEY ("id")
);
