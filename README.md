# Fitness Platform Database Schema

## Project Overview
This project is a **database schema design** for an online fitness platform that connects trainers with clients. It manages user roles, workout programs, subscriptions, progress tracking, and client feedback.

## Tools Used
- MySQL Workbench
- SQL
- ER Diagram (via Workbench)

## Entities
- Users (common for trainers and clients)
- Trainers (specialized users)
- Clients (with health data)
- Programs (workout programs offered by trainers)
- Subscriptions (link between clients and programs)
- Progress Logs (daily logs for clients)
- Feedback (clients rate trainers)

## Features
- Normalized schema to avoid redundancy
- Proper use of primary and foreign keys
- ER diagram showing relationships
- Surrogate keys with `AUTO_INCREMENT`
- ENUM and CHECK constraints for data integrity

## Improvements over Basic Schema
- Includes user roles using ENUM
- Efficiently handles many-to-many relationships (Clients <-> Programs) using a join table (Subscriptions),  aligned with relational database best practices
- Adds daily progress tracking for clients
- Enforces data validation with CHECK constraints
- Modular and scalable design (e.g., extendable to include diet plans or scheduling features)

