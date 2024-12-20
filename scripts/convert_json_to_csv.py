import json
import csv
import os
from scripts.utils import ensure_directory_exists

# Input and output directories
INPUT_DIR = "data/input"
OUTPUT_DIR = "data/output"

def convert_json_to_csv(input_file, output_file):
    """Convert a single JSON file to CSV."""
    try:
        with open(input_file, 'r') as json_file:
            data = json.load(json_file)
        
        if not data:
            print(f"No data in {input_file}.")
            return

        headers = data[0].keys()
        
        with open(output_file, 'w', newline='', encoding='utf-8') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=headers)
            writer.writeheader()
            writer.writerows(data)
        
        print(f"Successfully converted {input_file} to {output_file}.")
    except Exception as e:
        print(f"Error during conversion of {input_file}: {e}")

def process_all_json_files(input_dir, output_dir):
    """Process all JSON files in the input directory."""
    ensure_directory_exists(output_dir)
    
    for filename in os.listdir(input_dir):
        if filename.endswith(".json"):
            input_file = os.path.join(input_dir, filename)
            output_file = os.path.join(output_dir, f"{os.path.splitext(filename)[0]}.csv")
            convert_json_to_csv(input_file, output_file)

if __name__ == "__main__":
    process_all_json_files(INPUT_DIR, OUTPUT_DIR)