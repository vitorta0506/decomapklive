package com.xiaomi.push;
/* loaded from: classes5.dex */
public class k2 {

    /* renamed from: a  reason: collision with root package name */
    private final p2 f36946a;

    /* renamed from: b  reason: collision with root package name */
    private final u2 f36947b;

    public k2(er erVar) {
        u2 u2Var = new u2();
        this.f36947b = u2Var;
        this.f36946a = erVar.a(u2Var);
    }

    public void a(ef efVar, byte[] bArr) {
        try {
            this.f36947b.h(bArr);
            efVar.a(this.f36946a);
        } finally {
            this.f36946a.H();
        }
    }
}
