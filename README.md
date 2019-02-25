This is a simple project for running a Rust (the video game, not the programming language) dedicated server in Docker.

**Warning:** This is a work in progress and is released for informational purposes only. Not suitable or secure for hosting a server without modifications.

The Dockerfile only installs the Steam command line client `steamcmd` and some shell scripts to the container. The actual dedicated server is installed/updated from Steam when the container launches.

Inspiration taken from [Didstopia/rust-server](https://github.com/Didstopia/rust-server).

# License

```
Copyright 2019 Matti Hiltunen

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
