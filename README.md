{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww33400\viewh18100\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs26 \cf0 \expnd0\expndtw0\kerning0
## Rotten Tomatoes\
\
This is a movies app displaying box office and top rental DVDs using the [Rotten Tomatoes API](http://developer.rottentomatoes.com/docs/read/JSON).\
\
Time spent: 20 hrs\
\
### Features\
\
#### Required\
\
- [x ] User can view a list of movies. Poster images load asynchronously.\
- [x ] User can view movie details by tapping on a cell.\
- [x ] User sees loading state while waiting for the API.\
- [x ] User sees error message when there is a network error: http://cl.ly/image/1l1L3M460c3C\
- [x] User can pull to refresh the movie list.\
\
#### Optional\
\
- [ ] All images fade in.\
- [ ] For the larger poster, load the low-res first and switch to high-res when complete.\
- [ ] All images should be cached in memory and disk: AppDelegate has an instance of `NSURLCache` and `NSURLRequest` makes a request with `NSURLRequestReturnCacheDataElseLoad` cache policy. I tested it by turning off wifi and restarting the app.\
- [ ] Customize the highlight and selection effect of the cell.\
- [ ] Customize the navigation bar.\
- [ ] Add a tab bar for Box Office and DVD.\
- [ ] Add a search bar: pretty simple implementation of searching against the existing table view data.\
\
### Walkthrough\
![Video Walkthrough](http://i.imgur.com/9d4fXIm.gif)\
\
Credits\
---------\
* [Rotten Tomatoes API](http://developer.rottentomatoes.com/docs/read/JSON)\
* [AFNetworking](https://github.com/AFNetworking/AFNetworking)}