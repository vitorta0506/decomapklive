package com.google.android.play.core.assetpacks;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class q extends k {

    /* renamed from: c  reason: collision with root package name */
    final int f10373c;

    /* renamed from: d  reason: collision with root package name */
    final String f10374d;

    /* renamed from: e  reason: collision with root package name */
    final int f10375e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ s f10376f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(s sVar, d5.o oVar, int i9, String str, int i10) {
        super(sVar, oVar);
        this.f10376f = sVar;
        this.f10373c = i9;
        this.f10374d = str;
        this.f10375e = i10;
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.y1
    public final void a(Bundle bundle) {
        com.google.android.play.core.internal.s sVar;
        com.google.android.play.core.internal.g gVar;
        sVar = this.f10376f.f10414d;
        sVar.s(this.f10310a);
        int i9 = bundle.getInt("error_code");
        gVar = s.f10409g;
        gVar.b("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(i9));
        int i10 = this.f10375e;
        if (i10 > 0) {
            this.f10376f.k(this.f10373c, this.f10374d, i10 - 1);
        }
    }
}
