FROM kestra/kestra:latest

# Create a wrapper script
RUN echo '#!/bin/sh\nexec kestra server local' > /entrypoint.sh && chmod +x /entrypoint.sh

# Force Railway to run our wrapper script
ENTRYPOINT ["/entrypoint.sh"]