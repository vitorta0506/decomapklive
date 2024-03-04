package com.xiaomi.push.service;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.push.q3;
/* loaded from: classes5.dex */
public class XMJobService extends Service {

    /* renamed from: a  reason: collision with root package name */
    static Service f37086a;

    /* renamed from: a  reason: collision with other field name */
    private IBinder f330a = null;

    /* loaded from: classes5.dex */
    static class a extends JobService {

        /* renamed from: a  reason: collision with root package name */
        Binder f37087a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f37088b;

        /* renamed from: com.xiaomi.push.service.XMJobService$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        private static class HandlerC0370a extends Handler {

            /* renamed from: a  reason: collision with root package name */
            JobService f37089a;

            HandlerC0370a(JobService jobService) {
                super(jobService.getMainLooper());
                this.f37089a = jobService;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                JobParameters jobParameters = (JobParameters) message.obj;
                tf.c.l("Job finished " + jobParameters.getJobId());
                this.f37089a.jobFinished(jobParameters, false);
                if (jobParameters.getJobId() == 1) {
                    com.xiaomi.push.n0.d(false);
                }
            }
        }

        a(Service service) {
            this.f37087a = null;
            this.f37087a = (Binder) q3.e(this, "onBind", new Intent());
            q3.e(this, "attachBaseContext", service);
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            tf.c.l("Job started " + jobParameters.getJobId());
            Intent intent = new Intent(this, XMPushService.class);
            intent.setAction("com.xiaomi.push.timer");
            intent.setPackage(getPackageName());
            startService(intent);
            if (this.f37088b == null) {
                this.f37088b = new HandlerC0370a(this);
            }
            Handler handler = this.f37088b;
            handler.sendMessage(Message.obtain(handler, 1, jobParameters));
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            tf.c.l("Job stop " + jobParameters.getJobId());
            return false;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder = this.f330a;
        return iBinder != null ? iBinder : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f330a = new a(this).f37087a;
        f37086a = this;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f37086a = null;
    }
}
