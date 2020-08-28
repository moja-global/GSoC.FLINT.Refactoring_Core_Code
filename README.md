# Refactoring Core Code Base of FLINT
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors)

Full Lands Integration Tool (FLINT) is an open source, modular tool that estimates greenhouse gas (GHG) emissions from land by modeling the flux of greenhouse gas on millions (or even billions) of land parcels. The project idea is to refactor the code base of the core software tool FLINT to speed up its processing. The code has to be hyper efficient as every microsecond too much is repeated millions of times.

## How to Get Involved?  

moja global welcomes a wide range of contributions as explained in [Contributing document](https://github.com/moja-global/About-moja-global/blob/master/CONTRIBUTING.md) and in the [About moja-global Wiki](https://github.com/moja-global/.github/wiki).  

## How to Get Started with This project:

* Install [FLINT System](https://github.com/moja-global/FLINT.Example/blob/master/steps%20for%20installation.md).
* Find bottlenecks and vulnerabilities in the code by using the [Instrumentor(Benchmarking Tool)](https://github.com/moja-global/FLINT/blob/feature/profile/Source/moja.core/include/moja/instrumentor.h).
* How to use BenchMark tool:
   
    ``` 
     i) Usage: include this header file somewhere in your code.```(#include "moja/flint/ioperationmanager.h")```

    ii) Begin session:
       ``` MOJA_PROFILE_BEGIN_SESSION("cli_file_name.cli", "new_file_name.json"); ```   

    iii) Usage: 
               
               i) Inside a Function:
                  ``` MOJA_PROFILE_FUNCTION();``` //write this statement at starting of the function and will return the function run_time 
                  
               ii) Scope:
                   {
                      ``` MOJA_PROFILE_SCOPE("Scope_name");```  
                    //Rest of the code
                    }     // Place code like this in scopes you'd like to include in and it will return the Scope_Runtime
    
     iv) End Session:``` MOJA_PROFILE_END_SESSION()```;
   
    example:
         ``` MOJA_PROFILE_BEGIN_SESSION("moja.cli", "moja_trace.json");
              MOJA_PROFILE_FUNCTION();
             MOJA_PROFILE_END_SESSION()```
             
      v) Open the json file created in the Chrome Tracing: (chrome://tracing/)

* Find the alternatives for the vulnerabilities found(may be any library) and try to test using the Moja BenchMark.
  ### Moja bench mark 

```powershell
# bootstrap
bootstrap-vcpkg.bat

# install packages
vcpkg.exe install poco:x64-windows fmt:x64-windows boost-format:x64-windows benchmark:x64-windows

# Create a build folder under the Source folder
git clone https://github.com/moja-global/GSoC.FLINT.Refactoring_Core_Code.git
cd source
cd moja-benchmark
git clone https://github.com/google/benchmark.git
git clone https://github.com/google/googletest.git benchmark/googletest
mkdir build
cd build

# now create the Visual Studio Solution (2019)
cmake -DVCPKG_TARGET_TRIPLET=x64-windows -DCMAKE_TOOLCHAIN_FILE=c:\Development\moja-global\vcpkg\scripts\buildsystems\vcpkg.cmake ..
```
* And Implement in the code of [FLINT](https://github.com/moja-global/FLINT) if founded the suitable Alternative. 

## Work Insights : 
[Blog](https://gist.github.com/parth-gr/92288bd946532cb072aab7e5153dcf20) and 
[Insights](https://github.com/moja-global/GSoC.FLINT.Refactoring_Core_Code/issues/4) of past work.

## FAQ and Other Questions  

* You can find FAQs on the [Wiki](https://github.com/moja.global/.github/wiki).  
* If you have a question about the code, submit [user feedback](https://github.com/moja-global/About-moja-global/blob/master/Contributing/How-to-Provide-User-Feedback.md) in the relevant repository  
* If you have a general question about a project or repository or moja global, [join moja global](https://github.com/moja-global/About-moja-global/blob/master/Contributing/How-to-Join-moja-global.md) and 
    * [submit a discussion](https://help.github.com/en/articles/about-team-discussions) to the project, repository or moja global [team](https://github.com/orgs/moja-global/teams)
    * [submit a message](https://get.slack.help/hc/en-us/categories/200111606#send-messages) to the relevant channel on [moja global's Slack workspace](mojaglobal.slack.com). 
* If you have other questions, please write to info@moja.global   
  

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table><tr><td align="center"><a href="https://github.com/malfrancis"><img src="https://avatars0.githubusercontent.com/u/5935221?v=4" width="100px;" alt=""/><br /><sub><b>Mal</b></sub></a><br /><a href="https://github.com/moja-global/About_moja_global/commits?author=malfrancis" title="Code">💻</a></td>
  <td align="center"><a href="https://www.linkedin.com/in/parth-arora-1449ab14a/"><img src="https://avatars0.githubusercontent.com/u/50455445?s=400&u=9d9b7d45182357ec1053df09d9b1d91ad0ffae75&v=4" width="100px" alt=""/><br /><sub><b>Parth Arora</b></sub></a><br/><a href="https://drive.google.com/open?id=1ZEIe905-vOv0158zEhHXaJ-nPXm395gx" title="Resume">📆</a>
</td></tr></table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!


## Maintainers Reviewers Ambassadors Coaches

The following people are Maintainers Reviewers Ambassadors or Coaches  

<table><tr><td align="center"><a href="https://github.com/malfrancis"><img src="https://avatars0.githubusercontent.com/u/5935221?v=4" width="100px;" alt=""/><br /><sub><b>Mal</b></sub></a><br /><a href="https://github.com/moja-global/About_moja_global/commits?author=malfrancis" title="Code">💻</a></td>
  <td align="center"><a href="https://www.linkedin.com/in/parth-arora-1449ab14a/"><img src="https://avatars0.githubusercontent.com/u/50455445?s=400&u=9d9b7d45182357ec1053df09d9b1d91ad0ffae75&v=4" width="100px" alt=""/><br /><sub><b>Parth Arora</b></sub></a><br/><a href="https://drive.google.com/open?id=1ZEIe905-vOv0158zEhHXaJ-nPXm395gx" title="Resume">📆</a>
</td></tr></table>  

**Maintainers** review and accept proposed changes  
**Reviewers** check proposed changes before they go to the Maintainers  
**Ambassadors** are available to provide training related to this repository  
**Coaches** are available to provide information to new contributors to this repository  
