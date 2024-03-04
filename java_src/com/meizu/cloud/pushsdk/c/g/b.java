package com.meizu.cloud.pushsdk.c.g;

import androidx.annotation.NonNull;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.UByte;
import okhttp3.internal.connection.RealConnection;
/* loaded from: classes4.dex */
public final class b implements c, d, Cloneable {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f28475c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a  reason: collision with root package name */
    j f28476a;

    /* renamed from: b  reason: collision with root package name */
    long f28477b;

    public int a(byte[] bArr, int i9, int i10) {
        o.a(bArr.length, i9, i10);
        j jVar = this.f28476a;
        if (jVar == null) {
            return -1;
        }
        int min = Math.min(i10, jVar.f28499c - jVar.f28498b);
        System.arraycopy(jVar.f28497a, jVar.f28498b, bArr, i9, min);
        int i11 = jVar.f28498b + min;
        jVar.f28498b = i11;
        this.f28477b -= min;
        if (i11 == jVar.f28499c) {
            this.f28476a = jVar.a();
            k.a(jVar);
        }
        return min;
    }

    public long a() {
        return this.f28477b;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public long a(m mVar) throws IOException {
        if (mVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long b10 = mVar.b(this, 2048L);
            if (b10 == -1) {
                return j10;
            }
            j10 += b10;
        }
    }

    public b a(int i9) {
        int i10;
        int i11;
        if (i9 >= 128) {
            if (i9 < 2048) {
                i11 = (i9 >> 6) | 192;
            } else {
                if (i9 < 65536) {
                    if (i9 >= 55296 && i9 <= 57343) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i9));
                    }
                    i10 = (i9 >> 12) | 224;
                } else if (i9 > 1114111) {
                    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i9));
                } else {
                    b((i9 >> 18) | 240);
                    i10 = ((i9 >> 12) & 63) | 128;
                }
                b(i10);
                i11 = ((i9 >> 6) & 63) | 128;
            }
            b(i11);
            i9 = (i9 & 63) | 128;
        }
        b(i9);
        return this;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    /* renamed from: a */
    public b b(e eVar) {
        if (eVar != null) {
            eVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    /* renamed from: a */
    public b b(String str) {
        return a(str, 0, str.length());
    }

    public b a(String str, int i9, int i10) {
        int i11;
        if (str != null) {
            if (i9 < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i9);
            } else if (i10 < i9) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i10 + " < " + i9);
            } else if (i10 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i10 + " > " + str.length());
            } else {
                while (i9 < i10) {
                    char charAt = str.charAt(i9);
                    if (charAt < 128) {
                        j c10 = c(1);
                        byte[] bArr = c10.f28497a;
                        int i12 = c10.f28499c - i9;
                        int min = Math.min(i10, 2048 - i12);
                        int i13 = i9 + 1;
                        bArr[i9 + i12] = (byte) charAt;
                        while (i13 < min) {
                            char charAt2 = str.charAt(i13);
                            if (charAt2 >= 128) {
                                break;
                            }
                            bArr[i13 + i12] = (byte) charAt2;
                            i13++;
                        }
                        int i14 = c10.f28499c;
                        int i15 = (i12 + i13) - i14;
                        c10.f28499c = i14 + i15;
                        this.f28477b += i15;
                        i9 = i13;
                    } else {
                        if (charAt < 2048) {
                            i11 = (charAt >> 6) | 192;
                        } else if (charAt < 55296 || charAt > 57343) {
                            b((charAt >> '\f') | 224);
                            i11 = ((charAt >> 6) & 63) | 128;
                        } else {
                            int i16 = i9 + 1;
                            char charAt3 = i16 < i10 ? str.charAt(i16) : (char) 0;
                            if (charAt > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                b(63);
                                i9 = i16;
                            } else {
                                int i17 = (((charAt & 10239) << 10) | (9215 & charAt3)) + 65536;
                                b((i17 >> 18) | 240);
                                b(((i17 >> 12) & 63) | 128);
                                b(((i17 >> 6) & 63) | 128);
                                b((i17 & 63) | 128);
                                i9 += 2;
                            }
                        }
                        b(i11);
                        b((charAt & '?') | 128);
                        i9++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    public String a(long j10, Charset charset) throws EOFException {
        o.a(this.f28477b, 0L, j10);
        if (charset != null) {
            if (j10 > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
            } else if (j10 == 0) {
                return "";
            } else {
                j jVar = this.f28476a;
                int i9 = jVar.f28498b;
                if (i9 + j10 > jVar.f28499c) {
                    return new String(a(j10), charset);
                }
                String str = new String(jVar.f28497a, i9, (int) j10, charset);
                int i10 = (int) (jVar.f28498b + j10);
                jVar.f28498b = i10;
                this.f28477b -= j10;
                if (i10 == jVar.f28499c) {
                    this.f28476a = jVar.a();
                    k.a(jVar);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l
    public void a(b bVar, long j10) {
        if (bVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (bVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        o.a(bVar.f28477b, 0L, j10);
        while (j10 > 0) {
            j jVar = bVar.f28476a;
            if (j10 < jVar.f28499c - jVar.f28498b) {
                j jVar2 = this.f28476a;
                j jVar3 = jVar2 != null ? jVar2.f28503g : null;
                if (jVar3 != null && jVar3.f28501e) {
                    if ((jVar3.f28499c + j10) - (jVar3.f28500d ? 0 : jVar3.f28498b) <= 2048) {
                        jVar.a(jVar3, (int) j10);
                        bVar.f28477b -= j10;
                        this.f28477b += j10;
                        return;
                    }
                }
                bVar.f28476a = jVar.a((int) j10);
            }
            j jVar4 = bVar.f28476a;
            long j11 = jVar4.f28499c - jVar4.f28498b;
            bVar.f28476a = jVar4.a();
            j jVar5 = this.f28476a;
            if (jVar5 == null) {
                this.f28476a = jVar4;
                jVar4.f28503g = jVar4;
                jVar4.f28502f = jVar4;
            } else {
                jVar5.f28503g.a(jVar4).b();
            }
            bVar.f28477b -= j11;
            this.f28477b += j11;
            j10 -= j11;
        }
    }

    public void a(byte[] bArr) throws EOFException {
        int i9 = 0;
        while (i9 < bArr.length) {
            int a10 = a(bArr, i9, bArr.length - i9);
            if (a10 == -1) {
                throw new EOFException();
            }
            i9 += a10;
        }
    }

    public byte[] a(long j10) throws EOFException {
        o.a(this.f28477b, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    @Override // com.meizu.cloud.pushsdk.c.g.m
    public long b(b bVar, long j10) {
        if (bVar != null) {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            long j11 = this.f28477b;
            if (j11 == 0) {
                return -1L;
            }
            if (j10 > j11) {
                j10 = j11;
            }
            bVar.a(this, j10);
            return j10;
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    public b b() {
        return this;
    }

    public b b(int i9) {
        j c10 = c(1);
        byte[] bArr = c10.f28497a;
        int i10 = c10.f28499c;
        c10.f28499c = i10 + 1;
        bArr[i10] = (byte) i9;
        this.f28477b++;
        return this;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    /* renamed from: b */
    public b c(byte[] bArr) {
        if (bArr != null) {
            return c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    /* renamed from: b */
    public b c(byte[] bArr, int i9, int i10) {
        if (bArr != null) {
            long j10 = i10;
            o.a(bArr.length, i9, j10);
            int i11 = i10 + i9;
            while (i9 < i11) {
                j c10 = c(1);
                int min = Math.min(i11 - i9, 2048 - c10.f28499c);
                System.arraycopy(bArr, i9, c10.f28497a, c10.f28499c, min);
                i9 += min;
                c10.f28499c += min;
            }
            this.f28477b += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public void b(long j10) throws EOFException {
        j jVar;
        while (j10 > 0) {
            if (this.f28476a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j10, jVar.f28499c - jVar.f28498b);
            long j11 = min;
            this.f28477b -= j11;
            j10 -= j11;
            j jVar2 = this.f28476a;
            int i9 = jVar2.f28498b + min;
            jVar2.f28498b = i9;
            if (i9 == jVar2.f28499c) {
                this.f28476a = jVar2.a();
                k.a(jVar2);
            }
        }
    }

    @Override // com.meizu.cloud.pushsdk.c.g.c
    /* renamed from: c */
    public b e(long j10) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 == 0) {
            return b(48);
        }
        boolean z10 = false;
        int i10 = 1;
        if (i9 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return b("-9223372036854775808");
            }
            z10 = true;
        }
        if (j10 >= 100000000) {
            i10 = j10 < 1000000000000L ? j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i10 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z10) {
            i10++;
        }
        j c10 = c(i10);
        byte[] bArr = c10.f28497a;
        int i11 = c10.f28499c + i10;
        while (j10 != 0) {
            i11--;
            bArr[i11] = f28475c[(int) (j10 % 10)];
            j10 /= 10;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        c10.f28499c += i10;
        this.f28477b += i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j c(int i9) {
        if (i9 < 1 || i9 > 2048) {
            throw new IllegalArgumentException();
        }
        j jVar = this.f28476a;
        if (jVar != null) {
            j jVar2 = jVar.f28503g;
            return (jVar2.f28499c + i9 > 2048 || !jVar2.f28501e) ? jVar2.a(k.a()) : jVar2;
        }
        j a10 = k.a();
        this.f28476a = a10;
        a10.f28503g = a10;
        a10.f28502f = a10;
        return a10;
    }

    public boolean c() {
        return this.f28477b == 0;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Closeable, java.lang.AutoCloseable, com.meizu.cloud.pushsdk.c.g.m
    public void close() {
    }

    public b d(long j10) {
        if (j10 == 0) {
            return b(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        j c10 = c(numberOfTrailingZeros);
        byte[] bArr = c10.f28497a;
        int i9 = c10.f28499c;
        for (int i10 = (i9 + numberOfTrailingZeros) - 1; i10 >= i9; i10--) {
            bArr[i10] = f28475c[(int) (15 & j10)];
            j10 >>>= 4;
        }
        c10.f28499c += numberOfTrailingZeros;
        this.f28477b += numberOfTrailingZeros;
        return this;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public InputStream d() {
        return new InputStream() { // from class: com.meizu.cloud.pushsdk.c.g.b.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(b.this.f28477b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                b bVar = b.this;
                if (bVar.f28477b > 0) {
                    return bVar.f() & UByte.MAX_VALUE;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(@NonNull byte[] bArr, int i9, int i10) {
                return b.this.a(bArr, i9, i10);
            }

            public String toString() {
                return b.this + ".inputStream()";
            }
        };
    }

    public long e() {
        long j10 = this.f28477b;
        if (j10 == 0) {
            return 0L;
        }
        j jVar = this.f28476a.f28503g;
        int i9 = jVar.f28499c;
        return (i9 >= 2048 || !jVar.f28501e) ? j10 : j10 - (i9 - jVar.f28498b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            long j10 = this.f28477b;
            if (j10 != bVar.f28477b) {
                return false;
            }
            long j11 = 0;
            if (j10 == 0) {
                return true;
            }
            j jVar = this.f28476a;
            j jVar2 = bVar.f28476a;
            int i9 = jVar.f28498b;
            int i10 = jVar2.f28498b;
            while (j11 < this.f28477b) {
                long min = Math.min(jVar.f28499c - i9, jVar2.f28499c - i10);
                int i11 = 0;
                while (i11 < min) {
                    int i12 = i9 + 1;
                    int i13 = i10 + 1;
                    if (jVar.f28497a[i9] != jVar2.f28497a[i10]) {
                        return false;
                    }
                    i11++;
                    i9 = i12;
                    i10 = i13;
                }
                if (i9 == jVar.f28499c) {
                    jVar = jVar.f28502f;
                    i9 = jVar.f28498b;
                }
                if (i10 == jVar2.f28499c) {
                    jVar2 = jVar2.f28502f;
                    i10 = jVar2.f28498b;
                }
                j11 += min;
            }
            return true;
        }
        return false;
    }

    public byte f() {
        long j10 = this.f28477b;
        if (j10 != 0) {
            j jVar = this.f28476a;
            int i9 = jVar.f28498b;
            int i10 = jVar.f28499c;
            int i11 = i9 + 1;
            byte b10 = jVar.f28497a[i9];
            this.f28477b = j10 - 1;
            if (i11 == i10) {
                this.f28476a = jVar.a();
                k.a(jVar);
            } else {
                jVar.f28498b = i11;
            }
            return b10;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.l, java.io.Flushable
    public void flush() {
    }

    public e g() {
        return new e(i());
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public String h() {
        try {
            return a(this.f28477b, o.f28509a);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public int hashCode() {
        j jVar = this.f28476a;
        if (jVar == null) {
            return 0;
        }
        int i9 = 1;
        do {
            int i10 = jVar.f28499c;
            for (int i11 = jVar.f28498b; i11 < i10; i11++) {
                i9 = (i9 * 31) + jVar.f28497a[i11];
            }
            jVar = jVar.f28502f;
        } while (jVar != this.f28476a);
        return i9;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public byte[] i() {
        try {
            return a(this.f28477b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public void j() {
        try {
            b(this.f28477b);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    /* renamed from: k */
    public b clone() {
        b bVar = new b();
        if (this.f28477b == 0) {
            return bVar;
        }
        j jVar = new j(this.f28476a);
        bVar.f28476a = jVar;
        jVar.f28503g = jVar;
        jVar.f28502f = jVar;
        j jVar2 = this.f28476a;
        while (true) {
            jVar2 = jVar2.f28502f;
            if (jVar2 == this.f28476a) {
                bVar.f28477b = this.f28477b;
                return bVar;
            }
            bVar.f28476a.f28503g.a(new j(jVar2));
        }
    }

    public String toString() {
        long j10 = this.f28477b;
        if (j10 == 0) {
            return "Buffer[size=0]";
        }
        if (j10 <= 16) {
            return String.format("Buffer[size=%s data=%s]", Long.valueOf(this.f28477b), clone().g().c());
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            j jVar = this.f28476a;
            byte[] bArr = jVar.f28497a;
            int i9 = jVar.f28498b;
            messageDigest.update(bArr, i9, jVar.f28499c - i9);
            j jVar2 = this.f28476a;
            while (true) {
                jVar2 = jVar2.f28502f;
                if (jVar2 == this.f28476a) {
                    return String.format("Buffer[size=%s md5=%s]", Long.valueOf(this.f28477b), e.a(messageDigest.digest()).c());
                }
                byte[] bArr2 = jVar2.f28497a;
                int i10 = jVar2.f28498b;
                messageDigest.update(bArr2, i10, jVar2.f28499c - i10);
            }
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }
}
