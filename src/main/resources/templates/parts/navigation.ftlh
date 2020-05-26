<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-success"  id="sidebar">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse container" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ">
            <li class="nav-item ml-5">
                <a class="nav-link  font-weight-bold" href="/">Home</a>
            </li>
            <li class="nav-item ml-5">
                <a class="nav-link font-weight-bold" href="/main">Books</a>
            </li>
            <#if user??>
                <li class="nav-item ml-5" >
                    <a class="nav-link font-weight-bold" href="/user-messages/${currentUserId}">My books</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item ml-5">
                    <a class="nav-link font-weight-bold" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item ml-5">
                    <a class="nav-link font-weight-bold" href="/user/profile">Profile</a>
                </li>
            </#if>



                <li class="nav-item ml-5">
                    <form method="get" action="/main" class="form-inline">
                        <input type="search" name="filter" class="form-control mr-sm-2"  value="${filter?ifExists}" placeholder="Search">
                        <button type="submit" class="btn my-2 my-sm-0">Search</button>
                    </form>
                </li>
        </ul>
        <div class="navbar-text mr-3 font-weight-bold" >${name}</div>
        <@l.logout />
    </div>
</nav>