Changes I usually apply to firefox based browsers

# Fix Firefox blank page eye torturing white color when loading new tab.
1. enable toolkit.legacyUserProfileCustomizations.stylesheets: false (change to true) in `about:config`
2. copy chrome folder to the profile directory which can be loacted in `about:support`
3. restart browser

# disable audio/video indicator because it is annoying and also throws xml parsing error
Go to about:config and change 
set `privacy.webrtc.legacyGlobalIndicator: false`
create `privacy.webrtc.hideGlobalIndicator: true`


# Trash sites firefox shills for: twitter,reddit, facebook
```
# source: https://ask.metafilter.com/344500/Cant-delete-some-items-from-Firefox-One-click-search
# empty this field
browser.newtabpage.activity-stream.default.sites
```

# extras
```
browser.uidensity 1

# keyboard input lag
accessibility.force_disabled 1

# calculator
browser.urlbar.suggest.calculator 1
```
