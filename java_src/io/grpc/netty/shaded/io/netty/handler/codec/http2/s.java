package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f44429a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f44430b;

    /* renamed from: c  reason: collision with root package name */
    private final c f44431c;

    /* renamed from: d  reason: collision with root package name */
    private final b f44432d;

    /* loaded from: classes5.dex */
    private final class b implements io.grpc.netty.shaded.io.netty.util.g {

        /* renamed from: a  reason: collision with root package name */
        kg.j f44433a;

        /* renamed from: b  reason: collision with root package name */
        private long f44434b;

        /* renamed from: c  reason: collision with root package name */
        private int f44435c;

        private b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) {
            int i9;
            byte b11 = s.this.f44430b[b10 & UByte.MAX_VALUE];
            long j10 = this.f44434b << b11;
            this.f44434b = j10;
            this.f44434b = j10 | s.this.f44429a[i9];
            this.f44435c += b11;
            while (true) {
                int i10 = this.f44435c;
                if (i10 < 8) {
                    return true;
                }
                int i11 = i10 - 8;
                this.f44435c = i11;
                this.f44433a.u2((int) (this.f44434b >> i11));
            }
        }

        void b() {
            try {
                int i9 = this.f44435c;
                if (i9 > 0) {
                    long j10 = (this.f44434b << (8 - i9)) | (255 >>> i9);
                    this.f44434b = j10;
                    this.f44433a.u2((int) j10);
                }
            } finally {
                this.f44433a = null;
                this.f44434b = 0L;
                this.f44435c = 0;
            }
        }
    }

    /* loaded from: classes5.dex */
    private final class c implements io.grpc.netty.shaded.io.netty.util.g {

        /* renamed from: a  reason: collision with root package name */
        private long f44437a;

        private c() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.g
        public boolean a(byte b10) {
            this.f44437a += s.this.f44430b[b10 & UByte.MAX_VALUE];
            return true;
        }

        int b() {
            return (int) ((this.f44437a + 7) >> 3);
        }

        void c() {
            this.f44437a = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s() {
        this(u.f44445a, u.f44446b);
    }

    private void d(kg.j jVar, CharSequence charSequence) {
        int i9 = 0;
        long j10 = 0;
        byte b10 = 0;
        while (i9 < charSequence.length()) {
            int charAt = charSequence.charAt(i9) & 255;
            int i10 = this.f44429a[charAt];
            byte b11 = this.f44430b[charAt];
            j10 = (j10 << b11) | i10;
            int i11 = b10 + b11;
            while (i11 >= 8) {
                i11 = (i11 == 1 ? 1 : 0) - 8;
                jVar.u2((int) (j10 >> i11));
            }
            i9++;
            b10 = i11;
        }
        if (b10 > 0) {
            jVar.u2((int) ((255 >>> b10) | (j10 << (8 - b10))));
        }
    }

    private int f(CharSequence charSequence) {
        long j10 = 0;
        for (int i9 = 0; i9 < charSequence.length(); i9++) {
            j10 += this.f44430b[charSequence.charAt(i9) & 255];
        }
        return (int) ((j10 + 7) >> 3);
    }

    public void c(kg.j jVar, CharSequence charSequence) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "out");
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            io.grpc.netty.shaded.io.netty.util.c cVar = (io.grpc.netty.shaded.io.netty.util.c) charSequence;
            try {
                try {
                    b bVar = this.f44432d;
                    bVar.f44433a = jVar;
                    cVar.q(bVar);
                } catch (Exception e10) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                }
                return;
            } finally {
                this.f44432d.b();
            }
        }
        d(jVar, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e(CharSequence charSequence) {
        if (charSequence instanceof io.grpc.netty.shaded.io.netty.util.c) {
            io.grpc.netty.shaded.io.netty.util.c cVar = (io.grpc.netty.shaded.io.netty.util.c) charSequence;
            try {
                this.f44431c.c();
                cVar.q(this.f44431c);
                return this.f44431c.b();
            } catch (Exception e10) {
                io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                return -1;
            }
        }
        return f(charSequence);
    }

    private s(int[] iArr, byte[] bArr) {
        this.f44431c = new c();
        this.f44432d = new b();
        this.f44429a = iArr;
        this.f44430b = bArr;
    }
}
