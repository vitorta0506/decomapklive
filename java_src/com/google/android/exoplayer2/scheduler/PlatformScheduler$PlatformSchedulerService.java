package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
/* loaded from: classes.dex */
public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        int b10 = new Requirements(extras.getInt("requirements")).b(this);
        if (b10 == 0) {
            l0.J0(this, new Intent((String) a.e(extras.getString("service_action"))).setPackage((String) a.e(extras.getString("service_package"))));
            return false;
        }
        r.i("PlatformScheduler", "Requirements not met: " + b10);
        jobFinished(jobParameters, true);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
