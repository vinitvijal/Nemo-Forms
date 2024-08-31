-- CreateTable
CREATE TABLE "Form" (
    "fid" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "userId" TEXT NOT NULL,
    "stillActive" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "Form_pkey" PRIMARY KEY ("fid")
);

-- CreateTable
CREATE TABLE "Questions" (
    "sn" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "required" BOOLEAN NOT NULL DEFAULT false,
    "fid" TEXT NOT NULL,
    "qid" TEXT NOT NULL,
    "type" TEXT NOT NULL,

    CONSTRAINT "Questions_pkey" PRIMARY KEY ("sn")
);

-- CreateTable
CREATE TABLE "TextQuestion" (
    "qid" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" TEXT,
    "description" TEXT,

    CONSTRAINT "TextQuestion_pkey" PRIMARY KEY ("qid")
);

-- CreateTable
CREATE TABLE "MCQQuestion" (
    "qid" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "Options" TEXT[],

    CONSTRAINT "MCQQuestion_pkey" PRIMARY KEY ("qid")
);

-- AddForeignKey
ALTER TABLE "Questions" ADD CONSTRAINT "Questions_fid_fkey" FOREIGN KEY ("fid") REFERENCES "Form"("fid") ON DELETE RESTRICT ON UPDATE CASCADE;
