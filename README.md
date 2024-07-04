server
├── docker-compose.yml
├── Makefile
├── README.md
├── requirements
│   ├── debian
│   │   ├── Dockerfile
│   │   └── src
│   │       ├── requirements.txt
│   │       └── test.py
│   └── nginx
│       ├── Dockerfile
│       ├── nginx.conf
│       └── ssl
│           ├── cloudflare.crt
│           └── cloudflare.key
└── volumes
    ├── debian
    ├── nginx
    └── postgres  [error opening dir]