import hashlib
import time

now = time.time()
m5 = hashlib.md5()
m5.update(str(now).encode("utf-8"))

print(m5.hexdigest())