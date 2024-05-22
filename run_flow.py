import requests
import logging


logging.basicConfig(filename='run_flow.log', level=logging.INFO, format='%(asctime)s %(message)s')

def run_flow():
    url = "https://langflow-bpxr.onrender.com"
    try:
        response = requests.get(url)
        if response.status_code == 200:
            logging.info("Flow ran successfully")
        else:
            logging.error(f"Flow failed with status code: {response.status_code}")
    except Exception as e:
        logging.error(f"An error occurred: {e}")

if __name__ == "__main__":
    logging.info("Starting run_flow.py")
    run_flow()
    logging.info("Finished run_flow.py")

