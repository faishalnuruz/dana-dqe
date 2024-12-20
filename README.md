# Yelp JSON to CSV Converter

This project converts a Yelp dataset from JSON to CSV and is fully dockerized for portability.

## Features
- Converts JSON to CSV format.
- Dockerized for easy deployment.
- Organized file structure for maintainability.

## Requirements
- Docker
- Docker Compose

## How It Works
- The script reads all .json files from data/input/.
- Each file is processed individually, converting its content to a corresponding .csv file in data/output/.
- File names are preserved for easy identification.




## Usage

### Step 1: Build Docker Image
```
docker-compose build
```

### Step 2: Run the Converter
Place all JSON files in the `data/input/` directory and then run:
```
docker-compose up
```

### Step 3: Find the Output
All converted CSV files will be in the `data/output/` directory.