import os

REMOVE_PATHS = [
    '{% if cookiecutter.dependency_management_tool != "pip" %} requirements.txt {% endif %}',
    '{% if cookiecutter.dependency_management_tool != "poetry" %} poetry.lock {% endif %}',
]

for path in REMOVE_PATHS:
    path = path.strip()
    if path and os.path.exists(path):
        if os.path.isdir(path):
            os.rmdir(path)
        else:
            os.unlink(path)
