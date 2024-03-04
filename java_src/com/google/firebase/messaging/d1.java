package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.messaging.d1;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
class d1 implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14048a;

    /* renamed from: b  reason: collision with root package name */
    private final Intent f14049b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f14050c;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<a> f14051d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private a1 f14052e;
    @GuardedBy("this")

    /* renamed from: f  reason: collision with root package name */
    private boolean f14053f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f14054a;

        /* renamed from: b  reason: collision with root package name */
        private final t4.h<Void> f14055b = new t4.h<>();

        a(Intent intent) {
            this.f14054a = intent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.f14054a.getAction() + " Releasing WakeLock.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> schedule = scheduledExecutorService.schedule(new Runnable() { // from class: com.google.firebase.messaging.b1
                @Override // java.lang.Runnable
                public final void run() {
                    d1.a.this.f();
                }
            }, (this.f14054a.getFlags() & 268435456) != 0 ? y0.f14192a : 9000L, TimeUnit.MILLISECONDS);
            e().b(scheduledExecutorService, new t4.c() { // from class: com.google.firebase.messaging.c1
                @Override // t4.c
                public final void a(t4.g gVar) {
                    schedule.cancel(false);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void d() {
            this.f14055b.e(null);
        }

        t4.g<Void> e() {
            return this.f14055b.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d1(Context context, String str) {
        this(context, str, new ScheduledThreadPoolExecutor(0, new f4.a("Firebase-FirebaseInstanceIdServiceConnection")));
    }

    @GuardedBy("this")
    private void a() {
        while (!this.f14051d.isEmpty()) {
            this.f14051d.poll().d();
        }
    }

    private synchronized void b() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "flush queue called");
        }
        while (!this.f14051d.isEmpty()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "found intent to be delivered");
            }
            a1 a1Var = this.f14052e;
            if (a1Var != null && a1Var.isBinderAlive()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f14052e.c(this.f14051d.poll());
            } else {
                d();
                return;
            }
        }
    }

    @GuardedBy("this")
    private void d() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("binder is dead. start connection? ");
            sb2.append(!this.f14053f);
            Log.d("FirebaseMessaging", sb2.toString());
        }
        if (this.f14053f) {
            return;
        }
        this.f14053f = true;
        try {
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        if (d4.a.b().a(this.f14048a, this.f14049b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f14053f = false;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized t4.g<Void> c(Intent intent) {
        a aVar;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
        }
        aVar = new a(intent);
        aVar.c(this.f14050c);
        this.f14051d.add(aVar);
        b();
        return aVar.e();
    }

    @Override // android.content.ServiceConnection
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
        }
        this.f14053f = false;
        if (!(iBinder instanceof a1)) {
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            a();
            return;
        }
        this.f14052e = (a1) iBinder;
        b();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        b();
    }

    @VisibleForTesting
    d1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f14051d = new ArrayDeque();
        this.f14053f = false;
        Context applicationContext = context.getApplicationContext();
        this.f14048a = applicationContext;
        this.f14049b = new Intent(str).setPackage(applicationContext.getPackageName());
        this.f14050c = scheduledExecutorService;
    }
}
