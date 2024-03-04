package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
/* loaded from: classes2.dex */
public final class w3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f9933a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9934b;

    /* renamed from: c  reason: collision with root package name */
    private String f9935c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ x3 f9936d;

    public w3(x3 x3Var, String str, String str2) {
        this.f9936d = x3Var;
        com.google.android.gms.common.internal.p.f(str);
        this.f9933a = str;
    }

    @WorkerThread
    public final String a() {
        if (!this.f9934b) {
            this.f9934b = true;
            this.f9935c = this.f9936d.o().getString(this.f9933a, null);
        }
        return this.f9935c;
    }

    @WorkerThread
    public final void b(String str) {
        SharedPreferences.Editor edit = this.f9936d.o().edit();
        edit.putString(this.f9933a, str);
        edit.apply();
        this.f9935c = str;
    }
}
