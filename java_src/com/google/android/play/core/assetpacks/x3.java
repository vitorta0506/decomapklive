package com.google.android.play.core.assetpacks;

import android.content.Context;
/* loaded from: classes2.dex */
public final class x3 implements com.google.android.play.core.internal.k1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10487a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10488b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.internal.k1 f10489c;

    public x3(com.google.android.play.core.internal.k1 k1Var, com.google.android.play.core.internal.k1 k1Var2, com.google.android.play.core.internal.k1 k1Var3) {
        this.f10487a = k1Var;
        this.f10488b = k1Var2;
        this.f10489c = k1Var3;
    }

    @Override // com.google.android.play.core.internal.k1
    public final /* bridge */ /* synthetic */ Object zza() {
        c4 c4Var;
        Context a10 = ((y3) this.f10487a).a();
        com.google.android.play.core.internal.g1 a11 = com.google.android.play.core.internal.i1.a(this.f10488b);
        com.google.android.play.core.internal.g1 a12 = com.google.android.play.core.internal.i1.a(this.f10489c);
        if (t3.b(a10) == null) {
            c4Var = (c4) a11.zza();
        } else {
            c4Var = (c4) a12.zza();
        }
        com.google.android.play.core.internal.j1.a(c4Var);
        return c4Var;
    }
}
