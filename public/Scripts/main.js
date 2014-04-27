var mainApp = {
    "events": {},
    "setTimeout": function (e, t) {
        var event = setTimeout(e, t);
        this.events.timeout.push(event);
        return event;
    },
    "setInterval": function (e, t) {
        var event = setInterval(e, t);
        this.events.interval.push(event);
        return event;
    },
    "clearEvents": function () {
        for (var e in this.events) {
            var clear = "clear" + e.charAt(0).toUpperCase() + e.slice(1);
            for (var i in this.events[e]) {
                var event = this.events[e][i];
                window[clear](event);
            }
        }

        this.events = { "timeout": [], "interval": [] };
    }
};