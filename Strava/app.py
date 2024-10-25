import requests

# Replace with your Strava client ID and secret
client_id = '112768'
client_secret = 'b0821289a1bace7e820b4c62344500b8bed1cce8'

# Replace with your redirect URI
redirect_uri = 'https://www.oliviervs.be'

# Step 1: Get authorization code
authorization_url = f'https://www.strava.com/oauth/authorize?client_id={client_id}&redirect_uri={redirect_uri}&response_type=code&scope=read_all'
print(f'Please visit the following URL to authorize: {authorization_url}')
authorization_code = input('Enter the authorization code: ')

# Step 2: Exchange authorization code for access token
token_url = 'https://www.strava.com/oauth/token'
payload = {
    'client_id': client_id,
    'client_secret': client_secret,
    'code': authorization_code,
    'grant_type': 'authorization_code'
}
response = requests.post(token_url, data=payload)
access_token = response.json()['access_token']

# Step 3: Use the access token to make API requests
headers = {'Authorization': f'Bearer {access_token}'}
api_url = 'https://www.strava.com/api/v3/athlete'
response = requests.get(api_url, headers=headers)
athlete_data = response.json()

print(response.status_code)
print(response.text)

# Print the athlete's name
print(f'Athlete name: {athlete_data["firstname"]} {athlete_data["lastname"]}')

# Get a list of the athlete's activities
api_url = 'https://www.strava.com/api/v3/athlete/activities'
response2 = requests.get(api_url, headers=headers)
activities = response2.json()

print(activities)
