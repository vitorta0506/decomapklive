package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
/* loaded from: classes2.dex */
final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ n f7571a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(n nVar) {
        this.f7571a = nVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.f fVar;
        a.f fVar2;
        o oVar = this.f7571a.f7572a;
        fVar = oVar.f7574b;
        fVar2 = oVar.f7574b;
        fVar.b(fVar2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
