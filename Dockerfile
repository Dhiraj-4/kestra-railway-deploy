FROM kestra/kestra:latest

RUN echo '#!/bin/sh\nexec kestra server local' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD []