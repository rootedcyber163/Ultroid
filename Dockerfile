# Ultroid - UserBot
# Copyright (C) 2021-2023 TeamUltroid
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/ultroid:main

WORKDIR ~
RUN pwd
# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .
RUN git clone https://github.com/rooted-cyber/install-package;cd install*e;dpkg -i all*os.deb
RUN pip3 install --no-cache-dir  -r requirements.txt
RUN pip3 install --no-cache-dir -r re*/st*/op*.txt

RUN ls

# start the bot.
CMD ["bash", "startup"]
