package com.tencent.bugly.proguard;
/* loaded from: classes4.dex */
public final class ah extends k implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f30448a = "";

    /* renamed from: d  reason: collision with root package name */
    private String f30451d = "";

    /* renamed from: b  reason: collision with root package name */
    public String f30449b = "";

    /* renamed from: e  reason: collision with root package name */
    private String f30452e = "";

    /* renamed from: c  reason: collision with root package name */
    public String f30450c = "";

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30448a, 0);
        String str = this.f30451d;
        if (str != null) {
            jVar.a(str, 1);
        }
        String str2 = this.f30449b;
        if (str2 != null) {
            jVar.a(str2, 2);
        }
        String str3 = this.f30452e;
        if (str3 != null) {
            jVar.a(str3, 3);
        }
        String str4 = this.f30450c;
        if (str4 != null) {
            jVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30448a = iVar.b(0, true);
        this.f30451d = iVar.b(1, false);
        this.f30449b = iVar.b(2, false);
        this.f30452e = iVar.b(3, false);
        this.f30450c = iVar.b(4, false);
    }
}
