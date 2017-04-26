
FROM microsoft/aspnetcore-build
LABEL Name=orca Version=0.0.1 
ARG source=.
WORKDIR /build

ENV ASPNETCORE_URLS http://+:5000
EXPOSE 5000

COPY $source .
RUN dotnet restore

COPY . .
RUN dotnet publish . -o /out/

ENTRYPOINT dotnet /out/orca.dll
