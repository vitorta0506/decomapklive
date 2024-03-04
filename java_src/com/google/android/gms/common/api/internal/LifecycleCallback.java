package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class LifecycleCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    protected final v3.e f7503a;

    /* JADX INFO: Access modifiers changed from: protected */
    public LifecycleCallback(@NonNull v3.e eVar) {
        this.f7503a = eVar;
    }

    @NonNull
    public static v3.e c(@NonNull Activity activity) {
        return d(new v3.d(activity));
    }

    @NonNull
    protected static v3.e d(@NonNull v3.d dVar) {
        if (dVar.d()) {
            return zzd.R1(dVar.b());
        }
        if (dVar.c()) {
            return zzb.c(dVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static v3.e getChimeraLifecycleFragmentImpl(v3.d dVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @MainThread
    public void a(@NonNull String str, @NonNull FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @NonNull String[] strArr) {
    }

    @NonNull
    public Activity b() {
        Activity W0 = this.f7503a.W0();
        com.google.android.gms.common.internal.p.j(W0);
        return W0;
    }

    @MainThread
    public void e(int i9, int i10, @NonNull Intent intent) {
    }

    @MainThread
    public void f(@Nullable Bundle bundle) {
    }

    @MainThread
    public void g() {
    }

    @MainThread
    public void h() {
    }

    @MainThread
    public void i(@NonNull Bundle bundle) {
    }

    @MainThread
    public void j() {
    }

    @MainThread
    public void k() {
    }
}
