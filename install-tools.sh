set -ex
echo "Installing $TARGETPLATFORM tools..."
RUST_ARCH=$(if [ "$TARGETPLATFORM" = "linux/arm64" ]; then echo "aarch64"; else echo "x86_64"; fi)

wget -q -O pagefind.tar.gz "https://github.com/CloudCannon/pagefind/releases/download/v${PAGEFIND_VERSION}/pagefind-v${PAGEFIND_VERSION}-${RUST_ARCH}-unknown-linux-musl.tar.gz" \
  && tar -xpf pagefind.tar.gz pagefind \
  && mv pagefind /usr/local/bin/pagefind \
  && rm pagefind.tar.gz

wget -q -O task.tar.gz "https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_${TARGETPLATFORM//\//_}.tar.gz" \
  && tar -xpf task.tar.gz task \
  && mv task /usr/local/bin/task \
  && rm task.tar.gz

wget -q -O lychee.tar.gz "https://github.com/lycheeverse/lychee/releases/download/v${LYCHEE_VERSION}/lychee-v${LYCHEE_VERSION}-${RUST_ARCH}-unknown-linux-gnu.tar.gz" \
  && tar -xpf lychee.tar.gz lychee \
  && mv lychee /usr/local/bin/lychee \
  && rm lychee.tar.gz
