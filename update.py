#!/usr/bin/env python3

import sys
import os

project = 'all'

if len(sys.argv) == 2:
    project = sys.argv[1]

projects_folders = [
    'grinch_data_platform_interface',
    'grinch_data_web',
    'grinch_data',
    'grinch_core',
    'grinch_app',
]

if project == 'all':
    print('update all projects')

    for folder in projects_folders:
        os.system(f"cd {folder} && flutter pub get")

else:
    if project in projects_folders:
        print(f'update {project} project')

        os.system(f"cd {project} && flutter pub get")
    else:
        raise Exception('project not found')


