package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.measurement.zzcl;
/* loaded from: classes2.dex */
public final class l5 {

    /* renamed from: a  reason: collision with root package name */
    final Context f9601a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    String f9602b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    String f9603c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    String f9604d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    Boolean f9605e;

    /* renamed from: f  reason: collision with root package name */
    long f9606f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    zzcl f9607g;

    /* renamed from: h  reason: collision with root package name */
    boolean f9608h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    final Long f9609i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    String f9610j;

    public l5(Context context, @Nullable zzcl zzclVar, @Nullable Long l10) {
        this.f9608h = true;
        com.google.android.gms.common.internal.p.j(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.p.j(applicationContext);
        this.f9601a = applicationContext;
        this.f9609i = l10;
        if (zzclVar != null) {
            this.f9607g = zzclVar;
            this.f9602b = zzclVar.zzf;
            this.f9603c = zzclVar.zze;
            this.f9604d = zzclVar.zzd;
            this.f9608h = zzclVar.zzc;
            this.f9606f = zzclVar.zzb;
            this.f9610j = zzclVar.zzh;
            Bundle bundle = zzclVar.zzg;
            if (bundle != null) {
                this.f9605e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
