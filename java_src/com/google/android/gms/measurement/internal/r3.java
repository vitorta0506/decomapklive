package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class r3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9794a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9795b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9796c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9797d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ x3 f9798e;

    public r3(x3 x3Var, String str, boolean z10) {
        this.f9798e = x3Var;
        com.google.android.gms.common.internal.p.f(str);
        this.f9794a = str;
        this.f9795b = z10;
    }

    @WorkerThread
    public final void a(boolean z10) {
        SharedPreferences.Editor edit = this.f9798e.o().edit();
        edit.putBoolean(this.f9794a, z10);
        edit.apply();
        this.f9797d = z10;
    }

    @WorkerThread
    public final boolean b() {
        if (!this.f9796c) {
            this.f9796c = true;
            this.f9797d = this.f9798e.o().getBoolean(this.f9794a, this.f9795b);
        }
        return this.f9797d;
    }
}
