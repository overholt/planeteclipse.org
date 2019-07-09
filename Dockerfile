#
# Copyright (c) 2019 Eclipse Foundation, Inc.
# 
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License v. 2.0 which is available at
# http://www.eclipse.org/legal/epl-2.0.
# 
# Contributors:
#   Christopher Guindon <chris.guindon@eclipse-foundation.org>
# 
# SPDX-License-Identifier: EPL-2.0

FROM eclipsefdn/planet-venus
MAINTAINER Christopher Guindon <chris.guindon@eclipse-foundation.org>

# Create workspace
WORKDIR /var/planet

# Copy configs
COPY planet/planet.ini /var/planet/
COPY planet/theme/config.ini planet/theme/index.html.tmpl /var/planet/theme/
COPY planet/theme/authors planet/theme/css planet/theme/images /var/planet/www/