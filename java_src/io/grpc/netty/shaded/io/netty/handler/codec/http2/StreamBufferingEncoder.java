package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.TreeMap;
/* loaded from: classes5.dex */
public class StreamBufferingEncoder extends io.grpc.netty.shaded.io.netty.handler.codec.http2.b {

    /* renamed from: c  reason: collision with root package name */
    private final TreeMap<Integer, f> f44098c;

    /* renamed from: d  reason: collision with root package name */
    private int f44099d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44100e;

    /* renamed from: f  reason: collision with root package name */
    private d f44101f;

    /* loaded from: classes5.dex */
    public static final class Http2ChannelClosedException extends Http2Exception {
        private static final long serialVersionUID = 4768543442094476971L;

        public Http2ChannelClosedException() {
            super(Http2Error.REFUSED_STREAM, "Connection closed");
        }
    }

    /* loaded from: classes5.dex */
    public static final class Http2GoAwayException extends Http2Exception {
        private static final long serialVersionUID = 1326785622777291198L;
        private final d goAwayDetail;

        public Http2GoAwayException(int i9, long j10, byte[] bArr) {
            this(new d(i9, j10, bArr));
        }

        public byte[] debugData() {
            return (byte[]) this.goAwayDetail.f44110c.clone();
        }

        public long errorCode() {
            return this.goAwayDetail.f44109b;
        }

        public int lastStreamId() {
            return this.goAwayDetail.f44108a;
        }

        Http2GoAwayException(d dVar) {
            super(Http2Error.STREAM_CLOSED);
            this.goAwayDetail = dVar;
        }
    }

    /* loaded from: classes5.dex */
    class a extends z {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z, io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void e(int i9, long j10, kg.j jVar) {
            StreamBufferingEncoder.this.f44101f = new d(i9, j10, kg.n.t(jVar, jVar.Q1(), jVar.P1(), false));
            StreamBufferingEncoder streamBufferingEncoder = StreamBufferingEncoder.this;
            streamBufferingEncoder.k(streamBufferingEncoder.f44101f);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.b
        public void f(Http2Stream http2Stream) {
            StreamBufferingEncoder.this.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class b extends c {

        /* renamed from: b  reason: collision with root package name */
        final kg.j f44103b;

        /* renamed from: c  reason: collision with root package name */
        final int f44104c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f44105d;

        b(kg.j jVar, int i9, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            super(yVar);
            this.f44103b = jVar;
            this.f44104c = i9;
            this.f44105d = z10;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.StreamBufferingEncoder.c
        void a(Throwable th2) {
            super.a(th2);
            io.grpc.netty.shaded.io.netty.util.r.c(this.f44103b);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.StreamBufferingEncoder.c
        void b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
            StreamBufferingEncoder.this.b(mVar, i9, this.f44103b, this.f44104c, this.f44105d, this.f44107a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.channel.y f44107a;

        c(io.grpc.netty.shaded.io.netty.channel.y yVar) {
            this.f44107a = yVar;
        }

        void a(Throwable th2) {
            if (th2 == null) {
                this.f44107a.m();
            } else {
                this.f44107a.u(th2);
            }
        }

        abstract void b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f44108a;

        /* renamed from: b  reason: collision with root package name */
        private final long f44109b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f44110c;

        d(int i9, long j10, byte[] bArr) {
            this.f44108a = i9;
            this.f44109b = j10;
            this.f44110c = (byte[]) bArr.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e extends c {

        /* renamed from: b  reason: collision with root package name */
        final Http2Headers f44111b;

        /* renamed from: c  reason: collision with root package name */
        final int f44112c;

        /* renamed from: d  reason: collision with root package name */
        final short f44113d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f44114e;

        /* renamed from: f  reason: collision with root package name */
        final int f44115f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f44116g;

        e(Http2Headers http2Headers, int i9, short s10, boolean z10, int i10, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
            super(yVar);
            this.f44111b = http2Headers;
            this.f44112c = i9;
            this.f44113d = s10;
            this.f44114e = z10;
            this.f44115f = i10;
            this.f44116g = z11;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.StreamBufferingEncoder.c
        void b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
            StreamBufferingEncoder.this.B(mVar, i9, this.f44111b, this.f44112c, this.f44113d, this.f44114e, this.f44115f, this.f44116g, this.f44107a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        final io.grpc.netty.shaded.io.netty.channel.m f44118a;

        /* renamed from: b  reason: collision with root package name */
        final int f44119b;

        /* renamed from: c  reason: collision with root package name */
        final Queue<c> f44120c = new ArrayDeque(2);

        f(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9) {
            this.f44118a = mVar;
            this.f44119b = i9;
        }

        void a(Throwable th2) {
            for (c cVar : this.f44120c) {
                cVar.a(th2);
            }
        }

        void b() {
            for (c cVar : this.f44120c) {
                cVar.b(this.f44118a, this.f44119b);
            }
        }
    }

    public StreamBufferingEncoder(b0 b0Var) {
        this(b0Var, 100);
    }

    private boolean j() {
        return connection().f().n() < this.f44099d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(d dVar) {
        Iterator<f> it = this.f44098c.values().iterator();
        Http2GoAwayException http2GoAwayException = new Http2GoAwayException(dVar);
        while (it.hasNext()) {
            f next = it.next();
            if (next.f44119b > dVar.f44108a) {
                it.remove();
                next.a(http2GoAwayException);
            }
        }
    }

    private boolean o(int i9) {
        return i9 <= connection().f().v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        while (!this.f44098c.isEmpty() && j()) {
            f value = this.f44098c.pollFirstEntry().getValue();
            try {
                value.b();
            } catch (Throwable th2) {
                value.a(th2);
            }
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (this.f44100e) {
            return yVar.u(new Http2ChannelClosedException());
        }
        if (!o(i9) && !j()) {
            if (this.f44101f != null) {
                return yVar.u(new Http2GoAwayException(this.f44101f));
            }
            f fVar = this.f44098c.get(Integer.valueOf(i9));
            if (fVar == null) {
                fVar = new f(mVar, i9);
                this.f44098c.put(Integer.valueOf(i9), fVar);
            }
            fVar.f44120c.add(new e(http2Headers, i10, s10, z10, i11, z11, yVar));
            return yVar;
        }
        return super.B(mVar, i9, http2Headers, i10, s10, z10, i11, z11, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (o(i9)) {
            return super.F1(mVar, i9, j10, yVar);
        }
        f remove = this.f44098c.remove(Integer.valueOf(i9));
        if (remove != null) {
            remove.a(null);
            yVar.m();
        } else {
            yVar.u(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream does not exist %d", Integer.valueOf(i9)));
        }
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b, io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public void G1(x0 x0Var) throws Http2Exception {
        super.G1(x0Var);
        this.f44099d = connection().f().A();
        q();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (o(i9)) {
            return super.b(mVar, i9, jVar, i10, z10, yVar);
        }
        f fVar = this.f44098c.get(Integer.valueOf(i9));
        if (fVar != null) {
            fVar.f44120c.add(new b(jVar, i10, z10, yVar));
        } else {
            io.grpc.netty.shaded.io.netty.util.r.c(jVar);
            yVar.u(Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream does not exist %d", Integer.valueOf(i9)));
        }
        return yVar;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            if (!this.f44100e) {
                this.f44100e = true;
                Http2ChannelClosedException http2ChannelClosedException = new Http2ChannelClosedException();
                while (!this.f44098c.isEmpty()) {
                    this.f44098c.pollFirstEntry().getValue().a(http2ChannelClosedException);
                }
            }
        } finally {
            super.close();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.c, io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return B(mVar, i9, http2Headers, 0, (short) 16, false, i10, z10, yVar);
    }

    public int p() {
        return this.f44098c.size();
    }

    public StreamBufferingEncoder(b0 b0Var, int i9) {
        super(b0Var);
        this.f44098c = new TreeMap<>();
        this.f44099d = i9;
        connection().g(new a());
    }
}
