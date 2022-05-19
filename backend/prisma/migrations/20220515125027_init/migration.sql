-- CreateTable
CREATE TABLE "Burguer" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "bread" VARCHAR(100)[],
    "meat" VARCHAR(100) NOT NULL,
    "toppings" VARCHAR(100)[],

    CONSTRAINT "Burguer_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Burguer_meat_key" ON "Burguer"("meat");
