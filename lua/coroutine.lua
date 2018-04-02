--[[
co = coroutine.create(function () print("HI") end);

print(coroutine.status(co));

coroutine.resume(co)

print(coroutine.status(co));
]]

co = coroutine.create(function( ... )
	for i = 1,10 do
		print("co", i);
		coroutine.yield();
	end
end)

print(coroutine.status(co));

coroutine.resume(co);

print(coroutine.status(co));

coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
coroutine.resume(co);
print(coroutine.resume(co));
