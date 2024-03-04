package com.google.android.play.core.assetpacks;

import android.content.Context;
import java.io.File;
/* loaded from: classes2.dex */
public final class h2 implements com.google.android.play.core.internal.k1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10266a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10267b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10268c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10269d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10270e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10271f;

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10272g;

    public h2(com.google.android.play.core.internal.k1 k1Var, com.google.android.play.core.internal.k1 k1Var2, com.google.android.play.core.internal.k1 k1Var3, com.google.android.play.core.internal.k1 k1Var4, com.google.android.play.core.internal.k1 k1Var5, com.google.android.play.core.internal.k1 k1Var6, com.google.android.play.core.internal.k1 k1Var7) {
        this.f10266a = k1Var;
        this.f10267b = k1Var2;
        this.f10268c = k1Var3;
        this.f10269d = k1Var4;
        this.f10270e = k1Var5;
        this.f10271f = k1Var6;
        this.f10272g = k1Var7;
    }

    @Override // com.google.android.play.core.internal.k1
    public final /* bridge */ /* synthetic */ Object zza() {
        File externalFilesDir;
        String str = (String) this.f10266a.zza();
        Object zza = this.f10267b.zza();
        Object zza2 = this.f10268c.zza();
        Context a10 = ((y3) this.f10269d).a();
        Object zza3 = this.f10270e.zza();
        com.google.android.play.core.internal.g1 a11 = com.google.android.play.core.internal.i1.a(this.f10271f);
        y yVar = (y) zza;
        j1 j1Var = (j1) zza2;
        v2 v2Var = (v2) zza3;
        t2 t2Var = (t2) this.f10272g.zza();
        if (str != null) {
            externalFilesDir = new File(a10.getExternalFilesDir(null), str);
        } else {
            externalFilesDir = a10.getExternalFilesDir(null);
        }
        return new g2(externalFilesDir, yVar, j1Var, a10, v2Var, a11, t2Var);
    }
}
