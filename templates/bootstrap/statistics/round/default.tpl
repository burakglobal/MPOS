{if $GLOBAL.config.payout_system == 'pplns'}
   {include file="statistics/round/pplns_block_stats.tpl"}
   {include file="statistics/round/pplns_transactions.tpl"}
	<div class="row">
   {include file="statistics/round/round_shares.tpl"}
   {include file="statistics/round/pplns_round_shares.tpl"}
	</div>
{else if $GLOBAL.config.payout_system == 'prop'}
   {include file="statistics/round/block_stats.tpl"}
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
   <div class="row">
   {include file="statistics/round/round_shares.tpl"}
   {include file="statistics/round/round_transactions.tpl"}
   </div>
{else}
   <div class="row">
   {include file="statistics/round/block_stats.tpl"}
   {include file="statistics/round/round_shares.tpl"}
   </div>
{/if}
