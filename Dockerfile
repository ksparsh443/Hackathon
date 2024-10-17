FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the app code and dependencies
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the Streamlit port
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "streamlit_app_v3.py", "--server.port=8501", "--server.address=0.0.0.0"]
