export const environment = {
  production: true,
  getWebSocket: function (): WebSocket {
    const loc = window.location;
    let new_uri;
    if (loc.protocol === 'https:') {
      new_uri = 'wss:';
    } else {
      new_uri = 'ws:';
    }
    new_uri += '//' + loc.host;
    new_uri += loc.pathname + '/events';

    return new WebSocket(new_uri);
  },
  url: '/__admin/',
  resourcesUrl: '/__admin/webapp/'
};
