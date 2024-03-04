package com.google.android.gms.internal.recaptcha;

import java.math.BigInteger;
import java.util.List;
/* loaded from: classes2.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    private xj f9210a = xj.z();

    /* renamed from: b  reason: collision with root package name */
    private yj f9211b = zj.t();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final yj a(String str) {
        if (this.f9210a.x().zzd() != 0) {
            yj yjVar = this.f9211b;
            w9 b10 = z9.b();
            byte[][] bArr = {this.f9210a.x().zzs(), str.getBytes()};
            int i9 = 0;
            for (int i10 = 0; i10 < 2; i10++) {
                i9 += bArr[i10].length;
            }
            byte[] bArr2 = new byte[i9];
            int i11 = 0;
            for (int i12 = 0; i12 < 2; i12++) {
                byte[] bArr3 = bArr[i12];
                int length = bArr3.length;
                System.arraycopy(bArr3, 0, bArr2, i11, length);
                i11 += length;
            }
            yjVar.o(zzpy.zzn(b10.a(bArr2).e()));
            return yjVar;
        }
        return this.f9211b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final yj b(int i9) {
        yj yjVar = this.f9211b;
        yjVar.p((this.f9210a.t() * i9) + this.f9210a.u());
        return yjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final yj c(zzkn<String> zzknVar) {
        List<zzpy> A = this.f9210a.A();
        byte[] bArr = new byte[(A.size() / 8) + (A.size() % 8 == 0 ? 0 : 1)];
        for (int i9 = 0; i9 < A.size(); i9++) {
            if (zzknVar.contains(f1.b(A.get(i9).zzs()))) {
                int i10 = i9 / 8;
                bArr[i10] = (byte) (bArr[i10] | ((byte) (1 << (i9 % 8))));
            }
        }
        yj yjVar = this.f9211b;
        yjVar.q(zzpy.zzn(bArr));
        return yjVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final yj d(int i9) {
        if (this.f9210a.w() != 0) {
            BigInteger valueOf = BigInteger.valueOf(i9);
            BigInteger valueOf2 = BigInteger.valueOf(this.f9210a.v());
            BigInteger valueOf3 = BigInteger.valueOf(this.f9210a.w());
            yj yjVar = this.f9211b;
            yjVar.r(valueOf.modPow(valueOf2, valueOf3).intValue());
            return yjVar;
        }
        return this.f9211b;
    }

    public final zj e() {
        return this.f9211b.l();
    }

    public final void f(xj xjVar) {
        this.f9210a = xjVar;
        this.f9211b = zj.t();
    }
}
