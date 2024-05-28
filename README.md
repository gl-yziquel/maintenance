Manifest of repositories undergoing maintenance chores.
=======================================================

We here document the list of repositories on which the author performs maintenance tasks of one kind or another.

* The [legit][legit] repository. A frontend for serving git repositories, rather bare bones. The legit repository is pinned to a version, 0.2.0, where the mismatched pack length that has been hitting the authors is known not to occur. This is a regression being thus documented.

* The [taskshell][taskshell] repository. A taskwarrior shell that doesn't seem to be maintained much anymore. Because of a naming clash between go-task's task task runner and taskwarrior's task executable, taskshell has been given a way to specifiy the taskwarrior executable executed in the tasksh shell through the TASKBIN environment variable.

[legit]: https://github.com/gl-yziquel/legit
[taskshell]: https://github.com/gl-yziquel/taskshell
