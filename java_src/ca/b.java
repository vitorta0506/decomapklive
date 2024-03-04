package ca;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.util.Log;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    private static final String f1674e = "b";

    /* renamed from: a  reason: collision with root package name */
    private final Activity f1675a;

    /* renamed from: b  reason: collision with root package name */
    private final BroadcastReceiver f1676b = new c();

    /* renamed from: c  reason: collision with root package name */
    private boolean f1677c = false;

    /* renamed from: d  reason: collision with root package name */
    private AsyncTask<Object, Object, Object> f1678d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ca.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class AsyncTaskC0029b extends AsyncTask<Object, Object, Object> {
        private AsyncTaskC0029b() {
        }

        @Override // android.os.AsyncTask
        protected Object doInBackground(Object... objArr) {
            try {
                Thread.sleep(300000L);
                Log.i(b.f1674e, "Finishing activity due to inactivity");
                b.this.f1675a.finish();
                return null;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }

    /* loaded from: classes3.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                if (intent.getIntExtra("plugged", -1) <= 0) {
                    b.this.e();
                } else {
                    b.this.d();
                }
            }
        }
    }

    public b(Activity activity) {
        this.f1675a = activity;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        AsyncTask<Object, Object, Object> asyncTask = this.f1678d;
        if (asyncTask != null) {
            asyncTask.cancel(true);
            this.f1678d = null;
        }
    }

    public synchronized void e() {
        d();
        AsyncTaskC0029b asyncTaskC0029b = new AsyncTaskC0029b();
        this.f1678d = asyncTaskC0029b;
        asyncTaskC0029b.execute(new Object[0]);
    }

    public synchronized void f() {
        this.f1675a.unregisterReceiver(this.f1676b);
    }

    public synchronized void g() {
        if (this.f1677c) {
            Log.w(f1674e, "PowerStatusReceiver was already registered?");
        } else {
            this.f1675a.registerReceiver(this.f1676b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            this.f1677c = true;
        }
        e();
    }

    public void h() {
        d();
    }
}
