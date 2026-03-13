# README.md

## install (works from any current directory)

```bash
mkdir -p ~/.agents/skills
```

## java-coding-guideline

```bash
git clone https://github.com/gabia/agent-skills.git

REPO_DIR=/absolute/path/to/your/cloned/repo
ln -sfn "$REPO_DIR/skills/java-coding-guideline" \
	~/.agents/skills/java-coding-guideline
```

## plantuml-diagram-generator

```bash
ln -sfn "$REPO_DIR/skills/plantuml-diagram-generator" \
  ~/.agents/skills/plantuml-diagram-generator
```

### uninstall

```bash
rm ~/.agents/skills/<skill_name>
```
