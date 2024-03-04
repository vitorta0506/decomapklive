package com.google.firebase.messaging;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class v0 {

    /* renamed from: i  reason: collision with root package name */
    private static final long f14169i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a  reason: collision with root package name */
    private final Context f14170a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f14171b;

    /* renamed from: c  reason: collision with root package name */
    private final z f14172c;

    /* renamed from: d  reason: collision with root package name */
    private final FirebaseMessaging f14173d;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledExecutorService f14175f;

    /* renamed from: h  reason: collision with root package name */
    private final t0 f14177h;
    @GuardedBy("pendingOperations")

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, ArrayDeque<t4.h<Void>>> f14174e = new ArrayMap();
    @GuardedBy("this")

    /* renamed from: g  reason: collision with root package name */
    private boolean f14176g = false;

    private v0(FirebaseMessaging firebaseMessaging, e0 e0Var, t0 t0Var, z zVar, Context context, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.f14173d = firebaseMessaging;
        this.f14171b = e0Var;
        this.f14177h = t0Var;
        this.f14172c = zVar;
        this.f14170a = context;
        this.f14175f = scheduledExecutorService;
    }

    @WorkerThread
    private static <T> void b(t4.g<T> gVar) throws IOException {
        try {
            t4.j.b(gVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e11);
            }
            throw ((IOException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    @WorkerThread
    private void c(String str) throws IOException {
        b(this.f14172c.k(this.f14173d.i(), str));
    }

    @WorkerThread
    private void d(String str) throws IOException {
        b(this.f14172c.l(this.f14173d.i(), str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static t4.g<v0> e(final FirebaseMessaging firebaseMessaging, final e0 e0Var, final z zVar, final Context context, @NonNull final ScheduledExecutorService scheduledExecutorService) {
        return t4.j.c(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.u0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                v0 i9;
                i9 = v0.i(context, scheduledExecutorService, firebaseMessaging, e0Var, zVar);
                return i9;
            }
        });
    }

    static boolean g() {
        return Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ v0 i(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, e0 e0Var, z zVar) throws Exception {
        return new v0(firebaseMessaging, e0Var, t0.a(context, scheduledExecutorService), zVar, context, scheduledExecutorService);
    }

    private void j(s0 s0Var) {
        synchronized (this.f14174e) {
            String e10 = s0Var.e();
            if (this.f14174e.containsKey(e10)) {
                ArrayDeque<t4.h<Void>> arrayDeque = this.f14174e.get(e10);
                t4.h<Void> poll = arrayDeque.poll();
                if (poll != null) {
                    poll.c(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.f14174e.remove(e10);
                }
            }
        }
    }

    private void n() {
        if (h()) {
            return;
        }
        q(0L);
    }

    boolean f() {
        return this.f14177h.b() != null;
    }

    synchronized boolean h() {
        return this.f14176g;
    }

    @WorkerThread
    boolean k(s0 s0Var) throws IOException {
        try {
            String b10 = s0Var.b();
            char c10 = 65535;
            int hashCode = b10.hashCode();
            if (hashCode != 83) {
                if (hashCode == 85 && b10.equals("U")) {
                    c10 = 1;
                }
            } else if (b10.equals(ExifInterface.LATITUDE_SOUTH)) {
                c10 = 0;
            }
            if (c10 == 0) {
                c(s0Var.c());
                if (g()) {
                    Log.d("FirebaseMessaging", "Subscribe to topic: " + s0Var.c() + " succeeded.");
                }
            } else if (c10 != 1) {
                if (g()) {
                    Log.d("FirebaseMessaging", "Unknown topic operation" + s0Var + ".");
                }
            } else {
                d(s0Var.c());
                if (g()) {
                    Log.d("FirebaseMessaging", "Unsubscribe from topic: " + s0Var.c() + " succeeded.");
                }
            }
            return true;
        } catch (IOException e10) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e10.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e10.getMessage())) {
                if (e10.getMessage() == null) {
                    Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                    return false;
                }
                throw e10;
            }
            Log.e("FirebaseMessaging", "Topic operation failed: " + e10.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Runnable runnable, long j10) {
        this.f14175f.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void m(boolean z10) {
        this.f14176g = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        if (f()) {
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (g() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean p() throws java.io.IOException {
        /*
            r2 = this;
        L0:
            monitor-enter(r2)
            com.google.firebase.messaging.t0 r0 = r2.f14177h     // Catch: java.lang.Throwable -> L2b
            com.google.firebase.messaging.s0 r0 = r0.b()     // Catch: java.lang.Throwable -> L2b
            if (r0 != 0) goto L19
            boolean r0 = g()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L16
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L2b
        L16:
            r0 = 1
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            return r0
        L19:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r2.k(r0)
            if (r1 != 0) goto L22
            r0 = 0
            return r0
        L22:
            com.google.firebase.messaging.t0 r1 = r2.f14177h
            r1.d(r0)
            r2.j(r0)
            goto L0
        L2b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.v0.p():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(long j10) {
        l(new w0(this, this.f14170a, this.f14171b, Math.min(Math.max(30L, 2 * j10), f14169i)), j10);
        m(true);
    }
}
