# Skills README

## Install Base

```bash
mkdir -p ~/.agents/skills
REPO_DIR=/absolute/path/to/your/cloned/repo
```

## Skill Registry (DB-style)

| skill_name | description | source_path | link_path | depends_on |
| --- | --- | --- | --- | --- |
| adr | Architecture Decision Record 작성/수정용 스킬. 섹션 고정(Title, Status, Context, Decision, Outcome, Governance, Notes). C4 다이어그램 필요 시 plantuml 스킬 연동. | `$REPO_DIR/skills/adr` | `~/.agents/skills/adr` | `plantuml-diagram-generator` (C4 needed only) |
| plantuml-diagram-generator | PlantUML/C4 다이어그램 생성 스킬. C4 규칙 검증 및 자동 보정 포함. | `$REPO_DIR/skills/plantuml-diagram-generator` | `~/.agents/skills/plantuml-diagram-generator` | - |

## Link Commands

```bash
ln -sfn "$REPO_DIR/skills/plantuml-diagram-generator" ~/.agents/skills/plantuml-diagram-generator
ln -sfn "$REPO_DIR/skills/adr" ~/.agents/skills/adr
```

## Integration Rule

- `adr` 작성 중 C4 다이어그램이 필요하면 `plantuml-diagram-generator`를 사용한다.
- C4 다이어그램이 불필요하면 `adr`만 사용한다.

## Uninstall

```bash
rm ~/.agents/skills/<skill_name>
```
