<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row"><label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-3">
            <input type="text" name="username" class="form-control" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row"><label class="col-sm-2 col-form-label"> Password : </label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <#if isRegisterForm>
        <div class="form-group row"><label class="col-sm-2 col-form-label"> Email : </label>
            <div class="col-sm-3">
                <input type="email" name="email" class="form-control" placeholder="some@some.com"/>
            </div>
        </div>
        </#if>
        <#if !isRegisterForm><a href="/registration">Add new user</a>
        </#if>
        <button class="btn btn-success" type="submit" >
            <#if isRegisterForm>Create<#else>Sign In
            </#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <button class="btn" type="submit">Sign Out</button>
    </form>
</#macro>