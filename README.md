## Founder's App

An app populated with dummy Star Wars data displaying contacts in a catalog.

### Done well
I was able to layout my controller files easily, using simple functions to update UI, display images, and populate data.

Chewie is a hardcoded user representing the user of the app. Viewing his page allows one to click an additional Edit button in the toolbar that takes you to the edit view. Other users will not see it.

### Not done well
Code is reused between Details and Edit Controllers that could probably be shared. Layout is difficult to get just right using xcode constraints. Finding out how to load the Split layout view in the directory view (ie contact list) wasn't intuitive so the first page displayed after the splash screen is an empty profile view full of defaults. 
