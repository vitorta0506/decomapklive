package com.google.android.play.core.assetpacks;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes2.dex */
public final class w3 implements com.google.android.play.core.internal.k1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10475a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10476b;

    public w3(com.google.android.play.core.internal.k1 k1Var, com.google.android.play.core.internal.k1 k1Var2) {
        this.f10475a = k1Var;
        this.f10476b = k1Var2;
    }

    @Override // com.google.android.play.core.internal.k1
    public final /* bridge */ /* synthetic */ Object zza() {
        Object zza = this.f10475a.zza();
        Context a10 = ((y3) this.f10476b).a();
        p3 p3Var = (p3) zza;
        com.google.android.play.core.internal.x0.a(a10.getPackageManager(), new ComponentName(a10.getPackageName(), "com.google.android.play.core.assetpacks.AssetPackExtractionService"), 4);
        com.google.android.play.core.internal.x0.a(a10.getPackageManager(), new ComponentName(a10.getPackageName(), "com.google.android.play.core.assetpacks.ExtractionForegroundService"), 4);
        com.google.android.play.core.internal.j1.a(p3Var);
        return p3Var;
    }
}
