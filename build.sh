#!/bin/bash
set -e
dotnet clean
dotnet build
dotnet publish src/kiota/kiota.csproj -c Release -p:PublishSingleFile=true -o ./bin/kiota --framework net9.0
#cp -r bin/kiota ../../ferrari/flutter/microsoft_graph_client
