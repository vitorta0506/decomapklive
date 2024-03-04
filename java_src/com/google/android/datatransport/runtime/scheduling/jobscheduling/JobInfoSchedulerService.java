package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.facebook.bolts.AppLinks;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.huawei.hms.push.constant.RemoteMessageConst;
import n1.o;
import n1.t;
@RequiresApi(api = 21)
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString(AppLinks.KEY_NAME_EXTRAS);
        int i9 = jobParameters.getExtras().getInt(RemoteMessageConst.Notification.PRIORITY);
        int i10 = jobParameters.getExtras().getInt("attemptNumber");
        t.f(getApplicationContext());
        o.a d10 = o.a().b(string).d(z1.a.b(i9));
        if (string2 != null) {
            d10.c(Base64.decode(string2, 0));
        }
        t.c().e().v(d10.a(), i10, new Runnable() { // from class: v1.c
            @Override // java.lang.Runnable
            public final void run() {
                JobInfoSchedulerService.this.b(jobParameters);
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
