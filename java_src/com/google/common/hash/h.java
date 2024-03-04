package com.google.common.hash;

import java.io.Serializable;
import kotlin.UByte;
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f13531a = "0123456789abcdef".toCharArray();

    /* loaded from: classes2.dex */
    private static final class a extends h implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: b  reason: collision with root package name */
        final byte[] f13532b;

        a(byte[] bArr) {
            this.f13532b = (byte[]) com.google.common.base.o.s(bArr);
        }

        @Override // com.google.common.hash.h
        public byte[] a() {
            return (byte[]) this.f13532b.clone();
        }

        @Override // com.google.common.hash.h
        public int b() {
            byte[] bArr = this.f13532b;
            com.google.common.base.o.B(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.f13532b;
            return ((bArr2[3] & UByte.MAX_VALUE) << 24) | (bArr2[0] & UByte.MAX_VALUE) | ((bArr2[1] & UByte.MAX_VALUE) << 8) | ((bArr2[2] & UByte.MAX_VALUE) << 16);
        }

        @Override // com.google.common.hash.h
        public long c() {
            byte[] bArr = this.f13532b;
            com.google.common.base.o.B(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return h();
        }

        @Override // com.google.common.hash.h
        public int d() {
            return this.f13532b.length * 8;
        }

        @Override // com.google.common.hash.h
        boolean e(h hVar) {
            if (this.f13532b.length != hVar.g().length) {
                return false;
            }
            int i9 = 0;
            boolean z10 = true;
            while (true) {
                byte[] bArr = this.f13532b;
                if (i9 >= bArr.length) {
                    return z10;
                }
                z10 &= bArr[i9] == hVar.g()[i9];
                i9++;
            }
        }

        @Override // com.google.common.hash.h
        byte[] g() {
            return this.f13532b;
        }

        public long h() {
            long j10 = this.f13532b[0] & UByte.MAX_VALUE;
            for (int i9 = 1; i9 < Math.min(this.f13532b.length, 8); i9++) {
                j10 |= (this.f13532b[i9] & 255) << (i9 * 8);
            }
            return j10;
        }
    }

    h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h f(byte[] bArr) {
        return new a(bArr);
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract long c();

    public abstract int d();

    abstract boolean e(h hVar);

    public final boolean equals(Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            return d() == hVar.d() && e(hVar);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] g() {
        return a();
    }

    public final int hashCode() {
        if (d() >= 32) {
            return b();
        }
        byte[] g10 = g();
        int i9 = g10[0] & UByte.MAX_VALUE;
        for (int i10 = 1; i10 < g10.length; i10++) {
            i9 |= (g10[i10] & UByte.MAX_VALUE) << (i10 * 8);
        }
        return i9;
    }

    public final String toString() {
        byte[] g10 = g();
        StringBuilder sb2 = new StringBuilder(g10.length * 2);
        for (byte b10 : g10) {
            char[] cArr = f13531a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
