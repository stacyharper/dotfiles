c.backend = 'webengine'
#c.content.private_browsing = True
c.completion.cmd_history_max_items = -1
c.fonts.completion.category = 'bold {{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.completion.entry = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.debug_console = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.downloads = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.hints = 'bold {{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.keyhint = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.messages.error = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.messages.info = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.messages.warning = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.prompts = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.statusbar = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.fonts.tabs = '{{@@ font_size @@}}pt {{@@ font_name @@}}'
c.spellcheck.languages = ['en-US', 'fr-FR']
c.tabs.favicons.show = 'never'
c.zoom.default = '140%'
config.bind('<Alt-">', 'tab-focus 3')
config.bind('<Alt-&>', 'tab-focus 1')
config.bind('<Alt-(>', 'tab-focus 5')
config.bind('<Alt-->', 'tab-focus 6')
config.bind('<Alt-\'>', 'tab-focus 4')
config.bind('<Alt-_>', 'tab-focus 8')
config.bind('<Alt-ç>', 'tab-focus -1')
config.bind('<Alt-è>', 'tab-focus 7')
config.bind('<Alt-é>', 'tab-focus 2')
config.bind('<Ctrl-e>', 'scroll down')
config.bind('<Ctrl-y>', 'scroll up')
config.bind('<z><l>', 'spawn --userscript qute-pass')
config.bind('<z><o><l>', 'spawn --userscript qute-pass --otp-only')
config.bind('<z><p><l>', 'spawn --userscript qute-pass --password-only')
config.bind('<z><u><l>', 'spawn --userscript qute-pass --username-only')
config.bind('gT', 'tab-prev')
config.bind('gt', 'tab-next')
config.bind('<Ctrl-l>', 'edit-url')
c.editor.command = ['nvim-qt', '--nofork', '{file}', '--', '-c', 'normal {line}G{column0}l']
c.content.host_blocking.lists = [
    "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts",
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
]
#with config.pattern('*://www.netflix.com/') as p:
#    p.content.private_browsing = False
{%@@ include 'base16/qutebrowser/themes/' + color_scheme + '.config.py' @@%}
