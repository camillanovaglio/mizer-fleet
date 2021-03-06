% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extension.R
\name{setComponent}
\alias{setComponent}
\alias{removeComponent}
\title{Add a dynamical ecosystem component}
\usage{
setComponent(
  params,
  component,
  initial_value,
  dynamics_fun,
  encounter_fun,
  mort_fun,
  component_params
)

removeComponent(params, component)
}
\arguments{
\item{params}{A MizerParams object}

\item{component}{Name of the component}

\item{initial_value}{Initial value of the component}

\item{dynamics_fun}{Name of function to calculate value at the next time step}

\item{encounter_fun}{Name of function to calculate contribution to encounter
rate. Optional.}

\item{mort_fun}{Name of function to calculate contribution to the
mortality rate. Optional.}

\item{component_params}{Named list of parameters needed by the component
functions. Optional.}
}
\value{
The updated MizerParams object
}
\description{
By default, mizer models any number of size-resolved consumer species
and a single size-resolved resource spectrum. Your model may require
additional components, like for example detritus or carrion or multiple
resources or .... This function allows you to set up such components.
}
\details{
The component can be a number, a vector, an array, a list, or any other
data structure you like.

If you set a component with a new name, the new component will be added
to the existing components. If you set a component with an existing name,
that component will be overwritten. You can remove a component with
\code{removeComponent()}.
}
