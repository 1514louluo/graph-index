%setdefault('data', None)
%import config
% if data:
    % for s in sorted(data.keys()):
        % target = '&'.join('target=' + m for m in data[s])
<div class = 'graph-row'>
    <div class = 'graph'>
        <h4><a href = '/server/{{s}}/{{plugin}}'>{{s}} / {{plugin}}</a></h4>
        <img class = 'graph' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&&title={{plugin}} - day' />
        <img class = 'graph' src = '{{config.graphite_url}}/render/?width=600&height=400&{{target}}&from=-7d&title={{plugin}} - week' />
    </div>
</div>
    % end
% end