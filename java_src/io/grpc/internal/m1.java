package io.grpc.internal;

import io.grpc.Status;
import io.grpc.l;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class m1 implements q0 {

    /* renamed from: a  reason: collision with root package name */
    private final d f42884a;

    /* renamed from: c  reason: collision with root package name */
    private q2 f42886c;

    /* renamed from: h  reason: collision with root package name */
    private final r2 f42891h;

    /* renamed from: i  reason: collision with root package name */
    private final i2 f42892i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f42893j;

    /* renamed from: k  reason: collision with root package name */
    private int f42894k;

    /* renamed from: m  reason: collision with root package name */
    private long f42896m;

    /* renamed from: b  reason: collision with root package name */
    private int f42885b = -1;

    /* renamed from: d  reason: collision with root package name */
    private io.grpc.o f42887d = l.b.f43352a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f42888e = true;

    /* renamed from: f  reason: collision with root package name */
    private final c f42889f = new c();

    /* renamed from: g  reason: collision with root package name */
    private final ByteBuffer f42890g = ByteBuffer.allocate(5);

    /* renamed from: l  reason: collision with root package name */
    private int f42895l = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class c extends OutputStream {
        private c() {
        }

        @Override // java.io.OutputStream
        public void write(int i9) {
            write(new byte[]{(byte) i9}, 0, 1);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i9, int i10) {
            m1.this.n(bArr, i9, i10);
        }
    }

    /* loaded from: classes5.dex */
    public interface d {
        void p(q2 q2Var, boolean z10, boolean z11, int i9);
    }

    public m1(d dVar, r2 r2Var, i2 i2Var) {
        this.f42884a = (d) com.google.common.base.o.t(dVar, "sink");
        this.f42891h = (r2) com.google.common.base.o.t(r2Var, "bufferAllocator");
        this.f42892i = (i2) com.google.common.base.o.t(i2Var, "statsTraceCtx");
    }

    private void f(boolean z10, boolean z11) {
        q2 q2Var = this.f42886c;
        this.f42886c = null;
        this.f42884a.p(q2Var, z10, z11, this.f42894k);
        this.f42894k = 0;
    }

    private int g(InputStream inputStream) throws IOException {
        if ((inputStream instanceof io.grpc.m0) || (inputStream instanceof ByteArrayInputStream)) {
            return inputStream.available();
        }
        return -1;
    }

    private void h() {
        q2 q2Var = this.f42886c;
        if (q2Var != null) {
            q2Var.release();
            this.f42886c = null;
        }
    }

    private void j() {
        if (isClosed()) {
            throw new IllegalStateException("Framer already closed");
        }
    }

    private void k(b bVar, boolean z10) {
        int n9 = bVar.n();
        this.f42890g.clear();
        this.f42890g.put(z10 ? (byte) 1 : (byte) 0).putInt(n9);
        q2 a10 = this.f42891h.a(5);
        a10.write(this.f42890g.array(), 0, this.f42890g.position());
        if (n9 == 0) {
            this.f42886c = a10;
            return;
        }
        this.f42884a.p(a10, false, false, this.f42894k - 1);
        this.f42894k = 1;
        List list = bVar.f42897a;
        for (int i9 = 0; i9 < list.size() - 1; i9++) {
            this.f42884a.p((q2) list.get(i9), false, false, 0);
        }
        this.f42886c = (q2) list.get(list.size() - 1);
        this.f42896m = n9;
    }

    private int l(InputStream inputStream, int i9) throws IOException {
        b bVar = new b();
        OutputStream c10 = this.f42887d.c(bVar);
        try {
            int o10 = o(inputStream, c10);
            c10.close();
            int i10 = this.f42885b;
            if (i10 >= 0 && o10 > i10) {
                throw Status.f41713o.r(String.format("message too large %d > %d", Integer.valueOf(o10), Integer.valueOf(this.f42885b))).d();
            }
            k(bVar, true);
            return o10;
        } catch (Throwable th2) {
            c10.close();
            throw th2;
        }
    }

    private int m(InputStream inputStream, int i9) throws IOException {
        int i10 = this.f42885b;
        if (i10 >= 0 && i9 > i10) {
            throw Status.f41713o.r(String.format("message too large %d > %d", Integer.valueOf(i9), Integer.valueOf(this.f42885b))).d();
        }
        this.f42890g.clear();
        this.f42890g.put((byte) 0).putInt(i9);
        if (this.f42886c == null) {
            this.f42886c = this.f42891h.a(this.f42890g.position() + i9);
        }
        n(this.f42890g.array(), 0, this.f42890g.position());
        return o(inputStream, this.f42889f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(byte[] bArr, int i9, int i10) {
        while (i10 > 0) {
            q2 q2Var = this.f42886c;
            if (q2Var != null && q2Var.a() == 0) {
                f(false, false);
            }
            if (this.f42886c == null) {
                this.f42886c = this.f42891h.a(i10);
            }
            int min = Math.min(i10, this.f42886c.a());
            this.f42886c.write(bArr, i9, min);
            i9 += min;
            i10 -= min;
        }
    }

    private static int o(InputStream inputStream, OutputStream outputStream) throws IOException {
        if (inputStream instanceof io.grpc.w) {
            return ((io.grpc.w) inputStream).a(outputStream);
        }
        long b10 = com.google.common.io.c.b(inputStream, outputStream);
        com.google.common.base.o.j(b10 <= 2147483647L, "Message size overflow: %s", b10);
        return (int) b10;
    }

    private int p(InputStream inputStream, int i9) throws IOException {
        if (i9 != -1) {
            this.f42896m = i9;
            return m(inputStream, i9);
        }
        b bVar = new b();
        int o10 = o(inputStream, bVar);
        int i10 = this.f42885b;
        if (i10 >= 0 && o10 > i10) {
            throw Status.f41713o.r(String.format("message too large %d > %d", Integer.valueOf(o10), Integer.valueOf(this.f42885b))).d();
        }
        k(bVar, false);
        return o10;
    }

    @Override // io.grpc.internal.q0
    public void b(InputStream inputStream) {
        int p10;
        j();
        this.f42894k++;
        int i9 = this.f42895l + 1;
        this.f42895l = i9;
        this.f42896m = 0L;
        this.f42892i.i(i9);
        boolean z10 = this.f42888e && this.f42887d != l.b.f43352a;
        try {
            int g10 = g(inputStream);
            if (g10 != 0 && z10) {
                p10 = l(inputStream, g10);
            } else {
                p10 = p(inputStream, g10);
            }
            if (g10 != -1 && p10 != g10) {
                throw Status.f41718t.r(String.format("Message length inaccurate %s != %s", Integer.valueOf(p10), Integer.valueOf(g10))).d();
            }
            long j10 = p10;
            this.f42892i.k(j10);
            this.f42892i.l(this.f42896m);
            this.f42892i.j(this.f42895l, this.f42896m, j10);
        } catch (IOException e10) {
            throw Status.f41718t.r("Failed to frame message").q(e10).d();
        } catch (RuntimeException e11) {
            throw Status.f41718t.r("Failed to frame message").q(e11).d();
        }
    }

    @Override // io.grpc.internal.q0
    public void close() {
        if (isClosed()) {
            return;
        }
        this.f42893j = true;
        q2 q2Var = this.f42886c;
        if (q2Var != null && q2Var.n() == 0) {
            h();
        }
        f(true, true);
    }

    @Override // io.grpc.internal.q0
    public void d(int i9) {
        com.google.common.base.o.A(this.f42885b == -1, "max size already set");
        this.f42885b = i9;
    }

    @Override // io.grpc.internal.q0
    public void flush() {
        q2 q2Var = this.f42886c;
        if (q2Var == null || q2Var.n() <= 0) {
            return;
        }
        f(false, true);
    }

    @Override // io.grpc.internal.q0
    /* renamed from: i */
    public m1 a(io.grpc.o oVar) {
        this.f42887d = (io.grpc.o) com.google.common.base.o.t(oVar, "Can't pass an empty compressor");
        return this;
    }

    @Override // io.grpc.internal.q0
    public boolean isClosed() {
        return this.f42893j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private final List<q2> f42897a;

        /* renamed from: b  reason: collision with root package name */
        private q2 f42898b;

        private b() {
            this.f42897a = new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int n() {
            int i9 = 0;
            for (q2 q2Var : this.f42897a) {
                i9 += q2Var.n();
            }
            return i9;
        }

        @Override // java.io.OutputStream
        public void write(int i9) throws IOException {
            q2 q2Var = this.f42898b;
            if (q2Var != null && q2Var.a() > 0) {
                this.f42898b.b((byte) i9);
            } else {
                write(new byte[]{(byte) i9}, 0, 1);
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i9, int i10) {
            if (this.f42898b == null) {
                q2 a10 = m1.this.f42891h.a(i10);
                this.f42898b = a10;
                this.f42897a.add(a10);
            }
            while (i10 > 0) {
                int min = Math.min(i10, this.f42898b.a());
                if (min == 0) {
                    q2 a11 = m1.this.f42891h.a(Math.max(i10, this.f42898b.n() * 2));
                    this.f42898b = a11;
                    this.f42897a.add(a11);
                } else {
                    this.f42898b.write(bArr, i9, min);
                    i9 += min;
                    i10 -= min;
                }
            }
        }
    }
}
