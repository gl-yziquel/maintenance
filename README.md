Manifest of repositories undergoing maintenance chores.
=======================================================

This is supposed to be a repository managing other repositories with the
[jiri][jiri] tool.

[jiri]: https://fuchsia.googlesource.com/jiri

To check out the sources, just perform `just sources`.

Ideally, we would like to have a monitoring  tool that keeps the maintained branches up to
date as automatically as possible. We could use [apscheduler][apscheduler] for that.

[apscheduler]: https://apscheduler.readthedocs.io/en/3.x/


Repositories undergoing sporadic maintenance.
---------------------------------------------

We here document the  list of repositories on which the  author performs maintenance tasks
of one kind or another.

*  The [tensorflow_probability][tf-prob]  repository. It  seems people  do not  build from
source much these days. The build instructions in the readme file where not working since,
as far as I can see, the 0.21 version.  The build instructions from the readme file now do
work after a path fixing fix.

* The [buildbot][buildbot] repository. A small fix making the build fail fast when yarn or
yarnpkg is not present.

* The [browsh][browsh] repository.  A fix to the Dockerfile build has  been made by Farzad
Qassemi. A link to a tarball for the go language tarball was broken. It is now possible to
build and execute the built docker image.

*  The [taskshell][taskshell]  repository. A  taskwarrior shell  that doesn't  seem to  be
maintained much anymore. Because of a  naming clash between [go-task's task][go-task] task
runner and taskwarrior's task  executable, taskshell has been given a  way to specifiy the
taskwarrior  executable executed  in the  tasksh shell  through the  `TASKBIN` environment
variable. We should consider using [fpm][fpm] to give a shot at packaging it.

* The [hatch][hatch] repository. Adding some documentation with respect to testing builder plugins.

* The  [python-parse-2D][parse2D] repository. The  packaging was not conventional  It now.
builds with `python -m build --wheel` from the root folder                               .

* The [tagua parser][tagua-parser] repository. It did  not build because it relied on some
old version of  `nom` fetched from an obsolete  url. It now builds from  source. We should
nonetheless devise a tool to investigate  methodically all available branches of the tagua
parser, as it has been archived meanwhile.  (A jiri manifest and project is in development
to collecte the various reposritories of the Tagua project.)

* The  [legit][legit] repository.  A frontend  for serving  git repositories,  rather bare
bones. The  legit repository  is pinned  to a  version, 0.2.0,  where the  mismatched pack
length that has been hitting the authors is known not to occur. This is a regression being
thus documented. Note: there seems to be some forks of legit in the wild such as that of
[mleka][legit-mleka] that  are not  easily discoverable  and that  have recent  commits we
should investigate.  It seems however  that git upgrades have  broken this fix,  which did
work, and does not anymore...

[tf-prob]: https://github.com/gl-yziquel/probability
[buildbot]: https://github.com/gl-yziquel/buildbot
[cogutil]: https://github.com/gl-yziquel/cogutil
[browsh]: https://github.com/gl-yziquel/browsh
[legit]: https://github.com/gl-yziquel/legit
[legit-mleka]: https://mleku.net/legit
[taskshell]: https://github.com/gl-yziquel/taskshell
[hatch]: https://github.com/gl-yziquel/hatch
[go-task]: https://github.com/go-task/task
[fpm]: https://github.com/jordansissel/fpm
[parse2D]: https://github.com/gl-yziquel/python-parse-2d
[tagua-parser]: https://github.com/gl-yziquel/parser


Repositories undergoing sporadic curation.
------------------------------------------

Some projects are of  interest to the author, but are not in  format acceptable for smooth
consumption, either for  the author or the general  public. We here aim to  list them, and
work on them:

*  The [`icosahedron`][icosahedron]  repository, by  [shironetsu][icosahedron-shironetsu],
is  a  Jupyter notebook  describing  the  relationship  between  the icosahedron  and  the
combinatorics of  the Payley biplane  geometry, along the  lines of Kostant.  Rough stuff.
Moreover, it  is written in japanese.  Needless to say, this  is not easy material  to get
into. We  hope to  simplify the process  involved in that  by progressively  curating this
repository in our own fork.

* The [`gregr-verse`][greg-verse] repository provides  and implementation in racket of the
verse calculus, and was  carved out from an experimental repository  by Greg Rosenblatt to
make it standalone.

* The [kanren][kanren] declarative logic programming  system, by Oleg Kyseliov, William E.
Byrd and Daniel P.  Friedman. The code of this project has been  migrated to github, which
makes it more accessible.

* The  [`qu-prolog`][qu-prolog] system is  developed by  Peter Robinson at  the University
of  Queensland, Australia.  For  more  details, such  as  documentation,  please refer  to
its  [homepage][qu-prolog-homepage].  It is  a  prolog  system  with builtin  support  for
quantification. The repository here provided is a concatenation of the released tarballs.

[icosahedron]: https://github.com/gl-yziquel/icosahedron.git
[icosahedron-shironetsu]: https://github.com/shironetsu/icosahedron.git
[gregr-verse]: https://github.com/gl-yziquel/gregr-verse
[qu-prolog]: https://github.com/gl-yziquel/qu-prolog
[qu-prolog-homepage]: https://staff.itee.uq.edu.au/pjr/HomePages/QuPrologHome.html


Tooling.
--------

We here  list repositories that,  though not maintained by  the author, have  relevance to
maintenance process in general:

* The [`reposync`][reposync] mirroring  tool, with rsync over ssh. Used  in the context of
mirroring of the  openbsd source code. This tool  could be used in a  more general context
than openbsd, and has  here been adapted to run, albeit very much  imperfectly, on a linux
box.

[reposync]: https://github.com/gl-yziquel/reposync


Archeology.
-----------

One  step beyond  the  notion of  software  maintenance lies  the  discipline of  software
archeology. So.... here goes:

* Wangs's [theorem prover][wang] in SNOBOL4.

* [ATT Lisp Universal Hsell][attlush] for neural network implementation.

* [w3m][w3m] web browser or web pager. Faihful import of sourceforge CVS repository.

[wang]: https://github.com/gl-yziquel/wang-prover-snobol4
[attlush]: https://github.com/gl-yziquel/attlush-frozen
[w3m]: https://github.com/gl-yziquel/w3m
