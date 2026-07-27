from fastapi import FastAPI

from learning_companion.api.health import router as health_router
from learning_companion.core.config import settings

app = FastAPI(
    title=settings.PROJECT_NAME,
    version=settings.VERSION,
    openapi_url=f"{settings.API_V1_STR}/openapi.json",
)

app.include_router(health_router, prefix=settings.API_V1_STR)
