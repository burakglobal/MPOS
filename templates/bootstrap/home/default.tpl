<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bookmark"></i> Welcome to TheCoin.pw {$SITECOINNAME|default:"Coin"} ({$GLOBAL.config.currency}) mining pool!
        <br />
      </div>
      <div class="panel-body">
        <p><img src="favicon.ico" alt="{$SITECOINNAME|default:"Coin"}">
		<p>Welcome to TheCoin.pw {$SITECOINNAME|default:"Coin"} (FST) mining pool.</p>
		<br>
		<p>Pool features include -</p><br>
		<ul>
		<li>Proportional payout system</li>
		<li>0% pool fee</li>
		<li>Stratum support</li>
		<li>Various difficulty settings to choose from including variable</li>
		<li>Automatic/manual payout options</li>
		<li>Low 0.01 {$GLOBAL.config.currency} withdrawal fee</li>
		<li>Solid state drive infrastructure</li>
		</ul>
		<br>
		<p>Stratum connection options listed below.</p>
			<table border="1" style="width:50%">
				<tbody><tr>
					<td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font></td> 
					<td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font></td>
				</tr>
				<tr>
					<td>8</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-10}</td>
				</tr>
				<tr>
					<td>16</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-9}</td>
				</tr>
				<tr>
					<td>32</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-8}</td>
				</tr>
				<tr>
					<td>64</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-7}</td>
				</tr>
				<tr>
					<td>128</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-6}</td>
				</tr>
				<tr>
					<td>256</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-5}</td>
				</tr>
				<tr>
					<td>512</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-4}</td>
				</tr>
				<tr>
					<td>1024</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-3}</td>
				</tr>
				<tr>
					<td>2048</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-2}</td>
				</tr>
				<tr>
					<td>4096</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}-1}</td>
				</tr>
				<tr>
					<td>Variable</td> 
					<td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
				</tr>
			</tbody>
		</table>
		</p>
      </div>
    </div>
  </div>
</div>
{if $GLOBAL.website.newsstyle|default:"0" == 0}
  {include file="home/news_all.tpl"}
{else}
  {include file="home/news_accordion.tpl"}
{/if}
