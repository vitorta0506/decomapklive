package com.google.firebase.installations;
/* loaded from: classes2.dex */
class e implements g {

    /* renamed from: a  reason: collision with root package name */
    final t4.h<String> f13910a;

    public e(t4.h<String> hVar) {
        this.f13910a = hVar;
    }

    @Override // com.google.firebase.installations.g
    public boolean a(Exception exc) {
        return false;
    }

    @Override // com.google.firebase.installations.g
    public boolean b(com.google.firebase.installations.local.b bVar) {
        if (bVar.l() || bVar.k() || bVar.i()) {
            this.f13910a.e(bVar.d());
            return true;
        }
        return false;
    }
}
