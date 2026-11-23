# Back to Go, Rust is Slow (in Ways That Matter to the Most People)

People are now writing formal academic papers debunking Rust's lies about safety and the rest. The more I learn about how shitty and dishonest Rust is (and its community)  the more motivated I am to look at C and C++ (again) and the more I'm not just ambivalent about Rust, I'm actively advocating against it. Rust is fucking bad for the world. There are still *zero* significant projects in Rust while there are now hundreds in Go including Kubernetes, Docker and the entire cloud native ecosystem. Rust is a fail. Die, die, die. Learn it and watch your career die with it.


https://youtube.com/playlist?list=PLrK9UeDMcQLpp9EcYfnoAb4VQvN6931F5

People don't like being told their beloved language is actually a bad pick for *most* software projects, but Rust really is. Go is faster and safer *overall* in ways that matter to the most people, which is why the entire Cloud Native industry is based on Go (including the k3os operating system which has a C kernel with the rest in Go). Go was initially designed to meet this exact need at Google. Rust wasn't. Rust solves problems for sure, just very few that *most* developers need. 

Update: ESR agrees (http://esr.ibiblio.org/?p=7294#content)


Hence, the embarrassing fact that Rust has nearly zero adoption by the industry and remains mostly a toy language enjoying the peak of the Gartner Hype Cycle as it falsely promotes a standard of safety that does not hold up to any practical scrutiny.

People who actually work in large development shops or manage them understand that developer productivity is far more important than raw execution speed for most things. The rest complain. The single greatest IT cost is developer on-boarding and training. 

Is the Rust runtime faster? Usually. Do your own research. Look up the stats on the fastest web servers,  results are fluid. Read the follow up on the Discord blog about them later moving to Erlang and comparing Go 1.9 (1.14 is current) to most current Rust.

Personally, I'll take a language specifically designed to address the needs of enterprise computing by the creators of C, Unix, Plan9, and  Unicode over an accidental hobby-turned-"systems language,"  volatile, heavy async/await concurrency, unnecessarily complex, read-only, butt-ugly, trendy language run by a shady "rust is political", NodeJS-y governance team any day. 

I expect a lot of C++ code to be replaced with Rust, and that's a good thing. Rust is a good thing for *a very limited few applications.* But for everything else in the get-stuff-done-safely-and-quickly application space it is not only a terrible pick, but one that might even get you fired if you force it on a company without understanding and prioritizing the needs of the company you work for. Cool is not a criterion.

 [Update: https://www.techempower.com/benchmarks/ confirms Rust, C and C++ have the fastest web servers period. I was wrong about that (having remembered another study that only compared, PHP, Java, Erlang, Node, and Go). Go is next, but Go is the clear leader from the dozens of enterprise case studies porting from non-compiled web frameworks. In fact, I have yet to read a single case study of *anyone* using Rust for any web services in an enterprise environment.]


[Please do not comment unless you watched the entire video. Comments prove people aren't. And by the way, this is a live stream that's why it's messy and opinionated and downright wrong in several places. I've noted the important corrections. Thank you.]

## Transcription

