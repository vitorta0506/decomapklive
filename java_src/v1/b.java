package v1;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.bolts.AppLinks;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;
@RequiresApi(api = 21)
/* loaded from: classes.dex */
public class b implements u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f58625a;

    /* renamed from: b  reason: collision with root package name */
    private final w1.d f58626b;

    /* renamed from: c  reason: collision with root package name */
    private final SchedulerConfig f58627c;

    public b(Context context, w1.d dVar, SchedulerConfig schedulerConfig) {
        this.f58625a = context;
        this.f58626b = dVar;
        this.f58627c = schedulerConfig;
    }

    private boolean d(JobScheduler jobScheduler, int i9, int i10) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i11 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i9) {
                return i11 >= i10;
            }
        }
        return false;
    }

    @Override // v1.u
    public void a(n1.o oVar, int i9, boolean z10) {
        ComponentName componentName = new ComponentName(this.f58625a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f58625a.getSystemService("jobscheduler");
        int c10 = c(oVar);
        if (!z10 && d(jobScheduler, c10, i9)) {
            s1.a.b("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", oVar);
            return;
        }
        long d12 = this.f58626b.d1(oVar);
        JobInfo.Builder c11 = this.f58627c.c(new JobInfo.Builder(c10, componentName), oVar.d(), d12, i9);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i9);
        persistableBundle.putString("backendName", oVar.b());
        persistableBundle.putInt(RemoteMessageConst.Notification.PRIORITY, z1.a.a(oVar.d()));
        if (oVar.c() != null) {
            persistableBundle.putString(AppLinks.KEY_NAME_EXTRAS, Base64.encodeToString(oVar.c(), 0));
        }
        c11.setExtras(persistableBundle);
        s1.a.c("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", oVar, Integer.valueOf(c10), Long.valueOf(this.f58627c.g(oVar.d(), d12, i9)), Long.valueOf(d12), Integer.valueOf(i9));
        jobScheduler.schedule(c11.build());
    }

    @Override // v1.u
    public void b(n1.o oVar, int i9) {
        a(oVar, i9, false);
    }

    @VisibleForTesting
    int c(n1.o oVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f58625a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(oVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(z1.a.a(oVar.d())).array());
        if (oVar.c() != null) {
            adler32.update(oVar.c());
        }
        return (int) adler32.getValue();
    }
}
