% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{optimization}
\alias{optimization}
\title{Optimize the 3D coordinates(cpp)
This function is inspired from tsne algorithm. We use similar gradient descent 
method to optimize our target function specified in our paper. 
condition can be loose or tight, we suggest using "loose" condition 
for dataset with over 10000 cells}
\usage{
optimization(
  affinityMat,
  initial_config = NULL,
  k = 3,
  max_iter = 1000,
  min_cost = 0,
  condition = "tight",
  momentum = 0.5,
  final_momentum = 0.8,
  mom_switch_iter = 250,
  epsilon = 1000,
  min_gain = 0.01,
  eps = 2.2251e-308,
  epoch = 100,
  verbose = F
)
}
\arguments{
\item{affinityMat}{affinity matrix}

\item{initial_config}{initial configuration}

\item{k}{k cells}

\item{max_iter}{Maximum iteration time}

\item{min_cost}{Minimum cost}

\item{condition}{A string, either 'loss' or 'tight'}

\item{momentum}{initial momentum, default = 0.5}

\item{final_momentum}{final momentum, default = 0.8}

\item{mom_switch_iter}{value to which momentum is changed, default = 250}

\item{epsilon}{initial learning rate, default = 1000}

\item{min_gain}{minimum gain for delta-bar-delta, default = 0.01}

\item{eps}{Minimum distances between cells}

\item{epoch}{numeric, print out lost funciton cost after every *epoch* iterations}

\item{verbose}{logical. If TRUE, print out the progress information}
}
\value{
a matrix of optimized 3D coordinates
}
\description{
Optimize the 3D coordinates(cpp)
This function is inspired from tsne algorithm. We use similar gradient descent 
method to optimize our target function specified in our paper. 
condition can be loose or tight, we suggest using "loose" condition 
for dataset with over 10000 cells
}
