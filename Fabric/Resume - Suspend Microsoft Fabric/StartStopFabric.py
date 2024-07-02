import msal
import requests
import configparser
import sys

config = configparser.ConfigParser()
config.read(r'./FabricConfig.ini')

client_id = config['AUTH']['client_id']
client_secret = config['AUTH']['client_secret']
tenant_id = config['AUTH']['tenant_id']

subscription_id = config['API']['subscription_id']
resource_group = config['API']['resource_group_name']
capacity_name = config['API']['capacity_name']
api_version = config['API']['api_version']

authority_url = 'https://login.microsoftonline.com/' + tenant_id
scope = ["https://management.core.windows.net//.default"]

argAction = sys.argv[1]


url = "https://management.azure.com/subscriptions/" + subscription_id 
url += "/resourceGroups/" + resource_group 
url += "/providers/Microsoft.Fabric/"
url += "capacities/" + capacity_name
url += "/" + argAction #resume or suspend
url += "?api-version=" + api_version

#Use MSAL to grab token
app = msal.ConfidentialClientApplication(client_id, authority=authority_url, client_credential=client_secret)
result = app.acquire_token_for_client(scopes=scope)

print(result)

if 'access_token' in result:
    access_token = result['access_token']
    header = {'Content-Type':'application/json',
            'Authorization':f'Bearer {access_token}'}
    api_call = requests.post(url=url, headers=header)

