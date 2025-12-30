BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "emergency_case" (
    "id" bigserial PRIMARY KEY,
    "patientId" bigint,
    "patientName" text,
    "age" bigint,
    "gender" text,
    "phoneNumber" text,
    "bloodGroup" text,
    "emergencyType" text NOT NULL,
    "severity" text NOT NULL,
    "assignedDoctorId" bigint,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "resolvedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "medical_history" (
    "id" bigserial PRIMARY KEY,
    "patientId" bigint NOT NULL,
    "condition" text NOT NULL,
    "diagnosis" text NOT NULL,
    "prescribedMedications" text NOT NULL,
    "visitDate" timestamp without time zone NOT NULL,
    "treatedBy" bigint,
    "notes" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "patient" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "patientId" text NOT NULL,
    "department" text NOT NULL,
    "session" text NOT NULL,
    "emergencyContact" text,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "prescription" (
    "id" bigserial PRIMARY KEY,
    "prescriptionNumber" text NOT NULL,
    "patientId" bigint NOT NULL,
    "doctorId" bigint NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "chiefComplaints" text,
    "observations" text,
    "diagnosis" text,
    "advice" text,
    "followUpDate" timestamp without time zone,
    "nextVisit" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "prescription_item" (
    "id" bigserial PRIMARY KEY,
    "prescriptionId" bigint NOT NULL,
    "medicineName" text NOT NULL,
    "dosage" text NOT NULL,
    "duration" text,
    "frequency" text,
    "instructions" text
);


--
-- MIGRATION VERSION FOR backend
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('backend', '20251224085809332', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251224085809332', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();


COMMIT;
