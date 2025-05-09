# Database Schema for ALX Airbnb Clone

## Overview

This SQL script (`schema.sql`) defines the full relational database schema for an Airbnb-like platform. It includes entity definitions, constraints, relationships, and indexes for performance.

## Entities

- **User**: Represents users (hosts or guests).
- **Property**: Listings hosted by users.
- **Booking**: Records of property reservations.
- **Payment**: Payments linked to bookings.
- **Review**: Reviews submitted by users after booking.
- **Message**: Messaging between users regarding properties.

## Features

- Proper use of primary and foreign keys
- Cascading relationships for integrity
- Enforced uniqueness on user emails
- CHECK constraint for review ratings
- Indexed key columns for optimized queries

## Getting Started

Run the script using your SQL client (e.g., PostgreSQL):
