# planeteclipse.org

This is a fork of https://git.eclipse.org/r/#/admin/projects/planeteclipse.org/planeteclipse.org to address some issues that are being discussed via Bug [510733](https://bugs.eclipse.org/bugs/show_bug.cgi?id=510733) - Make Planet Eclipse processing a Jenkins job

The [planeteclipse.org](https://planeteclipse.org) website is generated with [Planet Venus](https://github.com/rubys/venus).

Planet Eclipse is a window into the world, work and lives of Eclipse hackers and contributors.

## Guidelines

There is no official policy, however, we (the admins) generally ask ourselves the following questions before adding a feed to Planet Eclipse.

* Is the feed written by a real person?
* Is the person an Eclipse committer, hacker or contributor?
* Is the ratio of off-topic postings not too high?
* Are the off-topic postings covered by the Planet Eclipse tag line?
* Does the feed promote a company or a commercial product?
* Does the feed add more value to Planet Eclipse and the Eclipse community than it does for the feed owner?
* Is there more than just a welcome posting?
* Does the feed contain advertisements?

## How to add your blog
1. By opening a [GitHub issue](https://github.com/EclipseFdn/planeteclipse.org/issues/new?template=add_blog.md)
2. By creating a pull request

The issue or pull request must include a picture (185x185), the RSS feed url for the blog and the full name of the author.

If the contributor chose to submit a pull request, this information must be added to planet/planet.ini file as follows:

~~~~
[https://blogs.eclipse.org/blog/180/feed]
name = Tanja Obradovic
picture = tanja-obradovic.jpg
~~~~

Pictures must be added to the planet/theme/authors folder.

:exclamation: **TIP:** If your blog contains other topics than Eclipse, use categories to filter the feed, e.g. ```<your blog>/category/eclipse/feed/```.

## Getting started (Local development)

How to run the application:

```bash
docker-compose build && docker-compose up -d
```

## Contributing

1. [Fork](https://help.github.com/articles/fork-a-repo/) the [EclipseFdn/planeteclipse.org](https://github.com/EclipseFdn/planeteclipse.org) repository
2. Clone repository: `git clone https://github.com/[your_github_username]/planeteclipse.org.git`
3. Create your feature branch: `git checkout -b my-new-feature`
4. Commit your changes: `git commit -m 'Add some feature' -s`
5. Push feature branch: `git push origin my-new-feature`
6. Submit a pull request

### Declared Project Licenses

This program and the accompanying materials are made available under the terms
of the Eclipse Public License v. 2.0 which is available at
http://www.eclipse.org/legal/epl-2.0.

SPDX-License-Identifier: EPL-2.0

## Trademarks

* Eclipse® is a Trademark of the Eclipse Foundation, Inc.
* Eclipse Foundation is a Trademark of the Eclipse Foundation, Inc.

## Copyright and license

Copyright 2018 the [Eclipse Foundation, Inc.](https://www.eclipse.org) and the [planeteclipse.org authors](https://github.com/EclipseFdn/planeteclipse.org/graphs/contributors). Code released under the [Eclipse Public License Version 2.0 (EPL-2.0)](https://github.com/EclipseFdn/planeteclipse.org/blob/src/LICENSE).
