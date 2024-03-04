package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p extends com.google.common.hash.a implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    static final i f13535b = new p(0);

    /* renamed from: c  reason: collision with root package name */
    static final i f13536c = new p(k.f13533a);
    private static final long serialVersionUID = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f13537a;

    /* loaded from: classes2.dex */
    private static final class a extends c {

        /* renamed from: d  reason: collision with root package name */
        private long f13538d;

        /* renamed from: e  reason: collision with root package name */
        private long f13539e;

        /* renamed from: f  reason: collision with root package name */
        private int f13540f;

        a(int i9) {
            super(16);
            long j10 = i9;
            this.f13538d = j10;
            this.f13539e = j10;
            this.f13540f = 0;
        }

        private void g(long j10, long j11) {
            long i9 = i(j10) ^ this.f13538d;
            this.f13538d = i9;
            long rotateLeft = Long.rotateLeft(i9, 27);
            long j12 = this.f13539e;
            this.f13538d = ((rotateLeft + j12) * 5) + 1390208809;
            long j13 = j(j11) ^ j12;
            this.f13539e = j13;
            this.f13539e = ((Long.rotateLeft(j13, 31) + this.f13538d) * 5) + 944331445;
        }

        private static long h(long j10) {
            long j11 = (j10 ^ (j10 >>> 33)) * (-49064778989728563L);
            long j12 = (j11 ^ (j11 >>> 33)) * (-4265267296055464877L);
            return j12 ^ (j12 >>> 33);
        }

        private static long i(long j10) {
            return Long.rotateLeft(j10 * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        private static long j(long j10) {
            return Long.rotateLeft(j10 * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override // com.google.common.hash.c
        protected h c() {
            long j10 = this.f13538d;
            int i9 = this.f13540f;
            long j11 = j10 ^ i9;
            long j12 = this.f13539e ^ i9;
            long j13 = j11 + j12;
            this.f13538d = j13;
            this.f13539e = j12 + j13;
            this.f13538d = h(j13);
            long h10 = h(this.f13539e);
            long j14 = this.f13538d + h10;
            this.f13538d = j14;
            this.f13539e = h10 + j14;
            return h.f(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f13538d).putLong(this.f13539e).array());
        }

        @Override // com.google.common.hash.c
        protected void e(ByteBuffer byteBuffer) {
            g(byteBuffer.getLong(), byteBuffer.getLong());
            this.f13540f += 16;
        }

        @Override // com.google.common.hash.c
        protected void f(ByteBuffer byteBuffer) {
            long j10;
            long j11;
            long j12;
            long j13;
            long j14;
            long j15;
            long b10;
            long j16;
            long j17;
            long j18;
            long j19;
            long j20;
            long j21;
            long j22;
            this.f13540f += byteBuffer.remaining();
            long j23 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j10 = 0;
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 2:
                    j11 = 0;
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 3:
                    j12 = 0;
                    j11 = j12 ^ (com.google.common.primitives.k.b(byteBuffer.get(2)) << 16);
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 4:
                    j13 = 0;
                    j12 = j13 ^ (com.google.common.primitives.k.b(byteBuffer.get(3)) << 24);
                    j11 = j12 ^ (com.google.common.primitives.k.b(byteBuffer.get(2)) << 16);
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 5:
                    j14 = 0;
                    j13 = j14 ^ (com.google.common.primitives.k.b(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.k.b(byteBuffer.get(3)) << 24);
                    j11 = j12 ^ (com.google.common.primitives.k.b(byteBuffer.get(2)) << 16);
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 6:
                    j15 = 0;
                    j14 = j15 ^ (com.google.common.primitives.k.b(byteBuffer.get(5)) << 40);
                    j13 = j14 ^ (com.google.common.primitives.k.b(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.k.b(byteBuffer.get(3)) << 24);
                    j11 = j12 ^ (com.google.common.primitives.k.b(byteBuffer.get(2)) << 16);
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 7:
                    j15 = (com.google.common.primitives.k.b(byteBuffer.get(6)) << 48) ^ 0;
                    j14 = j15 ^ (com.google.common.primitives.k.b(byteBuffer.get(5)) << 40);
                    j13 = j14 ^ (com.google.common.primitives.k.b(byteBuffer.get(4)) << 32);
                    j12 = j13 ^ (com.google.common.primitives.k.b(byteBuffer.get(3)) << 24);
                    j11 = j12 ^ (com.google.common.primitives.k.b(byteBuffer.get(2)) << 16);
                    j10 = j11 ^ (com.google.common.primitives.k.b(byteBuffer.get(1)) << 8);
                    b10 = com.google.common.primitives.k.b(byteBuffer.get(0)) ^ j10;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 8:
                    j16 = 0;
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 9:
                    j17 = 0;
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 10:
                    j18 = 0;
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 11:
                    j19 = 0;
                    j18 = j19 ^ (com.google.common.primitives.k.b(byteBuffer.get(10)) << 16);
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 12:
                    j20 = 0;
                    j19 = j20 ^ (com.google.common.primitives.k.b(byteBuffer.get(11)) << 24);
                    j18 = j19 ^ (com.google.common.primitives.k.b(byteBuffer.get(10)) << 16);
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 13:
                    j21 = 0;
                    j20 = j21 ^ (com.google.common.primitives.k.b(byteBuffer.get(12)) << 32);
                    j19 = j20 ^ (com.google.common.primitives.k.b(byteBuffer.get(11)) << 24);
                    j18 = j19 ^ (com.google.common.primitives.k.b(byteBuffer.get(10)) << 16);
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 14:
                    j22 = 0;
                    j21 = j22 ^ (com.google.common.primitives.k.b(byteBuffer.get(13)) << 40);
                    j20 = j21 ^ (com.google.common.primitives.k.b(byteBuffer.get(12)) << 32);
                    j19 = j20 ^ (com.google.common.primitives.k.b(byteBuffer.get(11)) << 24);
                    j18 = j19 ^ (com.google.common.primitives.k.b(byteBuffer.get(10)) << 16);
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                case 15:
                    j22 = (com.google.common.primitives.k.b(byteBuffer.get(14)) << 48) ^ 0;
                    j21 = j22 ^ (com.google.common.primitives.k.b(byteBuffer.get(13)) << 40);
                    j20 = j21 ^ (com.google.common.primitives.k.b(byteBuffer.get(12)) << 32);
                    j19 = j20 ^ (com.google.common.primitives.k.b(byteBuffer.get(11)) << 24);
                    j18 = j19 ^ (com.google.common.primitives.k.b(byteBuffer.get(10)) << 16);
                    j17 = j18 ^ (com.google.common.primitives.k.b(byteBuffer.get(9)) << 8);
                    j16 = j17 ^ com.google.common.primitives.k.b(byteBuffer.get(8));
                    b10 = byteBuffer.getLong() ^ 0;
                    j23 = j16;
                    this.f13538d ^= i(b10);
                    this.f13539e ^= j(j23);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    p(int i9) {
        this.f13537a = i9;
    }

    @Override // com.google.common.hash.i
    public j a() {
        return new a(this.f13537a);
    }

    public boolean equals(Object obj) {
        return (obj instanceof p) && this.f13537a == ((p) obj).f13537a;
    }

    public int hashCode() {
        return p.class.hashCode() ^ this.f13537a;
    }

    public String toString() {
        int i9 = this.f13537a;
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Hashing.murmur3_128(");
        sb2.append(i9);
        sb2.append(")");
        return sb2.toString();
    }
}
