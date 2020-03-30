for PROC in `seq 0 31`; do
    python -m timeit -v -n 1 -r 1 -s "from network_model_demo import demo" "demo(100000)" > demo_$PROC.log &
done
