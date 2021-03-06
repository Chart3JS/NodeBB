<div class="row dashboard">
	<div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-heading">Forum Traffic</div>
			<div class="panel-body">
				<div class="graph-container">
					<ul class="graph-legend">
						<li><div class="page-views"></div><span>Page Views</span></li>
						<li><div class="unique-visitors"></div><span>Unique Visitors</span></li>
					</ul>
					<canvas id="analytics-traffic" width="100%" height="400"></canvas>
				</div>
				<hr/>
				<div class="text-center pull-left monthly-pageviews">
					<div><strong id="pageViewsLastMonth"></strong></div>
					<div>Page views Last Month</div>
				</div>
				<div class="text-center pull-left monthly-pageviews">
					<div><strong id="pageViewsThisMonth"></strong></div>
					<div>Page views This Month</div>
				</div>
				<div class="text-center pull-left monthly-pageviews">
					<div><strong id="pageViewsPastDay"></strong></div>
					<div>Page views in last 24 hours</div>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- BEGIN stats -->
			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">{stats.name}</div>
					<div class="panel-body">
						<div id="unique-visitors">
							<div class="text-center pull-left">
								<div>{stats.day}</div>
								<div>Day</div>
							</div>
							<div class="text-center pull-left">
								<div>{stats.week}</div>
								<div>Week</div>
							</div>
							<div class="text-center pull-left">
								<div>{stats.month}</div>
								<div>Month</div>
							</div>
							<div class="text-center pull-left">
								<div>{stats.alltime}</div>
								<div>All Time</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END stats -->

			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">Updates</div>
					<div class="panel-body">
						<div class="alert alert-info version-check">
							<p>You are running <strong>NodeBB v<span id="version">{version}</span></strong>.</p>
						</div>
						<p>
							Always make sure that your NodeBB is up to date for the latest security patches and bug fixes.
						</p>
						<p class="text-center">
							<button class="btn btn-warning reload">Reload</button>
							<button class="btn btn-danger restart">Restart</button>
						</p>
						<p class="help-block text-center">
							Restarting your NodeBB will drop all existing connections. A reload is lighter and is probably
							what you want 99% of the time.
						</p>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="panel panel-default">
					<div class="panel-heading">Notices</div>
					<div class="panel-body">
					<!-- BEGIN notices -->
						<div>
							<!-- IF notices.done --><i class="fa fa-fw fa-check text-success"></i> {notices.doneText}<!-- ELSE --><i class="fa fa-fw fa-times text-danger"></i> {notices.notDoneText}<!-- ENDIF notices.done -->
						</div>
					<!-- END notices -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3">
		<div class="panel panel-default">
			<div class="panel-heading">Anonymous vs Registered Users</div>
			<div class="panel-body">
				<div class="graph-container pie-chart legend-up">
					<ul class="graph-legend">
						<li><div class="anonymous"></div><span>Anonymous</span></li>
						<li><div class="registered"></div><span>Registered</span></li>
					</ul>
					<canvas id="analytics-registered"></canvas>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">User Presence</div>
			<div class="panel-body">
				<div class="graph-container pie-chart legend-up">
					<ul class="graph-legend">
						<li><div class="on-categories"></div><span>On categories list</span></li>
						<li><div class="reading-posts"></div><span>Reading posts</span></li>
						<li><div class="browsing-topics"></div><span>Browsing topics</span></li>
						<li><div class="recent"></div><span>Recent / Unread</span></li>
					</ul>
					<canvas id="analytics-presence"></canvas>
				</div>
			</div>
		</div>

		<div class="panel panel-default">
			<div class="panel-heading">High Presence Topics</div>
			<div class="panel-body">
				<div class="graph-container pie-chart legend-down">
					<canvas id="analytics-topics"></canvas>
					<ul class="graph-legend" id="topics-legend"></ul>
				</div>
			</div>
		</div>



		<div class="panel panel-default">
			<div class="panel-heading">Active Users</div>
			<div class="panel-body">
				<div id="active-users"></div>
			</div>
		</div>
	</div>
</div>