# Oh My Zsh 설치 경로
export ZSH="$HOME/.oh-my-zsh"

# 터미널 테마
ZSH_THEME="robbyrussell"

# Oh My Zsh 플러그인
plugins=(
    git                        # git 명령어 alias 및 자동완성
    kubectl sudo
    zsh-autosuggestions        # 히스토리 기반 명령어 자동 제안
    zsh-syntax-highlighting    # 명령어 구문 하이라이팅
)

# Homebrew 환경변수 및 FPATH 설정 (completions 경로 등록)
eval "$(brew shellenv)"

# Oh My Zsh 로드 (내부에서 compinit 자동 호출)
source $ZSH/oh-my-zsh.sh

# mise 런타임 버전 관리자 활성화
eval "$(mise activate zsh)"
eval "$(uv generate-shell-completion zsh)"

# bun global 설치 라이브러리를 위함
export PATH="$HOME/.bun/bin:$PATH"
