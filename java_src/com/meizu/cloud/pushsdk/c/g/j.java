package com.meizu.cloud.pushsdk.c.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f28497a;

    /* renamed from: b  reason: collision with root package name */
    int f28498b;

    /* renamed from: c  reason: collision with root package name */
    int f28499c;

    /* renamed from: d  reason: collision with root package name */
    boolean f28500d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f28501e;

    /* renamed from: f  reason: collision with root package name */
    j f28502f;

    /* renamed from: g  reason: collision with root package name */
    j f28503g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this.f28497a = new byte[2048];
        this.f28501e = true;
        this.f28500d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(j jVar) {
        this(jVar.f28497a, jVar.f28498b, jVar.f28499c);
    }

    j(byte[] bArr, int i9, int i10) {
        this.f28497a = bArr;
        this.f28498b = i9;
        this.f28499c = i10;
        this.f28501e = false;
        this.f28500d = true;
    }

    public j a() {
        j jVar = this.f28502f;
        j jVar2 = jVar != this ? jVar : null;
        j jVar3 = this.f28503g;
        jVar3.f28502f = jVar;
        this.f28502f.f28503g = jVar3;
        this.f28502f = null;
        this.f28503g = null;
        return jVar2;
    }

    public j a(int i9) {
        if (i9 <= 0 || i9 > this.f28499c - this.f28498b) {
            throw new IllegalArgumentException();
        }
        j jVar = new j(this);
        jVar.f28499c = jVar.f28498b + i9;
        this.f28498b += i9;
        this.f28503g.a(jVar);
        return jVar;
    }

    public j a(j jVar) {
        jVar.f28503g = this;
        jVar.f28502f = this.f28502f;
        this.f28502f.f28503g = jVar;
        this.f28502f = jVar;
        return jVar;
    }

    public void a(j jVar, int i9) {
        if (!jVar.f28501e) {
            throw new IllegalArgumentException();
        }
        int i10 = jVar.f28499c;
        if (i10 + i9 > 2048) {
            if (jVar.f28500d) {
                throw new IllegalArgumentException();
            }
            int i11 = jVar.f28498b;
            if ((i10 + i9) - i11 > 2048) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = jVar.f28497a;
            System.arraycopy(bArr, i11, bArr, 0, i10 - i11);
            jVar.f28499c -= jVar.f28498b;
            jVar.f28498b = 0;
        }
        System.arraycopy(this.f28497a, this.f28498b, jVar.f28497a, jVar.f28499c, i9);
        jVar.f28499c += i9;
        this.f28498b += i9;
    }

    public void b() {
        j jVar = this.f28503g;
        if (jVar == this) {
            throw new IllegalStateException();
        }
        if (jVar.f28501e) {
            int i9 = this.f28499c - this.f28498b;
            if (i9 > (2048 - jVar.f28499c) + (jVar.f28500d ? 0 : jVar.f28498b)) {
                return;
            }
            a(jVar, i9);
            a();
            k.a(this);
        }
    }
}
