package com.tencent.bugly.proguard;
/* loaded from: classes4.dex */
public final class aj extends k implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private static byte[] f30456d;

    /* renamed from: a  reason: collision with root package name */
    private byte f30457a;

    /* renamed from: b  reason: collision with root package name */
    private String f30458b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f30459c;

    public aj() {
        this.f30457a = (byte) 0;
        this.f30458b = "";
        this.f30459c = null;
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(j jVar) {
        jVar.a(this.f30457a, 0);
        jVar.a(this.f30458b, 1);
        byte[] bArr = this.f30459c;
        if (bArr != null) {
            jVar.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(StringBuilder sb2, int i9) {
    }

    public aj(byte b10, String str, byte[] bArr) {
        this.f30457a = b10;
        this.f30458b = str;
        this.f30459c = bArr;
    }

    @Override // com.tencent.bugly.proguard.k
    public final void a(i iVar) {
        this.f30457a = iVar.a(this.f30457a, 0, true);
        this.f30458b = iVar.b(1, true);
        if (f30456d == null) {
            f30456d = r0;
            byte[] bArr = {0};
        }
        this.f30459c = iVar.c(2, false);
    }
}
