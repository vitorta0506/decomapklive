package com.meizu.cloud.pushsdk.c.g;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes4.dex */
final class i implements d {

    /* renamed from: a  reason: collision with root package name */
    private final b f28493a;

    /* renamed from: b  reason: collision with root package name */
    private final m f28494b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28495c;

    public i(m mVar) {
        this(mVar, new b());
    }

    public i(m mVar, b bVar) {
        if (mVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f28493a = bVar;
        this.f28494b = mVar;
    }

    @Override // com.meizu.cloud.pushsdk.c.g.m
    public long b(b bVar, long j10) throws IOException {
        if (bVar != null) {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            } else if (this.f28495c) {
                throw new IllegalStateException("closed");
            } else {
                b bVar2 = this.f28493a;
                if (bVar2.f28477b == 0 && this.f28494b.b(bVar2, 2048L) == -1) {
                    return -1L;
                }
                return this.f28493a.b(bVar, Math.min(j10, this.f28493a.f28477b));
            }
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // com.meizu.cloud.pushsdk.c.g.m, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f28495c) {
            return;
        }
        this.f28495c = true;
        this.f28494b.close();
        this.f28493a.j();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public InputStream d() {
        return new InputStream() { // from class: com.meizu.cloud.pushsdk.c.g.i.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                if (i.this.f28495c) {
                    throw new IOException("closed");
                }
                return (int) Math.min(i.this.f28493a.f28477b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                i.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                if (i.this.f28495c) {
                    throw new IOException("closed");
                }
                if (i.this.f28493a.f28477b == 0 && i.this.f28494b.b(i.this.f28493a, 2048L) == -1) {
                    return -1;
                }
                return i.this.f28493a.f() & UByte.MAX_VALUE;
            }

            @Override // java.io.InputStream
            public int read(@NonNull byte[] bArr, int i9, int i10) throws IOException {
                if (i.this.f28495c) {
                    throw new IOException("closed");
                }
                o.a(bArr.length, i9, i10);
                if (i.this.f28493a.f28477b == 0 && i.this.f28494b.b(i.this.f28493a, 2048L) == -1) {
                    return -1;
                }
                return i.this.f28493a.a(bArr, i9, i10);
            }

            public String toString() {
                return i.this + ".inputStream()";
            }
        };
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public String h() throws IOException {
        this.f28493a.a(this.f28494b);
        return this.f28493a.h();
    }

    @Override // com.meizu.cloud.pushsdk.c.g.d
    public byte[] i() throws IOException {
        this.f28493a.a(this.f28494b);
        return this.f28493a.i();
    }

    public String toString() {
        return "buffer(" + this.f28494b + ")";
    }
}
