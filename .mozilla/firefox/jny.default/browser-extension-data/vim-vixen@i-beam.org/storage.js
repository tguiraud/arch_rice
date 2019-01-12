{"version":"0.15","settings":{"source":"form","json":"{\n  \"keymaps\": {\n    \"0\": { \"type\": \"scroll.home\" },\n    \":\": { \"type\": \"command.show\" },\n    \"o\": { \"type\": \"command.show.open\", \"alter\": false },\n    \"O\": { \"type\": \"command.show.open\", \"alter\": true },\n    \"t\": { \"type\": \"command.show.tabopen\", \"alter\": false },\n    \"T\": { \"type\": \"command.show.tabopen\", \"alter\": true },\n    \"w\": { \"type\": \"command.show.winopen\", \"alter\": false },\n    \"W\": { \"type\": \"command.show.winopen\", \"alter\": true },\n    \"b\": { \"type\": \"command.show.buffer\" },\n    \"a\": { \"type\": \"command.show.addbookmark\", \"alter\": true },\n    \"k\": { \"type\": \"scroll.vertically\", \"count\": -1 },\n    \"j\": { \"type\": \"scroll.vertically\", \"count\": 1 },\n    \"h\": { \"type\": \"scroll.horizonally\", \"count\": -1 },\n    \"l\": { \"type\": \"scroll.horizonally\", \"count\": 1 },\n    \"<C-U>\": { \"type\": \"scroll.pages\", \"count\": -0.5 },\n    \"<C-D>\": { \"type\": \"scroll.pages\", \"count\": 0.5 },\n    \"<C-B>\": { \"type\": \"scroll.pages\", \"count\": -1 },\n    \"<C-F>\": { \"type\": \"scroll.pages\", \"count\": 1 },\n    \"gg\": { \"type\": \"scroll.top\" },\n    \"G\": { \"type\": \"scroll.bottom\" },\n    \"$\": { \"type\": \"scroll.end\" },\n    \"d\": { \"type\": \"tabs.close\" },\n    \"!d\": { \"type\": \"tabs.close.force\" },\n    \"u\": { \"type\": \"tabs.reopen\" },\n    \"K\": { \"type\": \"tabs.prev\", \"count\": 1 },\n    \"J\": { \"type\": \"tabs.next\", \"count\": 1 },\n    \"gT\": { \"type\": \"tabs.prev\", \"count\": 1 },\n    \"gt\": { \"type\": \"tabs.next\", \"count\": 1 },\n    \"g0\": { \"type\": \"tabs.first\" },\n    \"g$\": { \"type\": \"tabs.last\" },\n    \"<C-6>\": { \"type\": \"tabs.prevsel\" },\n    \"r\": { \"type\": \"tabs.reload\", \"cache\": false },\n    \"R\": { \"type\": \"tabs.reload\", \"cache\": true },\n    \"zp\": { \"type\": \"tabs.pin.toggle\" },\n    \"zd\": { \"type\": \"tabs.duplicate\" },\n    \"zi\": { \"type\": \"zoom.in\" },\n    \"zo\": { \"type\": \"zoom.out\" },\n    \"zz\": { \"type\": \"zoom.neutral\" },\n    \"f\": { \"type\": \"follow.start\", \"newTab\": false, \"background\": false },\n    \"F\": { \"type\": \"follow.start\", \"newTab\": true, \"background\": false },\n    \"H\": { \"type\": \"navigate.history.prev\" },\n    \"L\": { \"type\": \"navigate.history.next\" },\n    \"[[\": { \"type\": \"navigate.link.prev\" },\n    \"]]\": { \"type\": \"navigate.link.next\" },\n    \"gu\": { \"type\": \"navigate.parent\" },\n    \"gU\": { \"type\": \"navigate.root\" },\n    \"gi\": { \"type\": \"focus.input\" },\n    \"gf\": { \"type\": \"page.source\" },\n    \"y\": { \"type\": \"urls.yank\" },\n    \"p\": { \"type\": \"urls.paste\", \"newTab\": false },\n    \"P\": { \"type\": \"urls.paste\", \"newTab\": true },\n    \"/\": { \"type\": \"find.start\" },\n    \"n\": { \"type\": \"find.next\" },\n    \"N\": { \"type\": \"find.prev\" },\n    \"<S-Esc>\": { \"type\": \"addon.toggle.enabled\" }\n  },\n  \"search\": {\n    \"default\": \"google\",\n    \"engines\": {\n      \"google\": \"https://google.com/search?q={}\",\n      \"yahoo\": \"https://search.yahoo.com/search?p={}\",\n      \"bing\": \"https://www.bing.com/search?q={}\",\n      \"duckduckgo\": \"https://duckduckgo.com/?q={}\",\n      \"twitter\": \"https://twitter.com/search?q={}\",\n      \"wikipedia\": \"https://en.wikipedia.org/w/index.php?search={}\"\n    }\n  },\n  \"properties\": {\n  }\n}","form":{"keymaps":{"scroll.home":"0","command.show":":","command.show.open?{\"alter\":false}":"o","command.show.open?{\"alter\":true}":"O","command.show.tabopen?{\"alter\":false}":"t","command.show.tabopen?{\"alter\":true}":"T","command.show.winopen?{\"alter\":false}":"w","command.show.winopen?{\"alter\":true}":"W","command.show.buffer":"b","command.show.addbookmark?{\"alter\":true}":"a","scroll.vertically?{\"count\":-1}":"k","scroll.vertically?{\"count\":1}":"j","scroll.horizonally?{\"count\":-1}":"h","scroll.horizonally?{\"count\":1}":"l","scroll.pages?{\"count\":-0.5}":"u","scroll.pages?{\"count\":0.5}":"d","scroll.pages?{\"count\":-1}":"<C-B>","scroll.pages?{\"count\":1}":"<C-F>","scroll.top":"gg","scroll.bottom":"G","scroll.end":"$","tabs.close":"x","tabs.reopen":"U","tabs.prev?{\"count\":1}":"gT","tabs.next?{\"count\":1}":"gt","tabs.first":"g0","tabs.last":"g$","tabs.reload?{\"cache\":false}":"r","tabs.reload?{\"cache\":true}":"R","tabs.pin.toggle":"zp","tabs.duplicate":"zd","zoom.in":"zi","zoom.out":"zo","zoom.neutral":"zz","navigate.history.prev":"H","navigate.history.next":"L","navigate.link.prev":"[[","navigate.link.next":"]]","navigate.parent":"gu","navigate.root":"gU","focus.input":"gi","page.source":"gf","urls.yank":"y","urls.paste?{\"newTab\":false}":"p","urls.paste?{\"newTab\":true}":"P","find.start":"/","find.next":"n","find.prev":"N","addon.toggle.enabled":"<S-Esc>","follow.start?{\"newTab\":false}":"f","follow.start?{\"newTab\":true}":"F"},"search":{"default":"duckduckgo","engines":[["duckduckgo","https://duckduckgo.com/?q={}"],["twitter","https://twitter.com/search?q={}"],["wikipedia","https://en.wikipedia.org/w/index.php?search={}"]]},"properties":{"hintchars":"abcdefghijklmnopqrstuvwxyz","smoothscroll":false,"adjacenttab":true}}}}