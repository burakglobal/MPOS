<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bitbucket fa-fw"></i> Pool Donors
      </div>
      <div class="panel-body table-responsive">
      <table class="table table-striped table-bordered table-hover {if $DONORS}datatable{/if}">
        <thead>
          <tr>
            <th>Name</th>
            <th>%</th>
            <th>{$GLOBAL.config.currency} Total</th>
          </tr>
        </thead>
        <tbody>
{section name=donor loop=$DONORS}
          <tr>
            <td>{if $DONORS[donor].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$DONORS[donor].username}{/if}</td>
            <td>{$DONORS[donor].donate_percent}</td>
            <td>{$DONORS[donor].donation|number_format:"2"}</td>
          </tr>
{sectionelse}
          <tr>
            <td colspan="3">No confirmed donations yet, please be patient!</td>
          </tr>
{/section}
        </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<div class="panel panel-info">
	<div class="panel-heading">
		<i class="fa fa-external-link fa-fw"></i> Advertisement
	</div>
	<div class="panel-body no-padding table-responsive">
		<center>
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<ins class="adsbygoogle"
				style="display:block"
				data-ad-client="ca-pub-1496645407031699"
				data-ad-slot="3529447763"
				data-ad-format="auto"></ins>
			<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
			</script>
		</center>
	</div>
</div>	
