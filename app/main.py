import uvicorn
from fastapi import FastAPI

# Test

# Create app
app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

if __name__ == "__main__":
    # Start server
    uvicorn.run(
        app,
        host="0.0.0.0",
        port=8080,
        log_level="info",
    )
