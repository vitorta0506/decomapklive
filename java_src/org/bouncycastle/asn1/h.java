package org.bouncycastle.asn1;

import java.io.IOException;
/* loaded from: classes7.dex */
public abstract class h extends r {

    /* renamed from: a  reason: collision with root package name */
    protected n f55930a;

    /* renamed from: b  reason: collision with root package name */
    protected k f55931b;

    /* renamed from: c  reason: collision with root package name */
    protected r f55932c;

    /* renamed from: d  reason: collision with root package name */
    protected int f55933d;

    /* renamed from: e  reason: collision with root package name */
    protected r f55934e;

    public h(f fVar) {
        int i9 = 0;
        r P = P(fVar, 0);
        if (P instanceof n) {
            this.f55930a = (n) P;
            P = P(fVar, 1);
            i9 = 1;
        }
        if (P instanceof k) {
            this.f55931b = (k) P;
            i9++;
            P = P(fVar, i9);
        }
        if (!(P instanceof y)) {
            this.f55932c = P;
            i9++;
            P = P(fVar, i9);
        }
        if (fVar.f() != i9 + 1) {
            throw new IllegalArgumentException("input vector too large");
        }
        if (!(P instanceof y)) {
            throw new IllegalArgumentException("No tagged object found in vector. Structure doesn't seem to be of type External");
        }
        y yVar = (y) P;
        S(yVar.N());
        this.f55934e = yVar.M();
    }

    public h(n nVar, k kVar, r rVar, int i9, r rVar2) {
        R(nVar);
        b0(kVar);
        Q(rVar);
        S(i9);
        a0(rVar2.f());
    }

    private r P(f fVar, int i9) {
        if (fVar.f() > i9) {
            return fVar.d(i9).f();
        }
        throw new IllegalArgumentException("too few objects in input vector");
    }

    private void Q(r rVar) {
        this.f55932c = rVar;
    }

    private void R(n nVar) {
        this.f55930a = nVar;
    }

    private void S(int i9) {
        if (i9 >= 0 && i9 <= 2) {
            this.f55933d = i9;
            return;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i9);
    }

    private void a0(r rVar) {
        this.f55934e = rVar;
    }

    private void b0(k kVar) {
        this.f55931b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new o0(this.f55930a, this.f55931b, this.f55932c, this.f55933d, this.f55934e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new k1(this.f55930a, this.f55931b, this.f55932c, this.f55933d, this.f55934e);
    }

    public r K() {
        return this.f55932c;
    }

    public n L() {
        return this.f55930a;
    }

    public int M() {
        return this.f55933d;
    }

    public r N() {
        return this.f55934e;
    }

    public k O() {
        return this.f55931b;
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        n nVar = this.f55930a;
        int hashCode = nVar != null ? nVar.hashCode() : 0;
        k kVar = this.f55931b;
        if (kVar != null) {
            hashCode ^= kVar.hashCode();
        }
        r rVar = this.f55932c;
        if (rVar != null) {
            hashCode ^= rVar.hashCode();
        }
        return hashCode ^ this.f55934e.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        r rVar2;
        k kVar;
        n nVar;
        if (rVar instanceof h) {
            if (this == rVar) {
                return true;
            }
            h hVar = (h) rVar;
            n nVar2 = this.f55930a;
            if (nVar2 == null || ((nVar = hVar.f55930a) != null && nVar.F(nVar2))) {
                k kVar2 = this.f55931b;
                if (kVar2 == null || ((kVar = hVar.f55931b) != null && kVar.F(kVar2))) {
                    r rVar3 = this.f55932c;
                    if (rVar3 == null || ((rVar2 = hVar.f55932c) != null && rVar2.F(rVar3))) {
                        return this.f55934e.F(hVar.f55934e);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        return getEncoded().length;
    }
}
