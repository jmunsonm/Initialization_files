QSUBAPP=/opt/pbs/bin/qsub
memory=${1:-32}gb
queue=${2:-devel}
vnode=${3:-c4-3}

#QSUB_STUFF="${QSUBAPP} -N Jacob-i -I -l walltime=08:00:00,ncpus=4,memory=${memory},vnode=${vnode} -q ${queue}"
QSUB_STUFF="${QSUBAPP} -N Jacob-i -I -l walltime=08:00:00,ncpus=4,mem=${memory},vnode=${vnode}"

${QSUB_STUFF}