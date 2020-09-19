### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 7bfa6fb0-fa96-11ea-1750-9d40a6b0ef76
md"# The Homework of Chapter 2

## eg01

Julia 源代码："

# ╔═╡ de130bd0-fa96-11ea-0ea4-1782aee942bd
begin
	function f_2order(h::Float64)
		x = 1
		fm = sin(x - h)
		f0 = sin(x)
		f1 = sin(x + h)
		
		diff_1_3_c = (f1 - fm) / (2 * h)
		diff_1_2_f = (f1 - f0) / (h)
		diff_1_2_b = (f0 - fm) / (h)
		diff_2_3_c = (f1 - 2 * f0 + fm) / (h^2)
		
		diff_1 = cos(x)
		diff_2 = -sin(x)
		
		err1 = diff_1_3_c - diff_1
		err2 = diff_1_2_f - diff_1
		err3 = diff_1_2_b - diff_1
		err4 = diff_2_3_c - diff_2
		
		return ((diff_1_3_c, err1), (diff_1_2_f, err2), (diff_1_2_b, err3), (diff_2_3_c, err4))
	end
end

# ╔═╡ e6a346be-fa96-11ea-08a1-69e61903ee3e
md"运行结果："

# ╔═╡ f34a6980-fa96-11ea-3a54-b73a1d692422
h1 = 1e-2

# ╔═╡ 27ebc530-fa97-11ea-0fbd-115650482a13
f_2order(h1)

# ╔═╡ 0fd64dd0-fa97-11ea-3d3b-87c1eaa617ed
h2 = 1e-3

# ╔═╡ 3dad1360-fa97-11ea-0cd7-995e11c398da
f_2order(h2)

# ╔═╡ 1723cf90-fa97-11ea-2cb0-c5e1ef8aa045
h3 = 1e-4

# ╔═╡ 410e18b0-fa97-11ea-2bb7-b16fcb3d9dc9
f_2order(h3)

# ╔═╡ 1c4151f0-fa97-11ea-380c-dfbf1aae4b7d
h4 = 1e-5

# ╔═╡ 44b43d50-fa97-11ea-0b02-99195fb6a675
f_2order(h4)

# ╔═╡ 214558e0-fa97-11ea-343a-05cc7c1e580c
h5 = 1e-6

# ╔═╡ 481df532-fa97-11ea-0708-23b909b0fbc4
f_2order(h5)

# ╔═╡ Cell order:
# ╟─7bfa6fb0-fa96-11ea-1750-9d40a6b0ef76
# ╠═de130bd0-fa96-11ea-0ea4-1782aee942bd
# ╟─e6a346be-fa96-11ea-08a1-69e61903ee3e
# ╟─f34a6980-fa96-11ea-3a54-b73a1d692422
# ╟─27ebc530-fa97-11ea-0fbd-115650482a13
# ╟─0fd64dd0-fa97-11ea-3d3b-87c1eaa617ed
# ╟─3dad1360-fa97-11ea-0cd7-995e11c398da
# ╟─1723cf90-fa97-11ea-2cb0-c5e1ef8aa045
# ╟─410e18b0-fa97-11ea-2bb7-b16fcb3d9dc9
# ╟─1c4151f0-fa97-11ea-380c-dfbf1aae4b7d
# ╟─44b43d50-fa97-11ea-0b02-99195fb6a675
# ╟─214558e0-fa97-11ea-343a-05cc7c1e580c
# ╟─481df532-fa97-11ea-0708-23b909b0fbc4
