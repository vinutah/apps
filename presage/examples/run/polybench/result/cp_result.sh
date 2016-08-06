mkdir -p dtr_gep/
mkdir -p ori_gep/
mkdir -p ori_idx/
mkdir -p dtr_idx/

rm -f dtr_gep/*
rm -f ori_gep/*
rm -f ori_idx/*
rm -f dtr_idx/*

scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/stencils/*/dtr_gep/result_*.csv dtr_gep/
scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/linear-algebra/*/*/dtr_gep/result_*.csv dtr_gep/

scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/stencils/*/ori_gep/result_*.csv ori_gep/
scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/linear-algebra/*/*/ori_gep/result_*.csv ori_gep/

scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/stencils/*/ori_idx/result_*.csv ori_idx/
scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/linear-algebra/*/*/ori_idx/result_*.csv ori_idx/

scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/stencils/*/dtr_idx/result_*.csv dtr_idx/
scp vishal@quadnix.cs.utah.edu:/home/vishal/apps/presage/examples/run/polybench/linear-algebra/*/*/dtr_idx/result_*.csv dtr_idx/
