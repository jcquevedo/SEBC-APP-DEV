# Day 3: SparkML

SparkML is a library of Machine Learning (ML) algorithms designed to run on top of Spark. A few notes:

<li>Classification: logistic regression, naive Bayes, ...</li>
<li>Regression: generalized linear regression, survival regression, ...</li>
<li>Decision trees, random forests, and gradient-boosted trees</li>
<li>Recommendation: alternating least squares (ALS)</li>
<li>Clustering: K-means, Gaussian mixtures (GMMs), ...</li>
<li>Topic modeling: latent Dirichlet allocation (LDA)</li>
<li>Frequent item sets, association rules, and sequential pattern mining</li>

<br>For more information please see <a href="https://spark.apache.org/mllib/">here</a>. Also for documentation on SparkML Simple Linear Regression see <a href="https://spark.apache.org/docs/2.1.1/ml-classification-regression.html#linear-regression">here</a>.

<b>Exercise:</b>

Implement a house pricing prediction model using a Simple Linear Regression where the input takes the form:

```
	sale_price_house1  1:num_of_rooms 2:num_of_baths 3:size_of_house 4:one_if_pool_zero_otherwise
	sale_price_house2  1:num_of_rooms 2:num_of_baths 3:size_of_house 4:one_if_pool_zero_otherwise
	...
	sale_price_houseN  1:num_of_rooms 2:num_of_baths 3:size_of_house 4:one_if_pool_zero_otherwise
```

Your output should be the linear model in the form::

```
	predicted_house_price = intercept + coeff1 x num_of_rooms + coeff2 x num_of_baths + coeff3 x size_of_house + coeff4 x one_if_pool_zero_otherwise  
```

Template files for <a href="build.sbt">build with SBT</a>, <a href="run.sh">invocation script</a>, and <a href="src/main/scala/com/cloudera/sdk/SparkMLExample.scala">Scala code</a> are provided. Edit and/or add new files as deemed appropriate. Submit your work through these files and also upload the <a href="output.txt">output</a>.