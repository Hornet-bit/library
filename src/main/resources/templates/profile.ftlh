<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <h5>User: ${username}</h5>
    ${message?ifExists}
    <form  method="post">
        <div class="form-group row"><label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-3">
                <input type="text" name="username" class="form-control" placeholder="Set new user name"/>
            </div>
        </div>
        <div class="form-group row"><label class="col-sm-2 col-form-label"> Password : </label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control" placeholder="Set new password"/>
            </div>
        </div>
            <div class="form-group row"><label class="col-sm-2 col-form-label"> Email : </label>
                <div class="col-sm-3">
                    <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}"/>
                </div>
            </div>
        <button class="btn btn-success" type="submit" >Save</button>
    </form>

</@c.page>
