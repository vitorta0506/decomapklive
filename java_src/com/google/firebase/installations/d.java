package com.google.firebase.installations;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class d implements g {

    /* renamed from: a  reason: collision with root package name */
    private final h f13908a;

    /* renamed from: b  reason: collision with root package name */
    private final t4.h<f> f13909b;

    public d(h hVar, t4.h<f> hVar2) {
        this.f13908a = hVar;
        this.f13909b = hVar2;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        this.f13909b.d(exc);
        return true;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (!bVar.k() || this.f13908a.f(bVar)) {
            return false;
        }
        this.f13909b.c(f.a().b(bVar.b()).d(bVar.c()).c(bVar.h()).a());
        return true;
    }
}
