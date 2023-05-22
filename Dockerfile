FROM mcr.microsoft.com/dotnet/sdk:6.0.408-jammy-amd64

RUN apt-get update \
    && apt-get install -y wget unzip curl default-jre rlwrap \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY BugReport.csproj .
COPY user.cljr .

RUN dotnet tool install --global --version 1.12.0-alpha7 Clojure.Main
RUN dotnet add package clojure.tools.nrepl --version 0.1.0-alpha1
RUN dotnet restore

# Add .NET global tools to PATH
ENV PATH="$PATH:/root/.dotnet/tools"

CMD ["Clojure.Main", "-e", "user"]