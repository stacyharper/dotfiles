c.backend = 'webengine'
c.colors.downloads.bar.bg = '{{@@ bar_bg @@}}'
c.colors.hints.match.fg = '{{@@ color2 @@}}'
c.colors.messages.error.bg = '{{@@ urgent_bg @@}}'
c.colors.messages.error.border = '{{@@ urgent_bd @@}}'
c.colors.messages.error.fg = '{{@@ urgent_fg @@}}'
c.colors.messages.info.bg = '{{@@ background @@}}'
c.colors.messages.info.fg = '{{@@ foreground @@}}'
c.colors.messages.warning.bg = '{{@@ color2 @@}}'
c.colors.messages.warning.fg = '{{@@ color15 @@}}'
c.colors.statusbar.command.bg = '{{@@ bar_bg @@}}'
c.colors.statusbar.command.fg = '{{@@ bar_fg @@}}'
c.colors.statusbar.command.private.bg = '{{@@ bar_bg @@}}'
c.colors.statusbar.command.private.fg = '{{@@ bar_fg @@}}'
c.colors.statusbar.caret.bg = '{{@@ color1 @@}}'
c.colors.statusbar.caret.fg = '{{@@ color15 @@}}'
c.colors.statusbar.insert.bg = '{{@@ color2 @@}}'
c.colors.statusbar.insert.fg = '{{@@ color15 @@}}'
c.colors.statusbar.normal.bg = '{{@@ bar_bg @@}}'
c.colors.statusbar.normal.bg = '{{@@ bar_bg @@}}'
c.colors.statusbar.passthrough.bg = '{{@@ color4 @@}}'
c.colors.statusbar.passthrough.fg = '{{@@ color15 @@}}'
c.colors.statusbar.private.bg = '{{@@ bar_bg @@}}'
c.colors.statusbar.private.fg = '{{@@ bar_fg @@}}'
c.colors.statusbar.url.error.fg = '{{@@ color5 @@}}'
c.colors.statusbar.url.success.https.fg = '{{@@ color2 @@}}'
c.colors.tabs.bar.bg = '{{@@ focused_bg @@}}'
c.colors.tabs.even.bg = '{{@@ unfocused_bg @@}}'
c.colors.tabs.even.fg = '{{@@ unfocused_fg @@}}'
c.colors.tabs.odd.bg = '{{@@ unfocused_bg @@}}'
c.colors.tabs.odd.fg = '{{@@ unfocused_fg @@}}'
c.colors.tabs.selected.even.bg = '{{@@ focused_bg @@}}'
c.colors.tabs.selected.even.fg = '{{@@  focused_fg @@}}'
c.colors.tabs.selected.odd.bg = '{{@@ focused_bg @@}}'
c.colors.tabs.selected.odd.fg = '{{@@ focused_fg @@}}'
c.completion.cmd_history_max_items = -1
c.content.private_browsing = True
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
