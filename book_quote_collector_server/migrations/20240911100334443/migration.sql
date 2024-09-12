BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "authors" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "biography" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "books" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "author" text NOT NULL,
    "publicationDate" timestamp without time zone NOT NULL,
    "genre" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "quotes" (
    "id" bigserial PRIMARY KEY,
    "quoteText" text NOT NULL,
    "personalNote" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "tags" json NOT NULL,
    "userId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" bigserial PRIMARY KEY,
    "username" text NOT NULL,
    "email" text NOT NULL,
    "passwordHash" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR book_quote_collector
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('book_quote_collector', '20240911100334443', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240911100334443', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
