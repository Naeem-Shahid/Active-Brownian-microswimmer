# Active-Brownian-microswimmer

***

Based on the article,
[American Journal of Physics 82, 659 (2014)](https://aapt.scitation.org/doi/10.1119/1.4870398),
with drag force added.

The equations of motion are,

$$
\begin{eqnarray}
\dot{\vec{r}}(t) &=& v_0 \hat{n} + \sqrt{2 D_t} \vec{\epsilon_t}(t) + (m \zeta)^{-1} \vec{F} \\
\dot{\theta}(t) &=& \sqrt{2 D_r} \epsilon_r(t) + \Omega,
\end{eqnarray}
$$

with:

- m as mass of the particle.
- $\zeta$ as friction.
- $D_t$ and $D_r$ as traslation and rotational diffusion coefficients.
- $\epsilon_t$ and $\epsilon_r$ are traslation and rotational Gaussian noise.
- $\Omega$ is the rotational velocity.
- $\hat{n}$ is the unite radial vector.

![activr](https://user-images.githubusercontent.com/100057270/182431478-9d7cd7fb-2c1c-432b-919b-f95494c2618b.png)

***
