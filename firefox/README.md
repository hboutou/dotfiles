Changes I usually apply to firefox based browsers

# Fix Firefox blank page eye torturing white color when loading new tab.
1. go to about:config in the browser and enable toolkit.legacyUserProfileCustomizations.stylesheets: false (change to true)
2. copy chrome folder to the profile directory which can be loacted in about:support
3. restart browser

# disable audio/video indicator because it is annoying and also throws xml parsing error
Go to about:config and change 
set `privacy.webrtc.legacyGlobalIndicator: false`
create `privacy.webrtc.hideGlobalIndicator: true`
