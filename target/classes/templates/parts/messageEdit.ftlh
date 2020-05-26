

<a class="btn btn-outline-success" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
   Set your book!
</a>
<div class="collapse" id="collapseExample">

    <div class="form-group mt-3">
        <form method="post">
            <div class="form-group">
                <input type="text" class="form-control col-sm-6"
                       value="<#if message??>${message.tag}</#if>" name="tag" placeholder="Name">
            </div>
            <div class="form-group">
                <input type="text" class="form-control col-sm-6"
                       value="<#if message??>${message.text}</#if>" name="text" placeholder="Short description">
            </div>
            <div class="form-group">
                <input type="text" class="form-control col-sm-6 ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.genre}</#if>" name="genre" placeholder="Genre" />
            </div>
            <div class="form-group">
                <input type="text" class="form-control col-sm-6 ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.realTag}</#if>" name="realTag" placeholder="#tag" />
            </div>

<#--            <div class="form-group">-->
<#--                <input type="text" class="form-control  ${(textError??)?string('is-invalid', '')}"-->
<#--                value="<#if message??>${message.realText}</#if>" name="realText" placeholder="introductory part" />-->
<#--            </div>-->
            <div class="form-group">
                <textarea cols="110" rows="25"  name="realText" class="form-control" placeholder="introductory part" ><#if message??>${message.realText}</#if></textarea>
            </div>


            <input type="hidden" name="id" value="<#if message??>${message.id}</#if>" />
            <div class="form-group">
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </form>

    </div>
</div>