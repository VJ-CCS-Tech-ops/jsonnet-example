local data = import "routes.libsonnet";

std.join('\n', [
    std.manifestIni({
        sections: {
            route: {
                ListenerPort: data.routes[sta].ListenerPort,
                Destination: data.routes[sta].Destination,
                DestinationPort: data.routes[sta].DestinationPort
            }
        }
    })
    for sta in std.objectFields(data.routes)
])