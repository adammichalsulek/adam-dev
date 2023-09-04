#install python library, if needed pip install requests
import requests

# Jira instance and credentials
JIRA_URL = "https://your-jira-instance.atlassian.net"
USERNAME = "your-username"
PASSWORD = "your-password"

# Jira statuses to count
statuses_to_count = ["Done", "Resolved", "Completed"]

# Initialize counters
issue_count = 0

# Session for making authenticated requests
session = requests.Session()
session.auth = (USERNAME, PASSWORD)

# Iterate through each status and query the Jira API
for status in statuses_to_count:
    # Define Jira Query Language query to search for issues in the specific status
    jql_query = f"status = '{status}'"

    # API request to Jira
    response = session.get(
        f"{JIRA_URL}/rest/api/2/search",
        params={"jql": jql_query, "maxResults": 1},
    )

    if response.status_code == 200:
        data = response.json()
        issue_count += data["total"]
    else:
        print(f"Failed to retrieve status '{status}': {response.status_code}")

# Print total issue count
print(f"Total issues in statuses {statuses_to_count}: {issue_count}")