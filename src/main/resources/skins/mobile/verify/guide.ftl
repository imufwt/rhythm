<#--

    Rhythm - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Modified version from Symphony, Thanks Symphony :)
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${newbieGuideLabel} - ${symphonyLabel}">
        <meta name="description" content="${newbieGuideLabel} ${symphonyLabel}"/>
        </@head>
        <link rel="canonical" href="${servePath}/guide">
    </head>
    <body>
        <#include "../header.ftl">
        <div class="main">
            <div class="verify guide">
                <div class="intro vditor-reset">
                    <dl>
                        <dt class="current"><b>1. </b>${guideUploadAvatarLabel}</dt>
                        <dt><b>2. </b>${guideFollowTagLabel}</dt>
                        <dt><b>3. </b>${guideFollowUserLabel}</dt>
                        <dt><b>4. </b>${guideStarProjectLabel}</dt>
                    </dl>
                    <div class="fn-none">
                        ${introLabel}
                    </div>
                </div>
                <div class="verify-wrap">
                    <div class="step-btn fn-clear">
                        <button class="fn-right green">${nextStepLabel}</button>
                        <span class="fn-right"> &nbsp; &nbsp;</span>
                        <button class="red fn-right fn-none">${preStepLabel}</button>
                    </div>
                    <div class="guide-tab">
                        <div class="fn-clear fn-none">
                            <div class="avatar-big" id="avatarURL" onclick="$('#avatarUpload input').click()"
                                 style="background-image:url('${currentUser.userAvatarURL210}')"></div><br/><br/>
                            <div class="avatar" id="avatarURLMid" onclick="$('#avatarUpload input').click()"
                                 style="background-image:url('${currentUser.userAvatarURL48}')"></div> &nbsp; &nbsp;
                            <div class="avatar-small" id="avatarURLNor" onclick="$('#avatarUpload input').click()"
                                 style="background-image:url('${currentUser.userAvatarURL20}')"></div>
                            <form class="fn-right form" id="avatarUpload" method="POST" enctype="multipart/form-data">
                                <label class="btn">
                                    ${uploadLabel}<input type="file" name="file">
                                </label>
                            </form>
                        </div>
                        <div class="fn-none fn-clear">
                            <ul class="tag-desc">
                                <#list tags as tag>
                                    <li data-id="${tag.oId}">
                                        <a rel="nofollow" href="javascript:void(0)">
                                            <#if tag.tagIconPath!="">
                                                <img src="${tag.tagIconPath}" alt="${tag.tagTitle}" /></#if>
                                            ${tag.tagTitle}
                                        </a>
                                    </li>
                                </#list>
                            </ul>
                        </div>
                        <div class="fn-none list">
                            <ul class="fn-clear">
                                <#list users as follower>
                                    <li>
                                        <div class="fn-flex">
                                            <a rel="nofollow" class="tooltipped tooltipped-se fn-left" aria-label="${follower.userName} <#if follower.userOnlineFlag>${onlineLabel}<#else>${offlineLabel}</#if>"
                                               href="${servePath}/member/${follower.userName}" >
                                                <div class="avatar" style="background-image:url('${follower.userAvatarURL}')"></div>
                                            </a>
                                            <div class="fn-flex-1">
                                                <h2 class="fn-inline">
                                                    <a rel="nofollow" href="${servePath}/member/${follower.userName}" ><#if follower.userNickname != ''>${follower.userNickname}<#else>${follower.userName}</#if></a>
                                                </h2>
                                                <#if follower.userNickname != ''>
                                                    <a class='ft-fade' rel="nofollow" href="${servePath}/member/${follower.userName}" >${follower.userName}</a>
                                                </#if>
                                                <button class="fn-right mid" onclick="Util.follow(this, '${follower.oId}', 'user')">
                                                    ${followLabel}
                                                </button>
                                                <div>
                                                    <#if follower.userIntro != "">
                                                        <span class="ft-gray">${follower.userIntro}</span>
                                                    <#else>
                                                        <span class="ft-gray">${articleLabel}</span> ${follower.userArticleCount?c} &nbsp;
                                                        <span class="ft-gray">${tagLabel}</span> ${follower.userTagCount?c}
                                                    </#if>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </#list>
                            </ul>
                        </div>
                        <div class="fn-none ft-center">
                            <br/>
                            <a href="https://github.com/FishPiOffical/rhythm" target="_blank"><img src="${staticServePath}/images/sym-logo300.png" width="180px"></a> <br/> <br/><br/>
                            <iframe src="https://ghbtns.com/github-btn.html?user=FishPiOffical&repo=rhythm&type=star&count=true&size=large" frameborder="0" scrolling="0" width="130px" height="30px"></iframe>
                        </div>
                        <div class="fn-none list">
                            <ul>
                                <li>
                                    <a href="${servePath}/article/1630569106133">${getStartLabel}</a>
                                    <span class="ft-gray">${getStartTipLabel}</span>
                                </li>
                                <li>
                                    <a href="${servePath}/article/1630575841478">${basicLabel}</a>
                                    <span class="ft-gray">${basicTipLabel}</span>
                                </li>
                                <li>
                                    <a href="${servePath}/article/1631459254239">${hotKeyLabel}</a>
                                    <span class="ft-gray">${hotKeyTipLabel}</span>
                                </li>
                                <li>
                                    <a href="${servePath}/article/1631460144004">Markdown ${tutorialLabel}</a>
                                    <span class="ft-gray">${markdownTutorialTipLabel}</span>
                                </li>
                            </ul>
                            <br/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <#include "../footer.ftl">
        <script src="${staticServePath}/js/verify${miniPostfix}.js?${staticResourceVersion}"></script>
        <script src="${staticServePath}/js/settings${miniPostfix}.js?${staticResourceVersion}"></script>
        <script src="${staticServePath}/js/lib/jquery/file-upload-9.10.1/jquery.fileupload.min.js"></script>
        <script src="${staticServePath}/js/lib/jquery/isotope.pkgd.min.js"></script>
        <script>
            Label.finshLabel = '${finshLabel}';
            Label.nextStepLabel = '${nextStepLabel}';
            Label.unfollowLabel = '${unfollowLabel}';
            Label.followLabel = '${followLabel}';
            Verify.initGuide(${currentUser.userGuideStep?c}, ${tags?size});

            Settings.initUploadAvatar({
                id: 'avatarUpload',
                userId: '${currentUser.oId}',
                maxSize: '${imgMaxSize?c}'
            }, function (data) {
                var uploadKey = data.result.key;
                $('#avatarURL').css("background-image", 'url(' + uploadKey + ')').data('imageurl', uploadKey);
                $('#avatarURLMid').css("background-image", 'url(' + uploadKey + ')').data('imageurl', uploadKey);
                $('#avatarURLNor').css("background-image", 'url(' + uploadKey + ')').data('imageurl', uploadKey);

                Settings.updateAvatar('${csrfToken}');
            });
        </script>
    </body>
</html>
