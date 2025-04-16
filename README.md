# Hengym

**Hengym** is a proof-of-concept (PoC) coaching app for broke people who want a coach in the form of an application. The goal of this project is to build a real-world system to gain hands-on experience in modern DevOps/SRE practices by developing and containerizing both backend and frontend components.

---

## Table of Contents

- [Overview](#overview)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Running Locally with Docker Compose](#running-locally-with-docker-compose)
- [Backend Details](#backend-details)
- [Frontend Details](#frontend-details)
- [Feedback & Future Plans](#feedback--future-plans)
- [Additional Documentation](#additional-documentation)

---

## Overview

Hengym is designed for broke people who want a coach at their fingertips. This PoC serves as a platform to become truly proficient in DevOps/SRE and containerization by:

- Developing a **backend API** using Dart with the Shelf framework.
- Creating a **frontend web app** using Flutter and serving it with Nginx.
- Containerizing both components with **Docker Compose** for easy local deployment and testing.

---

## Technology Stack

| Component           | Technology/Tool                   | Description                                                                      |
| ------------------- | --------------------------------- | -------------------------------------------------------------------------------- |
| **Backend**         | Dart, Shelf, Shelf Router         | Lightweight REST API exposing endpoints (e.g., `/hello` returns JSON data).      |
| **Frontend**        | Flutter (Web), Nginx              | A Flutter web app that fetches data from the backend and displays it to the user.  |
| **Containerization**| Docker, Docker Compose            | Used to build, run, and manage both the backend and frontend services.            |

**Useful Links:**

- [Dart Documentation](https://dart.dev/guides)
- [Shelf Documentation](https://pub.dev/packages/shelf)
- [Shelf Router Documentation](https://pub.dev/packages/shelf_router)
- [Flutter Documentation](https://flutter.dev/docs)
- [Docker Documentation](https://docs.docker.com)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Kubernetes Documentation (for future deployments)](https://kubernetes.io/docs/)

---