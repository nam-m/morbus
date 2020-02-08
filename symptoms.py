# List of symptoms 

# Options that user selects based on answering questions 
# 1. Do you have fever?

import pandas as pd
symptoms_check = {'Symptoms Check': {'Fever': ['yes','no'],
                            'Dry Cough': ['yes','no'],
                            'Breath Shortness': ['yes','no'],},}

symptoms_list = {'Symptoms List': {'Fever': {'Frequency': ['1-2','3-5','7+']},
                            'Dry Cough': {'Frequency': ['1-2','3-5','7+']},
                            'Breath Shortness': {'Frequency': ['1-2','3-5','7+']}}}
                            
symptoms_check_df = pd.DataFrame(symptoms_check['Symptoms Check'])
symptoms_list_df = pd.DataFrame(symptoms_list['Symptoms List'])

# print(symptoms_list_df)