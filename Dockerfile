FROM --platform=linux/x86_64 python:3.9
EXPOSE 8081
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD streamlit run Home.py \
    --server.headless true \
    --browser.serverAddress="0.0.0.0" \
    --server.port 8081 \
    --server.enableCORS false \
    --browser.gatherUsageStats false