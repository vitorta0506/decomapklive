package com.tencent.bugly.proguard;
/* loaded from: classes4.dex */
public final class ao extends k implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f30524a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f30525b = "";

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30524a, 0);
        jVar.a(this.f30525b, 1);
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30524a = iVar.b(0, true);
        this.f30525b = iVar.b(1, true);
    }
}
