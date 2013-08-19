##Project Overview

Promise App is a social network for resolutions and promises. Resolutions and Promises die if left unattended (resolutions and promises must be attended to through 'update' posts). Users can increase reliability from their finished popular resolutions. Promises can be sent to individual users. In much of its basic functionality it is a facebook clone, it has two way friendships, comments, likes, posts (in the form of resolutions and promises), notifications, and a newsfeed. No code was copied from facebook.

##Technologies Used

-Devise for user login and registration
-SendGrid for email confirmations and forgotten passwords
-Paperclip/Amazon S3 for profile pictures and resolution update pictures
-Figaro to hide Sendgrid and S3 keys/id
-Kaminari for pagination
-JQuery/JQuery UI for infinite scrolling, resizable divs, drag and drop divs
-AJAX/UJS (less redirects, segway to backbone later)

##User Experience (current)

-Users sign up, optionally with a profile pic (later will implement default pic)
-Users must check email to confirm
-Upon signing in users can visit profile page and create a resolution
-Users can go to user show pages to add friend
-Request is sent to other User who will have a friend request on the nav bar
-drop down appears from navbar on click and user can accept friend request which subtracts the request # by one or removes if none
-the friend requester then receives a notification that the friend request was accepted
-once a friendship is made, users' friend activity shows up in a right sidebar news feed. 
-all window containers of resolutions have infinite scroll with 25 resolutions on each ajax request
-resolutions can be commented on, no button, just press enter on the text area below a resolution
-comments can be seen by clicking the "#{num_comments} comments" link
-comments are not yet paginated, todo
-users can also change profile picture on profile page and logout

##Project Details

- Friend-activity, Notifications, Likes, Comments, Updates have polymorphic associations
- N + 1 queries are avoided
- Fixed Navbar, Fixed Footer with min window-size positioning (no jquery)
- divs both scrollable and resizable
- a lot of partials... a lot...

##TODO

0.Resolution titles? pictures?
- decide whether or not you want to bring back titles...
1.Separate scripts into their own files
2.Updates
- make partial
3.Likes
- create, destroy (just controller actions)
4.Comments
- paginate on click, no empty comments(jq: prevent default)
5.Observers
- for polymorphic associations
6.ElasticSearch
- search usernames, resolution title? statement?, maybe comments?
7.OmniAuth
-sign in with facebook
8.Promises
9.Groups (friend groups)
10.Privacy settings on resolutions to friends and friend groups
11.Placeholder/Default Profile Pic
12.Try to Break Site and write validations/flash messages
13.Home Page (sortable divs)
14.Change to backbone


