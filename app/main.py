
from fastapi import FastAPI
from routes.routes import router as post_router
from routes.routes import router as ticker_router
from routes.routes import router as put_router
from routes.routes import router as delete_router



app = FastAPI()
app.include_router(post_router)
app.include_router(ticker_router)
app.include_router(put_router)
app.include_router(delete_router)