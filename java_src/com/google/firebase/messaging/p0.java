package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f14100a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14101b;

    /* renamed from: c  reason: collision with root package name */
    private final String f14102c;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f14104e;
    @GuardedBy("internalQueue")
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final ArrayDeque<String> f14103d = new ArrayDeque<>();
    @GuardedBy("internalQueue")

    /* renamed from: f  reason: collision with root package name */
    private boolean f14105f = false;

    private p0(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f14100a = sharedPreferences;
        this.f14101b = str;
        this.f14102c = str2;
        this.f14104e = executor;
    }

    @GuardedBy("internalQueue")
    private boolean b(boolean z10) {
        if (z10 && !this.f14105f) {
            i();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static p0 c(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        p0 p0Var = new p0(sharedPreferences, str, str2, executor);
        p0Var.d();
        return p0Var;
    }

    @WorkerThread
    private void d() {
        synchronized (this.f14103d) {
            this.f14103d.clear();
            String string = this.f14100a.getString(this.f14101b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.f14102c)) {
                String[] split = string.split(this.f14102c, -1);
                if (split.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f14103d.add(str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public void h() {
        synchronized (this.f14103d) {
            this.f14100a.edit().putString(this.f14101b, g()).commit();
        }
    }

    private void i() {
        this.f14104e.execute(new Runnable() { // from class: com.google.firebase.messaging.o0
            @Override // java.lang.Runnable
            public final void run() {
                p0.this.h();
            }
        });
    }

    @Nullable
    public String e() {
        String peek;
        synchronized (this.f14103d) {
            peek = this.f14103d.peek();
        }
        return peek;
    }

    public boolean f(@Nullable Object obj) {
        boolean b10;
        synchronized (this.f14103d) {
            b10 = b(this.f14103d.remove(obj));
        }
        return b10;
    }

    @NonNull
    @GuardedBy("internalQueue")
    public String g() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it = this.f14103d.iterator();
        while (it.hasNext()) {
            sb2.append(it.next());
            sb2.append(this.f14102c);
        }
        return sb2.toString();
    }
}
