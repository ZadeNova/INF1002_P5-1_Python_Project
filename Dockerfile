# slim keeps the image size smalelr
FROM python:3.12.3-slim


#Label the image 
LABEL org.opencontainers.image.authors=""
LABEL org.opencontainers.image.source="https://github.com/ZadeNova/INF1002_P5-1_Python_Project"
LABEL version="1.0"
LABEL project.name="BullBear Analysis Streamlit App"
LABEL project,purpose="Basic Technical analysis and Stock trend visualization"


# Set environment variables for clean Python execution
# 1. PYTHONUNBUFFERED=1: Forces python to output stdout/stderr immediately (good for logs).
# 2. PYTHONDONTWRITEBYTECODE=1: Prevents Python from creating .pyc files (saves space).
ENV PYTHONUNBUFFERED = 1 
ENV PYTHONDONTWRITEBYTECODE = 1 

# Set the working directory inside the container
WORKDIR /app

# We combine apt-get update and install in a single layer for efficiency and security.
# We also clean up the package list in the same step.
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and compile the TA-Lib C Library (v0.6.4)
# This is a critical step because pip cannot install the Python wrapper without the C core.
RUN curl -L https://github.com/TA-Lib/ta-lib/releases/download/v0.6.4/ta-lib-0.6.4-src.tar.gz -o ta-lib.tar.gz && \
    tar xvzf ta-lib.tar.gz && \
    cd ta-lib-0.6.4 && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    cd .. && \
    rm ta-lib.tar.gz && \
    rm -rf ta-lib-0.6.4



# Copy requirements.txt for docker caching
# If requirements.txt does not change, this layer is skipped on rebuilds.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code
COPY . .

# Expose port 8501 to run the streamlit application
EXPOSE 8501

#command to start the application
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
