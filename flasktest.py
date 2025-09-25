from flaskpp import app #imports my app;icatin from flaskpp
def test_route(): 
    response  = app.test_client().get('/')  #test_client is a test browser and its gets my route "/"
    assert response.status_code == 200  #maks sure route returns 200 okay response
