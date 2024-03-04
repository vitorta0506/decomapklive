package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Exception;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import tg.e;
/* loaded from: classes5.dex */
public class d implements y {

    /* renamed from: i  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44195i = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(d.class);

    /* renamed from: a  reason: collision with root package name */
    final tg.e<Http2Stream> f44196a;

    /* renamed from: b  reason: collision with root package name */
    final i f44197b;

    /* renamed from: c  reason: collision with root package name */
    final C0490d f44198c;

    /* renamed from: d  reason: collision with root package name */
    final e<r0> f44199d;

    /* renamed from: e  reason: collision with root package name */
    final e<v0> f44200e;

    /* renamed from: f  reason: collision with root package name */
    final List<y.b> f44201f;

    /* renamed from: g  reason: collision with root package name */
    final c f44202g;

    /* renamed from: h  reason: collision with root package name */
    ug.x<Void> f44203h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements z0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f44204a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f44205b;

        a(int i9, e eVar) {
            this.f44204a = i9;
            this.f44205b = eVar;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.z0
        public boolean a(Http2Stream http2Stream) {
            if (http2Stream.G() <= this.f44204a || !this.f44205b.r(http2Stream.G())) {
                return true;
            }
            http2Stream.close();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44207a;

        static {
            int[] iArr = new int[Http2Stream.State.values().length];
            f44207a = iArr;
            try {
                iArr[Http2Stream.State.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44207a[Http2Stream.State.RESERVED_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44207a[Http2Stream.State.RESERVED_REMOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44207a[Http2Stream.State.OPEN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44207a[Http2Stream.State.HALF_CLOSED_LOCAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f44207a[Http2Stream.State.HALF_CLOSED_REMOTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        private final List<y.b> f44208a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue<h> f44209b = new ArrayDeque(4);

        /* renamed from: c  reason: collision with root package name */
        private final Set<Http2Stream> f44210c = new LinkedHashSet();

        /* renamed from: d  reason: collision with root package name */
        private int f44211d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class a implements h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ g f44213a;

            a(g gVar) {
                this.f44213a = gVar;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.h
            public void a() {
                c.this.b(this.f44213a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes5.dex */
        public class b implements h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ g f44215a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Iterator f44216b;

            b(g gVar, Iterator it) {
                this.f44215a = gVar;
                this.f44216b = it;
            }

            @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.h
            public void a() {
                c.this.h(this.f44215a, this.f44216b);
            }
        }

        c(List<y.b> list) {
            this.f44208a = list;
        }

        public void a(g gVar) {
            if (c()) {
                b(gVar);
            } else {
                this.f44209b.add(new a(gVar));
            }
        }

        void b(g gVar) {
            if (this.f44210c.add(gVar)) {
                gVar.s().f44228j++;
                for (int i9 = 0; i9 < this.f44208a.size(); i9++) {
                    try {
                        this.f44208a.get(i9).g(gVar);
                    } catch (Throwable th2) {
                        d.f44195i.error("Caught Throwable from listener onStreamActive.", th2);
                    }
                }
            }
        }

        boolean c() {
            return this.f44211d == 0;
        }

        public void d(g gVar, Iterator<?> it) {
            if (!c() && it == null) {
                this.f44209b.add(new b(gVar, it));
            } else {
                h(gVar, it);
            }
        }

        void e() {
            this.f44211d--;
            if (!c()) {
                return;
            }
            while (true) {
                h poll = this.f44209b.poll();
                if (poll == null) {
                    return;
                }
                try {
                    poll.a();
                } catch (Throwable th2) {
                    d.f44195i.error("Caught Throwable while processing pending ActiveStreams$Event.", th2);
                }
            }
        }

        public Http2Stream f(z0 z0Var) throws Http2Exception {
            g();
            try {
                for (Http2Stream http2Stream : this.f44210c) {
                    if (!z0Var.a(http2Stream)) {
                        return http2Stream;
                    }
                }
                return null;
            } finally {
                e();
            }
        }

        void g() {
            this.f44211d++;
        }

        void h(g gVar, Iterator<?> it) {
            if (this.f44210c.remove(gVar)) {
                e<? extends g0> s10 = gVar.s();
                s10.f44228j--;
                d.this.u(gVar);
            }
            d.this.w(gVar, it);
        }

        public int i() {
            return this.f44210c.size();
        }
    }

    /* renamed from: io.grpc.netty.shaded.io.netty.handler.codec.http2.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class C0490d extends g {
        C0490d() {
            super(0, Http2Stream.State.IDLE);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream b() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream c() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream close() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean g() {
            return false;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean i() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean k() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream m(boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream n() {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g, io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream p(boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.d.g
        e<? extends g0> s() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class e<F extends g0> implements y.a<F> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f44219a;

        /* renamed from: b  reason: collision with root package name */
        private int f44220b;

        /* renamed from: c  reason: collision with root package name */
        private int f44221c;

        /* renamed from: d  reason: collision with root package name */
        private int f44222d = -1;

        /* renamed from: e  reason: collision with root package name */
        private boolean f44223e;

        /* renamed from: f  reason: collision with root package name */
        private F f44224f;

        /* renamed from: g  reason: collision with root package name */
        private int f44225g;

        /* renamed from: h  reason: collision with root package name */
        private int f44226h;

        /* renamed from: i  reason: collision with root package name */
        private final int f44227i;

        /* renamed from: j  reason: collision with root package name */
        int f44228j;

        /* renamed from: k  reason: collision with root package name */
        int f44229k;

        e(boolean z10, int i9) {
            this.f44219a = z10;
            if (z10) {
                this.f44220b = 2;
                this.f44221c = 0;
            } else {
                this.f44220b = 1;
                this.f44221c = 1;
            }
            this.f44223e = true ^ z10;
            this.f44226h = Integer.MAX_VALUE;
            this.f44227i = io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "maxReservedStreams");
            B();
        }

        private void B() {
            this.f44225g = (int) Math.min(2147483647L, this.f44226h + this.f44227i);
        }

        private void c(g gVar) {
            d.this.f44196a.n0(gVar.G(), gVar);
            for (int i9 = 0; i9 < d.this.f44201f.size(); i9++) {
                try {
                    d.this.f44201f.get(i9).c(gVar);
                } catch (Throwable th2) {
                    d.f44195i.error("Caught Throwable from listener onStreamAdded.", th2);
                }
            }
        }

        private void e(int i9, Http2Stream.State state) throws Http2Exception {
            int i10 = this.f44222d;
            if (i10 >= 0 && i9 > i10) {
                throw Http2Exception.streamError(i9, Http2Error.REFUSED_STREAM, "Cannot create stream %d greater than Last-Stream-ID %d from GOAWAY.", Integer.valueOf(i9), Integer.valueOf(this.f44222d));
            }
            if (!r(i9)) {
                if (i9 >= 0) {
                    Http2Error http2Error = Http2Error.PROTOCOL_ERROR;
                    Object[] objArr = new Object[2];
                    objArr[0] = Integer.valueOf(i9);
                    objArr[1] = this.f44219a ? "server" : "client";
                    throw Http2Exception.connectionError(http2Error, "Request stream %d is not correct for %s connection", objArr);
                }
                throw new Http2NoMoreStreamIdsException();
            }
            int i11 = this.f44220b;
            if (i9 < i11) {
                throw Http2Exception.closedStreamError(Http2Error.PROTOCOL_ERROR, "Request stream %d is behind the next expected stream %d", Integer.valueOf(i9), Integer.valueOf(this.f44220b));
            }
            if (i11 > 0) {
                boolean z10 = state == Http2Stream.State.RESERVED_LOCAL || state == Http2Stream.State.RESERVED_REMOTE;
                if ((!z10 && !d()) || (z10 && this.f44229k >= this.f44225g)) {
                    Http2Error http2Error2 = Http2Error.REFUSED_STREAM;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Maximum active streams violated for this endpoint: ");
                    sb2.append(z10 ? this.f44225g : this.f44226h);
                    throw Http2Exception.streamError(i9, http2Error2, sb2.toString(), new Object[0]);
                } else if (d.this.s()) {
                    throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "Attempted to create stream id %d after connection was closed", Integer.valueOf(i9));
                } else {
                    return;
                }
            }
            throw new Http2Exception(Http2Error.REFUSED_STREAM, "Stream IDs are exhausted for this endpoint.", Http2Exception.ShutdownHint.GRACEFUL_SHUTDOWN);
        }

        private void g(int i9) {
            int i10 = this.f44221c;
            if (i9 > i10 && i10 >= 0) {
                this.f44221c = i9;
            }
            this.f44220b = i9 + 2;
            this.f44229k++;
        }

        private boolean h() {
            return this == d.this.f44199d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(int i9) {
            this.f44222d = i9;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public int A() {
            return this.f44226h;
        }

        public boolean d() {
            return this.f44228j < this.f44226h;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        /* renamed from: f */
        public g z(int i9, boolean z10) throws Http2Exception {
            Http2Stream.State q10 = d.q(i9, Http2Stream.State.IDLE, h(), z10);
            e(i9, q10);
            g gVar = new g(i9, q10);
            g(i9);
            c(gVar);
            gVar.q();
            return gVar;
        }

        public boolean i() {
            return this.f44219a;
        }

        public y.a<? extends g0> k() {
            return h() ? d.this.f44200e : d.this.f44199d;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        /* renamed from: l */
        public g w(int i9, Http2Stream http2Stream) throws Http2Exception {
            if (http2Stream != null) {
                if (!h() ? http2Stream.h().remoteSideOpen() : http2Stream.h().localSideOpen()) {
                    throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Stream %d is not open for sending push promise", Integer.valueOf(http2Stream.G()));
                }
                if (k().x()) {
                    Http2Stream.State state = h() ? Http2Stream.State.RESERVED_LOCAL : Http2Stream.State.RESERVED_REMOTE;
                    e(i9, state);
                    g gVar = new g(i9, state);
                    g(i9);
                    c(gVar);
                    return gVar;
                }
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Server push not allowed to opposite endpoint", new Object[0]);
            }
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Parent stream missing", new Object[0]);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public F m() {
            return this.f44224f;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public int n() {
            return this.f44228j;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public void o(F f10) {
            this.f44224f = (F) io.grpc.netty.shaded.io.netty.util.internal.s.h(f10, "flowController");
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public boolean p(int i9) {
            return r(i9) && i9 <= v();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public boolean q(Http2Stream http2Stream) {
            return (http2Stream instanceof g) && ((g) http2Stream).s() == this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public boolean r(int i9) {
            if (i9 > 0) {
                return this.f44219a == ((i9 & 1) == 0);
            }
            return false;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public void s(boolean z10) {
            if (z10 && this.f44219a) {
                throw new IllegalArgumentException("Servers do not allow push");
            }
            this.f44223e = z10;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public int t() {
            return this.f44222d;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public void u(int i9) {
            this.f44226h = i9;
            B();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public int v() {
            int i9 = this.f44220b;
            if (i9 > 1) {
                return i9 - 2;
            }
            return 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public boolean x() {
            return this.f44223e;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y.a
        public int y() {
            int i9 = this.f44221c;
            if (i9 >= 0) {
                int i10 = i9 + 2;
                this.f44221c = i10;
                return i10;
            }
            return i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class f implements y.c {

        /* renamed from: a  reason: collision with root package name */
        final int f44231a;

        f(int i9) {
            this.f44231a = i9;
        }

        f a(y yVar) {
            if (yVar == d.this) {
                return this;
            }
            throw new IllegalArgumentException("Using a key that was not created by this connection");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class g implements Http2Stream {

        /* renamed from: a  reason: collision with root package name */
        private final int f44233a;

        /* renamed from: b  reason: collision with root package name */
        private final a f44234b = new a(this, null);

        /* renamed from: c  reason: collision with root package name */
        private Http2Stream.State f44235c;

        /* renamed from: d  reason: collision with root package name */
        private byte f44236d;

        g(int i9, Http2Stream.State state) {
            this.f44233a = i9;
            this.f44235c = state;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public final int G() {
            return this.f44233a;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public final <V> V a(y.c cVar) {
            return (V) this.f44234b.b(d.this.x(cVar));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream b() {
            int i9 = b.f44207a[this.f44235c.ordinal()];
            if (i9 == 4) {
                this.f44235c = Http2Stream.State.HALF_CLOSED_REMOTE;
                d.this.v(this);
            } else if (i9 != 6) {
                close();
            }
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream c() {
            this.f44236d = (byte) (this.f44236d | 1);
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream close() {
            return r(null);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public final <V> V d(y.c cVar, V v10) {
            return (V) this.f44234b.a(d.this.x(cVar), v10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean e() {
            return (this.f44236d & 16) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean f() {
            return (this.f44236d & 32) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean g() {
            return (this.f44236d & 1) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public final Http2Stream.State h() {
            return this.f44235c;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean i() {
            return (this.f44236d & 2) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean j() {
            return (this.f44236d & 4) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public boolean k() {
            return (this.f44236d & 8) != 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public final <V> V l(y.c cVar) {
            return (V) this.f44234b.c(d.this.x(cVar));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream m(boolean z10) throws Http2Exception {
            this.f44235c = d.q(this.f44233a, this.f44235c, t(), z10);
            e<? extends g0> s10 = s();
            if (s10.d()) {
                q();
                return this;
            }
            Http2Error http2Error = Http2Error.PROTOCOL_ERROR;
            throw Http2Exception.connectionError(http2Error, "Maximum active streams violated for this endpoint: " + s10.A(), new Object[0]);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream n() {
            int i9 = b.f44207a[this.f44235c.ordinal()];
            if (i9 == 4) {
                this.f44235c = Http2Stream.State.HALF_CLOSED_LOCAL;
                d.this.v(this);
            } else if (i9 != 5) {
                close();
            }
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream o(boolean z10) {
            if (!z10) {
                this.f44236d = (byte) (this.f44236d | (e() ? (byte) 32 : (byte) 16));
            }
            return this;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2Stream
        public Http2Stream p(boolean z10) {
            if (!z10) {
                this.f44236d = (byte) (this.f44236d | (i() ? (byte) 4 : (byte) 2));
            }
            return this;
        }

        void q() {
            Http2Stream.State state = this.f44235c;
            if (state == Http2Stream.State.HALF_CLOSED_LOCAL) {
                p(false);
            } else if (state == Http2Stream.State.HALF_CLOSED_REMOTE) {
                o(false);
            }
            d.this.f44202g.a(this);
        }

        Http2Stream r(Iterator<?> it) {
            Http2Stream.State state = this.f44235c;
            Http2Stream.State state2 = Http2Stream.State.CLOSED;
            if (state == state2) {
                return this;
            }
            this.f44235c = state2;
            e<? extends g0> s10 = s();
            s10.f44229k--;
            d.this.f44202g.d(this, it);
            return this;
        }

        e<? extends g0> s() {
            return d.this.f44199d.r(this.f44233a) ? d.this.f44199d : d.this.f44200e;
        }

        final boolean t() {
            return d.this.f44199d.r(this.f44233a);
        }

        /* loaded from: classes5.dex */
        private class a {

            /* renamed from: a  reason: collision with root package name */
            Object[] f44238a;

            private a() {
                this.f44238a = io.grpc.netty.shaded.io.netty.util.internal.h.f45067d;
            }

            <V> V a(f fVar, V v10) {
                d(fVar.f44231a);
                Object[] objArr = this.f44238a;
                int i9 = fVar.f44231a;
                V v11 = (V) objArr[i9];
                objArr[i9] = v10;
                return v11;
            }

            <V> V b(f fVar) {
                int i9 = fVar.f44231a;
                Object[] objArr = this.f44238a;
                if (i9 >= objArr.length) {
                    return null;
                }
                return (V) objArr[i9];
            }

            <V> V c(f fVar) {
                int i9 = fVar.f44231a;
                Object[] objArr = this.f44238a;
                if (i9 < objArr.length) {
                    V v10 = (V) objArr[i9];
                    objArr[i9] = null;
                    return v10;
                }
                return null;
            }

            void d(int i9) {
                Object[] objArr = this.f44238a;
                if (i9 >= objArr.length) {
                    this.f44238a = Arrays.copyOf(objArr, d.this.f44197b.b());
                }
            }

            /* synthetic */ a(g gVar, a aVar) {
                this();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface h {
        void a();
    }

    public d(boolean z10) {
        this(z10, 100);
    }

    static Http2Stream.State q(int i9, Http2Stream.State state, boolean z10, boolean z11) throws Http2Exception {
        int i10 = b.f44207a[state.ordinal()];
        if (i10 == 1) {
            return z11 ? z10 ? Http2Stream.State.HALF_CLOSED_LOCAL : Http2Stream.State.HALF_CLOSED_REMOTE : Http2Stream.State.OPEN;
        } else if (i10 != 2) {
            if (i10 == 3) {
                return Http2Stream.State.HALF_CLOSED_LOCAL;
            }
            Http2Error http2Error = Http2Error.PROTOCOL_ERROR;
            throw Http2Exception.streamError(i9, http2Error, "Attempting to open a stream in an invalid state: " + state, new Object[0]);
        } else {
            return Http2Stream.State.HALF_CLOSED_REMOTE;
        }
    }

    private void r(int i9, e<?> eVar) throws Http2Exception {
        l(new a(i9, eVar));
    }

    private boolean t() {
        return this.f44196a.size() == 1;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public y.c a() {
        return this.f44197b.a();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public y.a<v0> b() {
        return this.f44200e;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public Http2Stream c(int i9) {
        return this.f44196a.get(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public Http2Stream d() {
        return this.f44198c;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public boolean e() {
        return ((e) this.f44200e).f44222d >= 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public y.a<r0> f() {
        return this.f44199d;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public void g(y.b bVar) {
        this.f44201f.add(bVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public boolean h(int i9, long j10, kg.j jVar) throws Http2Exception {
        if (this.f44200e.t() >= 0) {
            if (i9 == this.f44200e.t()) {
                return false;
            }
            if (i9 > this.f44200e.t()) {
                throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "Last stream identifier must not increase between sending multiple GOAWAY frames (was '%d', is '%d').", Integer.valueOf(this.f44200e.t()), Integer.valueOf(i9));
            }
        }
        this.f44200e.j(i9);
        for (int i10 = 0; i10 < this.f44201f.size(); i10++) {
            try {
                this.f44201f.get(i10).d(i9, j10, jVar);
            } catch (Throwable th2) {
                f44195i.error("Caught Throwable from listener onGoAwaySent.", th2);
            }
        }
        r(i9, this.f44200e);
        return true;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public ug.q<Void> i(ug.x<Void> xVar) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(xVar, "promise");
        ug.x<Void> xVar2 = this.f44203h;
        if (xVar2 == null) {
            this.f44203h = xVar;
        } else if (xVar2 != xVar) {
            if ((xVar instanceof io.grpc.netty.shaded.io.netty.channel.y) && ((io.grpc.netty.shaded.io.netty.channel.i) xVar2).N()) {
                this.f44203h = xVar;
            } else {
                ug.z.a(this.f44203h, xVar);
            }
        }
        if (t()) {
            xVar.B(null);
            return xVar;
        }
        Iterator<e.a<Http2Stream>> it = this.f44196a.entries().iterator();
        if (this.f44202g.c()) {
            this.f44202g.g();
            while (it.hasNext()) {
                try {
                    g gVar = (g) it.next().value();
                    if (gVar.G() != 0) {
                        gVar.r(it);
                    }
                } finally {
                    this.f44202g.e();
                }
            }
        } else {
            while (it.hasNext()) {
                Http2Stream value = it.next().value();
                if (value.G() != 0) {
                    value.close();
                }
            }
        }
        return this.f44203h;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public void j(int i9, long j10, kg.j jVar) throws Http2Exception {
        if (this.f44199d.t() >= 0 && this.f44199d.t() < i9) {
            throw Http2Exception.connectionError(Http2Error.PROTOCOL_ERROR, "lastStreamId MUST NOT increase. Current value: %d new value: %d", Integer.valueOf(this.f44199d.t()), Integer.valueOf(i9));
        }
        this.f44199d.j(i9);
        for (int i10 = 0; i10 < this.f44201f.size(); i10++) {
            try {
                this.f44201f.get(i10).e(i9, j10, jVar);
            } catch (Throwable th2) {
                f44195i.error("Caught Throwable from listener onGoAwayReceived.", th2);
            }
        }
        r(i9, this.f44199d);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public boolean k(int i9) {
        return this.f44200e.p(i9) || this.f44199d.p(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public Http2Stream l(z0 z0Var) throws Http2Exception {
        return this.f44202g.f(z0Var);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public boolean m() {
        return this.f44199d.i();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public int n() {
        return this.f44202g.i();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y
    public boolean o() {
        return ((e) this.f44199d).f44222d >= 0;
    }

    final boolean s() {
        return this.f44203h != null;
    }

    void u(Http2Stream http2Stream) {
        for (int i9 = 0; i9 < this.f44201f.size(); i9++) {
            try {
                this.f44201f.get(i9).f(http2Stream);
            } catch (Throwable th2) {
                f44195i.error("Caught Throwable from listener onStreamClosed.", th2);
            }
        }
    }

    void v(Http2Stream http2Stream) {
        for (int i9 = 0; i9 < this.f44201f.size(); i9++) {
            try {
                this.f44201f.get(i9).a(http2Stream);
            } catch (Throwable th2) {
                f44195i.error("Caught Throwable from listener onStreamHalfClosed.", th2);
            }
        }
    }

    void w(g gVar, Iterator<?> it) {
        boolean z10 = true;
        if (it == null) {
            if (this.f44196a.remove(gVar.G()) == null) {
                z10 = false;
            }
        } else {
            it.remove();
        }
        if (z10) {
            for (int i9 = 0; i9 < this.f44201f.size(); i9++) {
                try {
                    this.f44201f.get(i9).b(gVar);
                } catch (Throwable th2) {
                    f44195i.error("Caught Throwable from listener onStreamRemoved.", th2);
                }
            }
            if (this.f44203h == null || !t()) {
                return;
            }
            this.f44203h.B(null);
        }
    }

    final f x(y.c cVar) {
        return ((f) io.grpc.netty.shaded.io.netty.util.internal.s.h((f) cVar, "key")).a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public final class i {

        /* renamed from: a  reason: collision with root package name */
        final List<f> f44240a;

        private i() {
            this.f44240a = new ArrayList(4);
        }

        f a() {
            f fVar = new f(this.f44240a.size());
            this.f44240a.add(fVar);
            return fVar;
        }

        int b() {
            return this.f44240a.size();
        }

        /* synthetic */ i(d dVar, a aVar) {
            this();
        }
    }

    public d(boolean z10, int i9) {
        tg.d dVar = new tg.d();
        this.f44196a = dVar;
        this.f44197b = new i(this, null);
        C0490d c0490d = new C0490d();
        this.f44198c = c0490d;
        ArrayList arrayList = new ArrayList(4);
        this.f44201f = arrayList;
        this.f44202g = new c(arrayList);
        this.f44199d = new e<>(z10, z10 ? Integer.MAX_VALUE : i9);
        this.f44200e = new e<>(!z10, i9);
        dVar.n0(c0490d.G(), c0490d);
    }
}
