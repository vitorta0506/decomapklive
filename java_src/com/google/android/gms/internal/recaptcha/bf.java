package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class bf {

    /* renamed from: d  reason: collision with root package name */
    private static volatile int f8533d = 100;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f8534e = 0;

    /* renamed from: a  reason: collision with root package name */
    int f8535a;

    /* renamed from: b  reason: collision with root package name */
    final int f8536b = f8533d;

    /* renamed from: c  reason: collision with root package name */
    cf f8537c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bf(xe xeVar) {
    }

    public static int e(int i9) {
        return (-(i9 & 1)) ^ (i9 >>> 1);
    }

    public static long f(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static bf g(byte[] bArr, int i9, int i10, boolean z10) {
        ze zeVar = new ze(bArr, 0, 0, false, null);
        try {
            zeVar.k(0);
            return zeVar;
        } catch (zzrr e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract void A(int i9) throws zzrr;

    public abstract void a(int i9);

    public abstract boolean b() throws IOException;

    public abstract boolean c() throws IOException;

    public abstract boolean d(int i9) throws IOException;

    public abstract double h() throws IOException;

    public abstract float i() throws IOException;

    public abstract int j();

    public abstract int k(int i9) throws zzrr;

    public abstract int l() throws IOException;

    public abstract int m() throws IOException;

    public abstract int n() throws IOException;

    public abstract int o() throws IOException;

    public abstract int p() throws IOException;

    public abstract int q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract long t() throws IOException;

    public abstract long u() throws IOException;

    public abstract long v() throws IOException;

    public abstract long w() throws IOException;

    public abstract zzpy x() throws IOException;

    public abstract String y() throws IOException;

    public abstract String z() throws IOException;
}
