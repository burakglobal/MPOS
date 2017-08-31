<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-info">
            <div class="panel-heading">
                <i class="fa fa-question fa-fw"></i> Getting Started Guide
            </div>
            <div class="panel-body">

                <p>1. <strong>Create account.</strong></p>
                <ul>
                    <li>Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, or login if you already have account</li>
                    <li>Create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login</li>
                </ul>
                </li>
                <p>2. <strong>Download mining software.</strong></p>
                <ul>
                    <p>The choice of mining software is your preference, CGMiner and BFGMiner are two of the most popular choices. Their output and set up are very similar, and we will show in the next step how to set up either.</p>
                    <p>Download the mining software of your choice from one of the links below:</p>
                    <ol>
                        <li type="disc">BFGMiner <a href="http://bfgminer.org" target="_blank">Download here</a></li>
                        <li type="disc">CGMiner <a href="http://ck.kolivas.org/apps/cgminer/" target="_blank">Download here</a></li>
                    </ol>
                    <br/>
                    <p>Once your download is completed, unzip or extract the files to your desktop, or preferred folder.</p>
                </ul>
                </li>
                <p>3. <strong>Select a difficulty.</strong></p>
                <ul>
                    <p>The below table displays available difficulties to mine with. If unsure of the difficulty level to select it is recommended to mine with automatic difficulty.</p>
                    <br> {if $GLOBAL.config.algorithm == 'sha256d'}
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> Stratum Connection Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Miner Hashrate</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Automatic</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
                                        <td>Any</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+1}</td>
                                        <td>0-15 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+2}</td>
                                        <td>16-31 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+3}</td>
                                        <td>32-63 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+4}</td>
                                        <td>64-127 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+5}</td>
                                        <td>128-255 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+6}</td>
                                        <td>256-511 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>512</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+7}</td>
                                        <td>512-1023 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>1024</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+8}</td>
                                        <td>1024-2047 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>2048</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+9}</td>
                                        <td>2048-4095 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>4096</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+10}</td>
                                        <td>4096-8191 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>8192</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+11}</td>
                                        <td>8192-16383 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16384</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+12}</td>
                                        <td>16384-32767 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32768</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+13}</td>
                                        <td>32768-65535 GH/s</td>
                                    </tr>
                                    <tr>
                                        <td>65536</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+14}</td>
                                        <td>> 65536 GH/s</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {/if} {if $GLOBAL.config.algorithm == 'scrypt'}
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-tasks fa-fw"></i> Stratum Connection Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Miner Hashrate</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Automatic</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
                                        <td>Any</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+1}</td>
                                        <td>0-124 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+2}</td>
                                        <td>125-249 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+3}</td>
                                        <td>250-499 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+4}</td>
                                        <td>500-999 KH/s</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+5}</td>
                                        <td>1-2 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+6}</td>
                                        <td>2-5 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>512</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+7}</td>
                                        <td>5-10 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>1024</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+8}</td>
                                        <td>10-25 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>2048</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+9}</td>
                                        <td>25-50 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>4096</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+10}</td>
                                        <td>50-100 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>8192</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+11}</td>
                                        <td>100-250 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>16384</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+12}</td>
                                        <td>200-350 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>32768</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+13}</td>
                                        <td>350-550 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>65536</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+14}</td>
                                        <td>> 550 MH/s</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {/if}{if $GLOBAL.config.algorithm == 'x11'}
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <i class="fa fa-plug fa-fw"></i> Stratum Connection Details
                        </div>
                        <div class="panel-body no-padding table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <tbody>
                                    <tr>
                                        <td bgcolor="#666666"><font color="white"><strong>Mining Difficulty</strong></font>
                                        </td>
                                        <td bgcolor="#666666"><font color="white"><strong>Stratum Connection String</strong></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Automatic</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3630"}</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+1}</td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+2}</td>
                                    </tr>
                                    <tr>
                                        <td>32</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+3}</td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+4}</td>
                                    </tr>
                                    <tr>
                                        <td>128</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+5}</td>
                                    </tr>
                                    <tr>
                                        <td>256</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+6}</td>
                                    </tr>
                                    <tr>
                                        <td>512</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+7}</td>
                                        <td>5-10 MH/s</td>
                                    </tr>
                                    <tr>
                                        <td>1024</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+8}</td>
                                    </tr>
                                    <tr>
                                        <td>2048</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+9}</td>
                                    </tr>
                                    <tr>
                                        <td>4096</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+10}</td>
                                    </tr>
                                    <tr>
                                        <td>8192</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+11}</td>
                                    </tr>
                                    <tr>
                                        <td>16384</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+12}</td>
                                    </tr>
                                    <tr>
                                        <td>32768</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+13}</td>
                                    </tr>
                                    <tr>
                                        <td>65536</td>
                                        <td>stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{{$SITESTRATUMPORT|default:"3630"}+14}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    {/if}
                </ul>
                <p>4. <strong>Configure your mining software.</strong></p>
                <ul>
                    <p>At this stage your hardware should be connected and powered on. Let's now configure your mining software. We'll aim to produce a simple, reusable "start up" file. Once we're done, you'll simply double-click on this file to launch your software. This section looks long, but it is not as difficult as it seems. If you are confused about the instructions please be sure to double check the details of each step.</p>
                    <p>You'll need your credentials (called "worker" info) and some pool information to configure your mining software. Open your preferred text editor, such as Notepad, Notepad++, Vim, or gedit. We'll show the specifics of Notepad, but the steps are very similar for others.
                        <p>In the below example we will use the variable difficulty stratum connection string, don't forget to replace the example worker info with that of your own.</p>
                        <strong>BFGMiner</strong>
                        <pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
                        <strong>CGMiner</strong>
                        <pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
                        <p>Double check you've entered the appropriate credentials and url, then save the file. This is not just a text file, though. On Windows you'll need to save the file with the ".bat" extension.</p>
                        <p>To do this in Notepad: Click on File, then Save As</p>
                        <p>Next to "Save as type", open the drop-down menu and select "All Files" instead of "Text Documents(*.txt). Next to "File Name", enter "StartMining.bat", without quotes! Double check that Save as type is not "Text Documents", and click save.</p>
                        <p>For ease later, move "StartMining.bat" to the folder containing your mining software files.</p>
                        <p>Note for Linux users: instead of StartMining.bat, name your file StartMining.sh. After you save it, right click the file, click on "Properties", then under the "Permissions" tab tick the box for "Allow executing file as program". This will allow you to double-click the file to launch your mining software.
                            <br />
                            <p>Double click on your StartMining batch file.</p>
                </ul>
                <p>5. <strong>Create a {$SITECOINNAME|default:"Litecoin"} address to receive payments.</strong></p>
                <ul>
                    <li> Downloading the client and block chain: Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:" http://www.litecoin.org "}" target="_blank">here</a>.
                        <p>Generate a new address and input it on your account page to receive payments.</p>
                    </li>
                </ul>
                </li>
                {if $GLOBAL.config.algorithm == 'scrypt'}
                <p>6. <strong>Advanced CGMiner settings / FAQ</strong></p>
                <ul>
                    <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
                    <li>Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.</li>
                    <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
                    <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
                    <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li>
                </ul>
                </li>
                {/if}
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
