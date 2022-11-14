import heapq
import time
import types
import typing
from collections import Counter, defaultdict, deque
from pprint import pprint

HIDDEN = {types.__name__, typing.__name__}

def timeit(method):
    """Decorator use to measure function run time.

    Example usage:

    @timeit
    def foo():
        print("bar")
    """
    def timed(*args, **kw):
        ts = time.time()
        result = method(*args, **kw)
        te = time.time()
        if 'log_time' in kw:
            name = kw.get('log_name', method.__name__.upper())
            kw['log_time'][name] = int((te - ts) * 1000)
        else:
            print('%r  %2.2f ms' %(method.__name__, (te - ts) * 1000))
        return result
    return timed

def get_imports() -> typing.Iterator[str]:
    """Get imported modules name dynamically from import statements."""
    for module_name, module_type in globals().items():
        if module_name.startswith("_"):
            continue

        if isinstance(module_type, types.ModuleType) or isinstance(module_type, type):
            yield module_type.__name__


imports = [f"{imp!r}" for imp in get_imports() if imp not in HIDDEN]
filtered_imports = ", ".join(imports)

print(
    f"Imported these {len(imports)} modules: {filtered_imports}.\n"
)
