# Content Pipeline (Web demo)

**Stack:** HTML (static demo UI)  
**API:** http://127.0.0.1:5510  
**Web:** http://localhost:5510

## Run (local)

### API
(web only demo)

### Web (static tester)
cd content-pipeline-native/web && python3 -m http.server 5510

## Test
- **Ping:** curl -s http://127.0.0.1:5510 | jq .
- Open the web tester and use your CDN/upload flow

