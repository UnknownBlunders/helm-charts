# helm-charts

These are small helm charts that I use in my home Kubernetes cluster.

A lot of these are going to contain defaults that are specific to my cluster setup. These charts aren't intended to be reused by others.

## Charts:

### Kopiur Backup Components

This chart just provides a persistent volume that is backed up and can be restored by Kopiur. It has some good defaults, but can be adjusted.
