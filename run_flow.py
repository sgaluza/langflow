import requests

def run_flow():
    url = "https://langflow-bpxr.onrender.com"
    response = requests.get(url)
    if response.status_code == 200:
        print("Flow ran successfully")
    else:
        print(f"Flow failed with status code: {response.status_code}")

if __name__ == "__main__":
    run_flow()
