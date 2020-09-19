### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ df76dc30-fa83-11ea-07d0-ff66552dc981
md"# Chapter 2: 基本的数学运算

[TOC]

## 数值微分

### Taylor 展式

$$f(x) = \sum_{i = 0}^{n}\frac{f^{(i)}(x_0)}{i!}(x - x_0)^i + o((x - x_0)^n)$$

### 导数的数值计算

定义 $f_n = f(x_0+nh)$.

- 一阶导数：
  - 两点向前：$$f'(x_0) = \frac{f_1 - f_0}{h} + O(h)$$
  - 两点向后：$$f'(x_0) = \frac{f_0 - f_{-1}}{h} + O(h)$$
  - 三点中心对称：$$f'(x_0) = \frac{f_1 - f_{-1}}{2h} + O(h^2)$$
  - 三点向前：$$f'(x_0) = \frac{-f_2 + 4f_1 - 3f_0}{2h} + O(h^2)$$
  - 三点向后：$$f'(x_0) = \frac{f_{-2} - 4f_{-1} + 3f_0}{2h} + O(h^2)$$
  - 五点中心对称：$$f'(x_0) = \frac{f_{-2} - 8f_{-1} + 8f_1 - f_2}{12h} + O(h^4)$$
- 二阶导数：
  - 三点中心对称：$$f''(x_0) = \frac{f_1 - 2f_0 + f_{-1}}{h^2} + O(h^2)$$
  - 三点向前：$$f''(x_0) = \frac{f_2 - 2f_1 + f_0}{h^2} + O(h^2)$$
  - 三点向后：$$f''(x_0) = \frac{f_0 - 2f_{-1} + f_{-2}}{h^2} + O(h^2)$$"

# ╔═╡ c7446a22-fa87-11ea-253b-eb0dd512bdad
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

# ╔═╡ 800a133e-fa90-11ea-0b21-5d98b0ab333b
h1 = 1e-2

# ╔═╡ c349caa0-fa8c-11ea-0d99-b3efb59480e0
f_2order(h1)

# ╔═╡ ffb0c170-fa90-11ea-0b05-271e359f197e
h2 = 1e-3

# ╔═╡ a83fce90-fa90-11ea-33ba-4b361ea379a6
f_2order(h2)

# ╔═╡ 0a3615a0-fa91-11ea-3743-17e06b3abdf1
h3 = 1e-4

# ╔═╡ 1bbf1150-fa91-11ea-178a-b3ee6520f7c0
f_2order(h3)

# ╔═╡ 310e8ae0-fa91-11ea-18b8-ff4885ac3207
h4 = 1e-5

# ╔═╡ 393cf6c0-fa91-11ea-23b8-63d5d3d7e42e
f_2order(h4)

# ╔═╡ 4ad052b0-fa91-11ea-36e9-3945d9a9286b
h5 = 1e-6

# ╔═╡ 5241d730-fa91-11ea-0a42-895bcbf2c065
f_2order(h5)

# ╔═╡ Cell order:
# ╟─df76dc30-fa83-11ea-07d0-ff66552dc981
# ╠═c7446a22-fa87-11ea-253b-eb0dd512bdad
# ╟─800a133e-fa90-11ea-0b21-5d98b0ab333b
# ╟─c349caa0-fa8c-11ea-0d99-b3efb59480e0
# ╟─ffb0c170-fa90-11ea-0b05-271e359f197e
# ╟─a83fce90-fa90-11ea-33ba-4b361ea379a6
# ╟─0a3615a0-fa91-11ea-3743-17e06b3abdf1
# ╟─1bbf1150-fa91-11ea-178a-b3ee6520f7c0
# ╟─310e8ae0-fa91-11ea-18b8-ff4885ac3207
# ╟─393cf6c0-fa91-11ea-23b8-63d5d3d7e42e
# ╟─4ad052b0-fa91-11ea-36e9-3945d9a9286b
# ╟─5241d730-fa91-11ea-0a42-895bcbf2c065
