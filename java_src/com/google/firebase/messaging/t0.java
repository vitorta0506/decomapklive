package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t0 {
    @GuardedBy("TopicsStore.class")

    /* renamed from: d  reason: collision with root package name */
    private static WeakReference<t0> f14156d;

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f14157a;

    /* renamed from: b  reason: collision with root package name */
    private p0 f14158b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f14159c;

    private t0(SharedPreferences sharedPreferences, Executor executor) {
        this.f14159c = executor;
        this.f14157a = sharedPreferences;
    }

    @WorkerThread
    public static synchronized t0 a(Context context, Executor executor) {
        t0 t0Var;
        synchronized (t0.class) {
            WeakReference<t0> weakReference = f14156d;
            t0Var = weakReference != null ? weakReference.get() : null;
            if (t0Var == null) {
                t0Var = new t0(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                t0Var.c();
                f14156d = new WeakReference<>(t0Var);
            }
        }
        return t0Var;
    }

    @WorkerThread
    private synchronized void c() {
        this.f14158b = p0.c(this.f14157a, "topic_operation_queue", ",", this.f14159c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public synchronized s0 b() {
        return s0.a(this.f14158b.e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean d(s0 s0Var) {
        return this.f14158b.f(s0Var.e());
    }
}
