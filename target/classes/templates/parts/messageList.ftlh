<#include "security.ftlh">
<#import "pager.ftlh" as p>

<div>
    <#list page.content as message>
        <div class="card my-3" style="padding: 20px">
            <div class="m-2">
                <div class="card my-3" style="padding:20px">
                <span><b>Name: </b>${message.tag}</span></br>
                <span><b>Description:</b>${message.text}</span></br>
                <span><b>Genre:</b> ${message.genre}</span></br>
                <span><b>Tag:</b> ${message.realTag}</span>
                </div>
                <p>${message.realText}</p>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <span class="col align-self-center">Автор: </span>
                    <a class="col align-self-center" href="/user-messages/${message.author.id}">${message.authorName}</a>
                    <#if user??>
                    <a class="col align-self-center" href="/messages/${message.id}/like">
                        <#if message.meLiked>
                            <i class="fas fa-thumbs-up"></i>
                        <#else>
                            <i class="far fa-thumbs-up"></i>
                        </#if>
                    ${message.likes}
                    </a>
                    </#if>
                    <#if message.author.id == currentUserId || isAdmin>
                        <a class="col btn btn-success" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                    </#if>
                </div>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>

<@p.pager url page />
