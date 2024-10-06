local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()

local Window = ArrayField:CreateWindow({
   Name = "SoftUi Speed",
   LoadingTitle = "SoftUi Speed Suite",
   LoadingSubtitle = "by SoftUi",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = true, -- Create a custom folder for your hub/game
      FileName = "SoftUiSpeed"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "SoftUi Key",
      Subtitle = "Key System",
      Note = "Key: SoftUi_Suite_Latest",
      FileName = "softUi_suite_latest", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"SoftUi_Suite_Latest"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

ArrayField:Notify({
   Title = "Soft Ui LLC",
   Content = "Press Accept to get Ui.",
   Duration = 16,
   Image = 0,
   Actions = { -- Notification Buttons
      Accept = {
         Name = "Accept",
         Callback = function()
         ArrayField:Notify({
   Title = "Soft Ui LLC",
   Content = "Coming Soon.",
   Duration = 6.5,
   Image = 0,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})
      end
   },
 },
})
