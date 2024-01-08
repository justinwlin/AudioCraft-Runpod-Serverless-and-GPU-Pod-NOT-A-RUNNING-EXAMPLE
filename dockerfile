# Use the updated base CUDA image
FROM username/audiocraft_custom_gpu_pod:1.0

WORKDIR /app
COPY handler.py /app/handler.py
# Set Stop signal and CMD
STOPSIGNAL SIGINT
CMD ["python", "-u", "handler.py"]