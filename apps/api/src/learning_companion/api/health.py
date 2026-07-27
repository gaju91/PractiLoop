from fastapi import APIRouter

from learning_companion.core.config import settings

router = APIRouter()


@router.get("/health")
async def health_check() -> dict[str, str]:
    return {
        "status": "ok",
        "version": settings.VERSION,
        "environment": settings.ENVIRONMENT,
    }
