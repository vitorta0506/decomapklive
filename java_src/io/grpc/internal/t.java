package io.grpc.internal;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.InvalidMarkException;
import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes5.dex */
public class t extends io.grpc.internal.c {

    /* renamed from: e  reason: collision with root package name */
    private static final f<Void> f43060e = new a();

    /* renamed from: f  reason: collision with root package name */
    private static final f<Void> f43061f = new b();

    /* renamed from: g  reason: collision with root package name */
    private static final f<byte[]> f43062g = new c();

    /* renamed from: h  reason: collision with root package name */
    private static final f<ByteBuffer> f43063h = new d();

    /* renamed from: i  reason: collision with root package name */
    private static final g<OutputStream> f43064i = new e();

    /* renamed from: a  reason: collision with root package name */
    private final Deque<v1> f43065a;

    /* renamed from: b  reason: collision with root package name */
    private Deque<v1> f43066b;

    /* renamed from: c  reason: collision with root package name */
    private int f43067c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f43068d;

    /* loaded from: classes5.dex */
    class a implements f<Void> {
        a() {
        }

        @Override // io.grpc.internal.t.g
        /* renamed from: b */
        public int a(v1 v1Var, int i9, Void r32, int i10) {
            return v1Var.readUnsignedByte();
        }
    }

    /* loaded from: classes5.dex */
    class b implements f<Void> {
        b() {
        }

        @Override // io.grpc.internal.t.g
        /* renamed from: b */
        public int a(v1 v1Var, int i9, Void r32, int i10) {
            v1Var.skipBytes(i9);
            return 0;
        }
    }

    /* loaded from: classes5.dex */
    class c implements f<byte[]> {
        c() {
        }

        @Override // io.grpc.internal.t.g
        /* renamed from: b */
        public int a(v1 v1Var, int i9, byte[] bArr, int i10) {
            v1Var.a1(bArr, i10, i9);
            return i10 + i9;
        }
    }

    /* loaded from: classes5.dex */
    class d implements f<ByteBuffer> {
        d() {
        }

        @Override // io.grpc.internal.t.g
        /* renamed from: b */
        public int a(v1 v1Var, int i9, ByteBuffer byteBuffer, int i10) {
            int limit = byteBuffer.limit();
            byteBuffer.limit(byteBuffer.position() + i9);
            v1Var.v0(byteBuffer);
            byteBuffer.limit(limit);
            return 0;
        }
    }

    /* loaded from: classes5.dex */
    class e implements g<OutputStream> {
        e() {
        }

        @Override // io.grpc.internal.t.g
        /* renamed from: b */
        public int a(v1 v1Var, int i9, OutputStream outputStream, int i10) throws IOException {
            v1Var.x1(outputStream, i9);
            return 0;
        }
    }

    /* loaded from: classes5.dex */
    private interface f<T> extends g<T> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface g<T> {
        int a(v1 v1Var, int i9, T t10, int i10) throws IOException;
    }

    public t(int i9) {
        this.f43065a = new ArrayDeque(i9);
    }

    private void c() {
        if (this.f43068d) {
            this.f43066b.add(this.f43065a.remove());
            v1 peek = this.f43065a.peek();
            if (peek != null) {
                peek.k1();
                return;
            }
            return;
        }
        this.f43065a.remove().close();
    }

    private void e() {
        if (this.f43065a.peek().n() == 0) {
            c();
        }
    }

    private void h(v1 v1Var) {
        if (!(v1Var instanceof t)) {
            this.f43065a.add(v1Var);
            this.f43067c += v1Var.n();
            return;
        }
        t tVar = (t) v1Var;
        while (!tVar.f43065a.isEmpty()) {
            this.f43065a.add(tVar.f43065a.remove());
        }
        this.f43067c += tVar.f43067c;
        tVar.f43067c = 0;
        tVar.close();
    }

    private <T> int i(g<T> gVar, int i9, T t10, int i10) throws IOException {
        a(i9);
        if (!this.f43065a.isEmpty()) {
            e();
        }
        while (i9 > 0 && !this.f43065a.isEmpty()) {
            v1 peek = this.f43065a.peek();
            int min = Math.min(i9, peek.n());
            i10 = gVar.a(peek, min, t10, i10);
            i9 -= min;
            this.f43067c -= min;
            e();
        }
        if (i9 <= 0) {
            return i10;
        }
        throw new AssertionError("Failed executing read operation");
    }

    private <T> int j(f<T> fVar, int i9, T t10, int i10) {
        try {
            return i(fVar, i9, t10, i10);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // io.grpc.internal.v1
    public v1 G(int i9) {
        v1 poll;
        int i10;
        v1 v1Var;
        if (i9 <= 0) {
            return w1.a();
        }
        a(i9);
        this.f43067c -= i9;
        t tVar = null;
        t tVar2 = null;
        while (true) {
            v1 peek = this.f43065a.peek();
            int n9 = peek.n();
            if (n9 > i9) {
                v1Var = peek.G(i9);
                i10 = 0;
            } else {
                if (this.f43068d) {
                    poll = peek.G(n9);
                    c();
                } else {
                    poll = this.f43065a.poll();
                }
                v1 v1Var2 = poll;
                i10 = i9 - n9;
                v1Var = v1Var2;
            }
            if (tVar == null) {
                tVar = v1Var;
            } else {
                if (tVar2 == null) {
                    tVar2 = new t(i10 != 0 ? Math.min(this.f43065a.size() + 2, 16) : 2);
                    tVar2.b(tVar);
                    tVar = tVar2;
                }
                tVar2.b(v1Var);
            }
            if (i10 <= 0) {
                return tVar;
            }
            i9 = i10;
        }
    }

    @Override // io.grpc.internal.v1
    public void a1(byte[] bArr, int i9, int i10) {
        j(f43062g, i10, bArr, i9);
    }

    public void b(v1 v1Var) {
        boolean z10 = this.f43068d && this.f43065a.isEmpty();
        h(v1Var);
        if (z10) {
            this.f43065a.peek().k1();
        }
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (!this.f43065a.isEmpty()) {
            this.f43065a.remove().close();
        }
        if (this.f43066b != null) {
            while (!this.f43066b.isEmpty()) {
                this.f43066b.remove().close();
            }
        }
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public void k1() {
        if (this.f43066b == null) {
            this.f43066b = new ArrayDeque(Math.min(this.f43065a.size(), 16));
        }
        while (!this.f43066b.isEmpty()) {
            this.f43066b.remove().close();
        }
        this.f43068d = true;
        v1 peek = this.f43065a.peek();
        if (peek != null) {
            peek.k1();
        }
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public boolean markSupported() {
        for (v1 v1Var : this.f43065a) {
            if (!v1Var.markSupported()) {
                return false;
            }
        }
        return true;
    }

    @Override // io.grpc.internal.v1
    public int n() {
        return this.f43067c;
    }

    @Override // io.grpc.internal.v1
    public int readUnsignedByte() {
        return j(f43060e, 1, null, 0);
    }

    @Override // io.grpc.internal.c, io.grpc.internal.v1
    public void reset() {
        if (this.f43068d) {
            v1 peek = this.f43065a.peek();
            if (peek != null) {
                int n9 = peek.n();
                peek.reset();
                this.f43067c += peek.n() - n9;
            }
            while (true) {
                v1 pollLast = this.f43066b.pollLast();
                if (pollLast == null) {
                    return;
                }
                pollLast.reset();
                this.f43065a.addFirst(pollLast);
                this.f43067c += pollLast.n();
            }
        } else {
            throw new InvalidMarkException();
        }
    }

    @Override // io.grpc.internal.v1
    public void skipBytes(int i9) {
        j(f43061f, i9, null, 0);
    }

    @Override // io.grpc.internal.v1
    public void v0(ByteBuffer byteBuffer) {
        j(f43063h, byteBuffer.remaining(), byteBuffer, 0);
    }

    @Override // io.grpc.internal.v1
    public void x1(OutputStream outputStream, int i9) throws IOException {
        i(f43064i, i9, outputStream, 0);
    }

    public t() {
        this.f43065a = new ArrayDeque();
    }
}
