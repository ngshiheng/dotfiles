import datetime
import heapq
import time
import types
import typing
from collections import Counter, defaultdict, deque

DISPLAY_NAME = "Jerry"
HIDDEN = {types.__name__, typing.__name__}


def get_imports() -> typing.Iterator[str]:
    for module_name, module_type in globals().items():
        if module_name.startswith("_"):
            continue

        if isinstance(module_type, types.ModuleType) or isinstance(module_type, type):
            yield module_type.__name__


imports = [f"{imp!r}" for imp in get_imports() if imp not in HIDDEN]
filtered_imports = ", ".join(imports)

print(
    f"👋 Hello, {DISPLAY_NAME}!\n"
    f"🐍 Successfully imported these {len(imports)} modules: {filtered_imports}.\n"
    "👨‍💻 Happy coding."
)
