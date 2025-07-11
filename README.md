# 🔐 PrivateGPT on WSL2 with CUDA & Poetry

A secure, GPU-accelerated AI runtime for PrivateGPT—containerized with modular Dockerfiles, CUDA bindings, and reproducible Python environments.

## 🧰 Features
- CUDA 12.4 support via WSL2/Docker Desktop
- Python 3.11 via Pyenv + Poetry for dependency pinning
- LLaMA-cpp with GPU acceleration
- Qdrant, HuggingFace embeddings, and optional UI support
- CI-ready build system via GitHub Actions
- .devcontainer support for VSCode workflows

## 🚀 Quickstart
```bash
# Build the full image
make build

# Run PrivateGPT with exposed UI
make run
```

Visit: http://localhost:8001

## 🛠️ Dev Container
VSCode users can launch using .devcontainer/devcontainer.json for full GPU support.

## 📦 Modular Dockerfiles
Dockerfile.base: Environment + Poetry setup

Dockerfile.model: PrivateGPT install, CUDA bindings

## 👷 CI/CD
GitHub Actions build workflow included. GitLab runners and container registry support ready for extension.

## 🧠 Author
Maintained by Olawale Adekoya

## ✍️ `CONTRIBUTING.md` – Scaffold for Collaboration

# 🤝 Contributing to PrivateGPT WSL2 Container

Thanks for considering contributing! Here's how to get started:

## 🧪 Setup
Use Docker Desktop + WSL2 backend with GPU pass-through enabled.

## 🧭 Branching
- `main`: Stable build
- `develop`: New integrations or feature testing
- Feature branches: `feature/<topic>`

## ✅ PR Guidelines
- Keep builds reproducible
- Include test logs or screenshots for model inference
- Tag @oadekoya12 for review

## 🚩 Open Tasks
- Add logging hooks to observability stack
- Extend model support to Mistral and Code LLMs
- Include GitLab CI variant

## 🛠️ Troubleshooting
💥 Makefile: *** missing separator. Stop.
This error is caused by commands under your targets (e.g. build:, run:) being indented with spaces instead of tabs. To auto-correct them:

```bash
	sed -i '/^[ ]\{4,\}/s/^[ ]\{4,\}/\t/' Makefile
```
✅ This replaces lines starting with 4+ spaces with a single tab. 📦 If you prefer a safer fix that preserves your original file:

```bash
	cp Makefile Makefile.bak && sed -i '/^[ ]\{4,\}/s/^[ ]\{4,\}/\t/' Makefile
```
Now you're build-ready again!