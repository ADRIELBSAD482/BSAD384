# 🏡 Real Estate Database – BSAD 384 Term Project

This repository contains my term project for BSAD 384. The database is designed to simulate a real estate listing system similar to Zillow or Realtor.ca. It manages properties, listings, agents, sales transactions, amenities, utilities, and related media.

---

## 1. Problem Statement & ER Diagram

The goal of this database is to support a real estate platform that allows users to browse property listings, view amenities and photos, and track sales transactions. Agents can manage listings, and each property can be described by a range of features.

### ER Diagram:
> *This diagram is split into two images for readability.*

- ![ER Diagram A](./diagrams/ER_A.png)
- ![ER Diagram B](./diagrams/ER_B.png)

---

## 2. Relational Model & Create Script

The relational schema below reflects a fully normalized set of related entities with proper primary and foreign keys.

### Relational Schema:
- ![Relational Schema](./diagrams/RS.png)

### Create Script:
- [`create.sql`](./create/create.sql)

---

## 3. Populate Script

This script inserts sample data into all tables including `Property`, `Agent`, `Listing`, `Utilities`, `Amenities`, and the relevant junction tables.

- [`populate.sql`](./populate/populate.sql)

---

## 4. Sample Queries

This file contains 5 queries demonstrating:
- Multi-table JOINs
- Aggregation
- A calculated (derived) field
- Querying many-to-many relationships

- [`queries.sql`](./query/queries.sql)

---

## Notes

All SQL scripts were written and tested using SQL Server Management Studio 20 (SSMS) on the `x2022ehm` database. Queries were run successfully and screenshots of the schema were taken from tested versions.

