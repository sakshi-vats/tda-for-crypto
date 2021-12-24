### This is a work in progress


# Prediction of bubble burst in bitcoin market using TDA based methodology and  Clustering: Assessment of historical bubbles.

## Cryptocurrency
A cryptocurrency is a form of digital currency based upon blockchain technology that keeps an online ledger of transactions and is highly secured. The decentralized cryptocurrency was first introduced in 2009 by Satoshi Nakamoto. He introduced Bitcoin in his paper [^1] as a peer to peer electronic cash system. Now, more than a decade later, a large number of cryptocurrencies have emerged in the market. The major cryptocurrencies are Bitcoin, Ethereum, Binance Coin, Tether and Solana. Bitcoin is focused upon in this paper.

Cryptocurrencies are not recognized in the mature asset class, are not subject to institutional restrictions and are largely non-regulated. This kind of regulatory void leaves the cryptocurrency market prone to volatility. Cryptocurrency value rise and crash (critical transition) have been seen ever since its explosion in 2017 and early 2018. 

## Critical Transition
Critical transitions occur when a system suddenly changes its state from one to another in response to small disturbances. These transitions have been observed in different systems such as complex systems, noisy systems and deterministic systems.  Analyzing critical transitions is difficult because changes occur in a very small time period before crossing a critical transition threshold. In the case of financial time series, such an analysis is made more laborious due to the noisy and non-stationarity nature of data. As cryptocurrency increases in popularity and its market share increases (for example market capitalization of all the cryptocurrencies summed to approximately USD 19 billion) it becomes more and more important to extract information and identify incoming critical transitions.
 
## Analyzing critical transitions
Although various methods have been adopted to analyze cryptocurrency trends such as different machine learning techniques [^2], Hidden Markov models [^3], [^4], Topological Data Analysis (TDA) is an emerging field being utilized in financial analysis that combines the fields of algebra and statistics [^5], [^6].
It is suitable for the field as it extracts information from multidimensional data instead of trying to fit a model. It attempts to describe the shape of data cloud points. The topological information thus obtained gives qualitative differences which allows recognition of patterns among the data.

## Approach
In this novel approach, TDA is applied on Bitcoin time series data from 2016 to 2019 to get the L1 norm of the persistent landscape. On the output obtained, different clustering algorithms are applied, k-means, Gaussian Mixture Models, Fuzzy C-Means; to show the dependence between two time series. A comparative analysis on the different models is carried out to find which TDA based methodology is the most suitable for identifying critical transitions.



[^1]: Nakamoto, Satoshi, and A. Bitcoin. "A peer-to-peer electronic cash system." Bitcoin.–URL: https://bitcoin. org/bitcoin. pdf 4 (2008).
[^2]: B.M. Henrique, V.A. Sobreiro, H. Kimura, Literature review: Machine learning techniques applied to financial market prediction, Expert Syst. Appl.124 (2019) 226–251
[^3]:  R. C. Phillips and D. Gorse, "Predicting cryptocurrency price bubbles using social media data and epidemic modelling," 2017 IEEE Symposium Series on Computational Intelligence (SSCI), 2017, pp. 1-7, doi: 10.1109/SSCI.2017.8280809
[^4]: J.-C. Gerlach, G. Demos, D. Sornette, Dissection of bitcoin’s multiscale bubble history january 2012 to february 2018, 2018, eprint arXiv: 1804.06261
[^5]: M. Gidea, D. Goldsmith, Y. Katz et al.,Topological recognition of critical transitions in time series of cryptocurrencies, Physica A(2020) 123843, https://doi.org/10.1016/j.physa.2019.123843.
[^6]: M. Gidea, Y. Katz, Topological data analysis of financial time series: landscapes of crashes, Physica A 491 (2018) 820–834

