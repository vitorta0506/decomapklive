package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static int f7735a = 4225;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f7736b = new Object();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static q1 f7737c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    static HandlerThread f7738d = null;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f7739e = false;

    public static int a() {
        return f7735a;
    }

    @NonNull
    public static g b(@NonNull Context context) {
        Looper mainLooper;
        synchronized (f7736b) {
            if (f7737c == null) {
                Context applicationContext = context.getApplicationContext();
                if (f7739e) {
                    mainLooper = c().getLooper();
                } else {
                    mainLooper = context.getMainLooper();
                }
                f7737c = new q1(applicationContext, mainLooper);
            }
        }
        return f7737c;
    }

    @NonNull
    public static HandlerThread c() {
        synchronized (f7736b) {
            HandlerThread handlerThread = f7738d;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            f7738d = handlerThread2;
            handlerThread2.start();
            return f7738d;
        }
    }

    protected abstract void d(m1 m1Var, ServiceConnection serviceConnection, String str);

    public final void e(@NonNull String str, @NonNull String str2, int i9, @NonNull ServiceConnection serviceConnection, @NonNull String str3, boolean z10) {
        d(new m1(str, str2, i9, z10), serviceConnection, str3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean f(m1 m1Var, ServiceConnection serviceConnection, String str, @Nullable Executor executor);
}
