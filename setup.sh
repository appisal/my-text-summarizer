mkdir -p ~/.streamlit/

echo "\
[server]\n\
headless = true\n\
enableCORS = false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml
#!/bin/bash
gunicorn -b 0.0.0.0:$PORT app:app

