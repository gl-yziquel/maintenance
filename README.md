Manifest of repositories undergoing maintenance chores.
=======================================================


Repositories undergoing sporadic maintenance.
---------------------------------------------

We  here  document  the  list  of repositories  on  which  the  author  performs
maintenance tasks of one kind or another.

* The [legit][legit] repository. A frontend for serving git repositories, rather
bare  bones. The  legit repository  is  pinned to  a version,  0.2.0, where  the
mismatched pack length that has been hitting  the authors is known not to occur.
This is a regression  being thus documented. Note: there seems  to be some forks
of legit in  the wild such as  that of [mleka][legit-mleka] that  are not easily
discoverable and that have recent commits we should investigate. It seems however that git upgrades have broken this fix, which did work, and does not anymore...

* The [taskshell][taskshell]  repository. A taskwarrior shell  that doesn't seem
to be  maintained much  anymore. Because  of a  naming clash  between [go-task's
task][go-task] task runner and taskwarrior's task executable, taskshell has been
given a way to specifiy the  taskwarrior executable executed in the tasksh shell
through the `TASKBIN` environment variable.  We should consider using [fpm][fpm]
to give a shot at packaging it.

* The [python-parse-2D][parse2D] repository. The packaging was not conventional.
It now builds with `python -m build --wheel` from the root folder.

[legit]: https://github.com/gl-yziquel/legit
[legit-mleka]: https://mleku.net/legit
[taskshell]: https://github.com/gl-yziquel/taskshell
[go-task]: https://github.com/go-task/task
[fpm]: https://github.com/jordansissel/fpm
[parse2D]: https://github.com/gl-yziquel/python-parse-2d


Tooling.
--------

We  here list  repositories  that, though  not maintained  by  the author,  have
relevance to maintenance process in general:

* The  [`reposync`][reposync] mirroring tool, with  rsync over ssh. Used  in the
context of mirroring  of the openbsd source  code. This tool could be  used in a
more general context than openbsd, and has here been adapted to run, albeit very
much imperfectly, on a linux box.

[reposync]: https://github.com/gl-yziquel/reposync


Archeology.
-----------

One  step beyond  the  notion of  software maintenance  lies  the discipline  of
software archeology. So.... here goes:

* Wangs's [theorem prover][wang] in SNOBOL4.

[wang]: https://github.com/gl-yziquel/wang-prover-snobol4
