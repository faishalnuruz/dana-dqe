import os

def ensure_directory_exists(directory):
    """Ensure the directory exists, create if not."""
    if not os.path.exists(directory):
        os.makedirs(directory)
