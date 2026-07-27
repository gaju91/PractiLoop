from fastapi.testclient import TestClient
from learning_companion.main import app

client = TestClient(app)

def test_health_check() -> None:
    """Verifies GET /api/v1/health returns 200 OK with correct status and version."""
    response = client.get("/api/v1/health")

    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "ok"
    assert data["version"] == "0.1.0"
    assert "environment" in data
