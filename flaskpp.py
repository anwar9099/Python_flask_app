from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <p>This is my first Application!</p>
    <a href="/firstpage/1">Go to second page</a> 
    '''

@app.route('/firstpage/<int:page_id>')
def page(page_id):
    return f'''
    <h2>This is page number {page_id}</h2>
    <a href="/">Return to home page</a>
    '''



if __name__ == "__main__":
    app.run(debug=True)
