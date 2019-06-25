let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let StorageSpec = ../../types/v1/StorageSpec.dhall

in    { emptyDir =
          None Kubernetes.core.v1.EmptyDirVolumeSource
      , volumeClaimTemplate =
          None { spec : Kubernetes.core.v1.PersistentVolumeClaimSpec }
      }
    : StorageSpec
