package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class k3 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final String f9565a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final String f9566b;

    /* renamed from: c  reason: collision with root package name */
    public final long f9567c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f9568d;

    public k3(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j10) {
        this.f9565a = str;
        this.f9566b = str2;
        this.f9568d = bundle;
        this.f9567c = j10;
    }

    public static k3 b(zzaw zzawVar) {
        return new k3(zzawVar.zza, zzawVar.zzc, zzawVar.zzb.L(), zzawVar.zzd);
    }

    public final zzaw a() {
        return new zzaw(this.f9565a, new zzau(new Bundle(this.f9568d)), this.f9566b, this.f9567c);
    }

    public final String toString() {
        String str = this.f9566b;
        String str2 = this.f9565a;
        String obj = this.f9568d.toString();
        return "origin=" + str + ",name=" + str2 + ",params=" + obj;
    }
}
