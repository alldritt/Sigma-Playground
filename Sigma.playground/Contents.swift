/*:
 
**[Sigma Playground](https://github.com/evgenyneu/SigmaSwiftStatistics)**: Collection of functions for statistical calculation.
  
This playground allows you to experiment with [Sigma](https://github.com/evgenyneu/SigmaSwiftStatistics)'s statistical calculations within Swift Playgrounds on your iPad.

*/

Sigma.max([3, 10, 6]) // 10
Sigma.min([3, 10, 6]) // 3
σ.sum([1, 3, 10]) // 14
σ.average([1, 12, 19.5, -5, 3, 8]) // 6.416666666666667
σ.median([1, 12, 19.5, 3, -5]) // 3
σ.medianLow([1, 12, 19.5, 10, 3, -5]) // 3
σ.medianHigh([1, 12, 19.5, 10, 3, -5]) // 10



/*:
**Sigma.varianceSample(vales)**: Computes variance based on a sample.

[http://en.wikipedia.org/wiki/Variance](http://en.wikipedia.org/wiki/Variance)

- parameter values: Array of decimal numbers.
- returns: Variance based on a sample. Returns nil when the array is empty or contains a single value.

Formula:

`s^2 = Σ( (x - m)^2 ) / (n - 1)`

Where:

- `m` is the sample mean.
- `n` is the sample size.
*/

σ.varianceSample([1, 12, 19.5, -5, 3, 8]) // 75.24166667



/*:
**Sigma.variancePopulation(values)**: Computes variance of entire population.

[http://en.wikipedia.org/wiki/Variance](http://en.wikipedia.org/wiki/Variance)

- parameter values: Array of decimal numbers.
- returns: Population variance. Returns nil when the array is empty.

Formula:

`σ^2 = Σ( (x - m)^2 ) / n`

Where:

- `m` is the population mean.

- `n` is the population size.
*/

σ.variancePopulation([1, 12, 19.5, -5, 3, 8]) // 62.70138889



/*:
**Sigma.standardDeviationSample(values)**: Computes standard deviation based on a sample.

[http://en.wikipedia.org/wiki/Standard_deviation](http://en.wikipedia.org/wiki/Standard_deviation)

- parameter values: Array of decimal numbers.
- returns: Standard deviation of a sample. Returns nil when the array is empty or contains a single value.

Formula:

`s = sqrt( Σ( (x - m)^2 ) / (n - 1) )`

Where:

- `m` is the sample mean.
- `n` is the sample size.

*/

σ.standardDeviationSample([1, 12, 19.5, -5, 3, 8]) // 8.674195447801869



/*:
**Sigma.standardDeviationPopulation(values)**: Computes standard deviation of entire population.

[http://en.wikipedia.org/wiki/Standard_deviation](http://en.wikipedia.org/wiki/Standard_deviation)

- parameter values: Array of decimal numbers.
- returns: Standard deviation of entire population. Returns nil for an empty array.

Formula:

`σ = sqrt( Σ( (x - m)^2 ) / n )`

Where:

- `m` is the population mean.
- `n` is the population size.
*/

σ.standardDeviationPopulation([1, 12, 19.5, -5, 3, 8]) // 8.67419544780187



/*:
**Sigma.covarianceSample(x, y)**: Computes covariance of a sample between two variables: x and y.

[http://en.wikipedia.org/wiki/Sample_mean_and_sample_covariance](http://en.wikipedia.org/wiki/Sample_mean_and_sample_covariance)

- parameter x: Array of decimal numbers for the first variable.
- parameter y: Array of decimal numbers for the second variable.
- returns: Covariance of a sample between two variables: x and y. Returns nil if arrays x and y have different number of values. Returns nil for empty arrays or arrays containing a single element.

Formula:

`cov(x,y) = Σ(x - mx)(y - my) / (n - 1)`

Where:

- `mx` is the sample mean of the first variable.
- `my` is the sample mean of the second variable.
- `n` is the total number of values.
*/

σ.covarianceSample(x: [1, 2, 3.5, 3.7, 8, 12],
                   y: [0.5, 1, 2.1, 3.4, 3.4, 4]) // 5.03



/*:
**Sigma.covariancePopulation(x, y)**: Computes covariance for entire population between two variables: x and y.

[http://en.wikipedia.org/wiki/Covariance](http://en.wikipedia.org/wiki/Covariance)

- parameter x: Array of decimal numbers for the first variable.
- parameter y: Array of decimal numbers for the second variable.
- returns: Covariance for entire population between two variables: x and y. Returns nil if arrays x and y have different number of values. Returns nil for empty arrays.

Formula:

`cov(x,y) = Σ(x - mx)(y - my) / n`

Where:

- `mx` is the population mean of the first variable.
- `my` is the population mean of the second variable.
- `n` is the total number of values.
*/

σ.covariancePopulation(x: [1, 2, 3.5, 3.7, 8, 12],
                       y: [0.5, 1, 2.1, 3.4, 3.4, 4]) // 4.19166666666667



/*:
**Sigma.pearson(x, y)**: Calculates the Pearson product-moment correlation coefficient between two variables: x and y.
  
[http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient](http://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient)
  
- parameter x: Array of decimal numbers for the first variable.
- parameter y: Array of decimal numbers for the second variable.
- returns: The Pearson product-moment correlation coefficient between two variables: x and y. Returns nil if arrays x and y have different number of values. Returns nil for empty arrays.

Formula:

`p(x,y) = cov(x,y) / (σx * σy)`

Where:

- `cov` is the population covariance.

- `σx` is the population standard deviation of x.
*/

σ.pearson(x: [1, 2, 3.5, 3.7, 8, 12],
          y: [0.5, 1, 2.1, 3.4, 3.4, 4]) // 0.843760859352745



/*:
**Sigma.percentile1(values, percentile)**: Calculates Percentile value for the given dataset.

[https://en.wikipedia.org/wiki/Percentile](https://en.wikipedia.org/wiki/Percentile)

- parameter values: Array of decimal numbers in the dataset.
- parameter percentile: percentile between 0 and 1 inclusive. For example, value 0.4 corresponds to 40th percentile.
- returns: the percentile value.

Algorithm:

[https://github.com/evgenyneu/SigmaSwiftStatistics/wiki/Percentile-1-method](https://github.com/evgenyneu/SigmaSwiftStatistics/wiki/Percentile-1-method)
*/

σ.percentile1(values: [35, 20, 50, 40, 15], percentile: 0.4) // 29










