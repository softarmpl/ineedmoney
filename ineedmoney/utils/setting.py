"""
This functions are dedicated
to be used in Django settings file
"""

import os
from django.core.exceptions import ImproperlyConfigured


def get_setting(setting, default=None):
    """ Get the setting value from env variable,
        return default value if provided.
        Otherweise return the exception.
    """
    try:
        env = os.environ[setting]
        env = False if env == 'False' else env
        return env
    except KeyError:
        if default is not None:
            return default
        error_msg = f"Set {setting} value as environment"
        raise ImproperlyConfigured(error_msg)
