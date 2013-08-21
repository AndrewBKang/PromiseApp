##Project Overview

Promise App is a social network for resolutions and promises. Resolutions and Promises die if left unattended (resolutions and promises must be attended to through 'update' posts). Users can increase reliability from their finished popular resolutions. Promises can be sent to individual users. In much of its basic functionality it is a facebook clone, it has two way friendships, comments, likes, posts (in the form of resolutions and promises), notifications, and a newsfeed. No code was copied from facebook.

##Technologies Used

- Devise for user login and registration
- SendGrid for email confirmations and forgotten passwords
- Paperclip/Amazon S3 for profile pictures and resolution update pictures
- Figaro to hide Sendgrid and S3 keys/id
- Kaminari for pagination
- JQuery/JQuery UI for infinite scrolling, resizable divs, drag and drop divs
- AJAX/UJS (less redirects, segway to backbone later)

##Project Details

- Friend-activity, Notifications, Likes, Comments, Updates have polymorphic associations
- N + 1 queries are avoided
- Fixed Navbar, Fixed Footer with min window-size positioning (no jquery)
- divs both scrollable and resizable
- a lot of partials... a lot...

##TODO

- Resolution titles? pictures?
- Separate scripts into their own files
- make partial for updates
- Likes
- create, destroy (just controller actions)
- Comments paginate on click, no empty comments(jq: prevent default)
- Observers for polymorphic associations
- ElasticSearch usernames, resolution title? statement?, maybe comments?
- OmniAuth, sign in with facebook
- Promises
- Groups (friend groups)
- Privacy settings on resolutions to friends and friend groups
- Placeholder/Default Profile Pic
- Try to Break Site and write validations/flash messages
- Home Page (sortable divs)
- Change to backbone

##User Experience (current)

- Sign up with email confirmation
- Users can create resolutions
- Users can add friends
- friend requests on nav bar
- drop downs on nav bar, ajax friend requests and notifications
- friend activity news feed
- infinite scroll pagination in resolution divs
- comments entered on keypress no button
- comments toggle on click
- comments are not yet paginated, todo
- users can also change profile picture on profile page and logout
