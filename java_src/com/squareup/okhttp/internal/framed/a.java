package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.FrameReader;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class a implements Closeable {

    /* renamed from: x  reason: collision with root package name */
    private static final ExecutorService f29669x = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.squareup.okhttp.internal.i.s("OkHttp FramedConnection", true));

    /* renamed from: a  reason: collision with root package name */
    final Protocol f29670a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f29671b;

    /* renamed from: c  reason: collision with root package name */
    private final i f29672c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Integer, com.squareup.okhttp.internal.framed.b> f29673d;

    /* renamed from: e  reason: collision with root package name */
    private final String f29674e;

    /* renamed from: f  reason: collision with root package name */
    private int f29675f;

    /* renamed from: g  reason: collision with root package name */
    private int f29676g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f29677h;

    /* renamed from: i  reason: collision with root package name */
    private long f29678i;

    /* renamed from: j  reason: collision with root package name */
    private final ExecutorService f29679j;

    /* renamed from: k  reason: collision with root package name */
    private Map<Integer, com.squareup.okhttp.internal.framed.h> f29680k;

    /* renamed from: l  reason: collision with root package name */
    private final PushObserver f29681l;

    /* renamed from: m  reason: collision with root package name */
    private int f29682m;

    /* renamed from: n  reason: collision with root package name */
    long f29683n;

    /* renamed from: o  reason: collision with root package name */
    long f29684o;

    /* renamed from: p  reason: collision with root package name */
    com.squareup.okhttp.internal.framed.i f29685p;

    /* renamed from: q  reason: collision with root package name */
    final com.squareup.okhttp.internal.framed.i f29686q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f29687r;

    /* renamed from: s  reason: collision with root package name */
    final Variant f29688s;

    /* renamed from: t  reason: collision with root package name */
    final Socket f29689t;

    /* renamed from: u  reason: collision with root package name */
    final FrameWriter f29690u;

    /* renamed from: v  reason: collision with root package name */
    final j f29691v;

    /* renamed from: w  reason: collision with root package name */
    private final Set<Integer> f29692w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0293a extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29693a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ErrorCode f29694b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0293a(String str, Object[] objArr, int i9, ErrorCode errorCode) {
            super(str, objArr);
            this.f29693a = i9;
            this.f29694b = errorCode;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            try {
                a.this.l0(this.f29693a, this.f29694b);
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29696a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f29697b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i9, long j10) {
            super(str, objArr);
            this.f29696a = i9;
            this.f29697b = j10;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            try {
                a.this.f29690u.windowUpdate(this.f29696a, this.f29697b);
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f29699a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29700b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29701c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.squareup.okhttp.internal.framed.h f29702d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, Object[] objArr, boolean z10, int i9, int i10, com.squareup.okhttp.internal.framed.h hVar) {
            super(str, objArr);
            this.f29699a = z10;
            this.f29700b = i9;
            this.f29701c = i10;
            this.f29702d = hVar;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            try {
                a.this.i0(this.f29699a, this.f29700b, this.f29701c, this.f29702d);
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29704a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f29705b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i9, List list) {
            super(str, objArr);
            this.f29704a = i9;
            this.f29705b = list;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            if (a.this.f29681l.onRequest(this.f29704a, this.f29705b)) {
                try {
                    a.this.f29690u.rstStream(this.f29704a, ErrorCode.CANCEL);
                    synchronized (a.this) {
                        a.this.f29692w.remove(Integer.valueOf(this.f29704a));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29707a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f29708b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f29709c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i9, List list, boolean z10) {
            super(str, objArr);
            this.f29707a = i9;
            this.f29708b = list;
            this.f29709c = z10;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            boolean onHeaders = a.this.f29681l.onHeaders(this.f29707a, this.f29708b, this.f29709c);
            if (onHeaders) {
                try {
                    a.this.f29690u.rstStream(this.f29707a, ErrorCode.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (onHeaders || this.f29709c) {
                synchronized (a.this) {
                    a.this.f29692w.remove(Integer.valueOf(this.f29707a));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29711a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Buffer f29712b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f29713c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f29714d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i9, Buffer buffer, int i10, boolean z10) {
            super(str, objArr);
            this.f29711a = i9;
            this.f29712b = buffer;
            this.f29713c = i10;
            this.f29714d = z10;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            try {
                boolean onData = a.this.f29681l.onData(this.f29711a, this.f29712b, this.f29713c, this.f29714d);
                if (onData) {
                    a.this.f29690u.rstStream(this.f29711a, ErrorCode.CANCEL);
                }
                if (onData || this.f29714d) {
                    synchronized (a.this) {
                        a.this.f29692w.remove(Integer.valueOf(this.f29711a));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g extends com.squareup.okhttp.internal.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f29716a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ErrorCode f29717b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, Object[] objArr, int i9, ErrorCode errorCode) {
            super(str, objArr);
            this.f29716a = i9;
            this.f29717b = errorCode;
        }

        @Override // com.squareup.okhttp.internal.e
        public void execute() {
            a.this.f29681l.onReset(this.f29716a, this.f29717b);
            synchronized (a.this) {
                a.this.f29692w.remove(Integer.valueOf(this.f29716a));
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        private Socket f29719a;

        /* renamed from: b  reason: collision with root package name */
        private String f29720b;

        /* renamed from: c  reason: collision with root package name */
        private BufferedSource f29721c;

        /* renamed from: d  reason: collision with root package name */
        private BufferedSink f29722d;

        /* renamed from: e  reason: collision with root package name */
        private i f29723e = i.f29727a;

        /* renamed from: f  reason: collision with root package name */
        private Protocol f29724f = Protocol.SPDY_3;

        /* renamed from: g  reason: collision with root package name */
        private PushObserver f29725g = PushObserver.CANCEL;

        /* renamed from: h  reason: collision with root package name */
        private boolean f29726h;

        public h(boolean z10) throws IOException {
            this.f29726h = z10;
        }

        public a i() throws IOException {
            return new a(this, null);
        }

        public h j(Protocol protocol) {
            this.f29724f = protocol;
            return this;
        }

        public h k(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.f29719a = socket;
            this.f29720b = str;
            this.f29721c = bufferedSource;
            this.f29722d = bufferedSink;
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        public static final i f29727a = new C0294a();

        /* renamed from: com.squareup.okhttp.internal.framed.a$i$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static class C0294a extends i {
            C0294a() {
            }

            @Override // com.squareup.okhttp.internal.framed.a.i
            public void b(com.squareup.okhttp.internal.framed.b bVar) throws IOException {
                bVar.l(ErrorCode.REFUSED_STREAM);
            }
        }

        public void a(a aVar) {
        }

        public abstract void b(com.squareup.okhttp.internal.framed.b bVar) throws IOException;
    }

    /* loaded from: classes4.dex */
    class j extends com.squareup.okhttp.internal.e implements FrameReader.Handler {

        /* renamed from: a  reason: collision with root package name */
        final FrameReader f29728a;

        /* renamed from: com.squareup.okhttp.internal.framed.a$j$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0295a extends com.squareup.okhttp.internal.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.squareup.okhttp.internal.framed.b f29730a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0295a(String str, Object[] objArr, com.squareup.okhttp.internal.framed.b bVar) {
                super(str, objArr);
                this.f29730a = bVar;
            }

            @Override // com.squareup.okhttp.internal.e
            public void execute() {
                try {
                    a.this.f29672c.b(this.f29730a);
                } catch (IOException e10) {
                    Logger logger = com.squareup.okhttp.internal.d.logger;
                    Level level = Level.INFO;
                    logger.log(level, "FramedConnection.Listener failure for " + a.this.f29674e, (Throwable) e10);
                    try {
                        this.f29730a.l(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* loaded from: classes4.dex */
        class b extends com.squareup.okhttp.internal.e {
            b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // com.squareup.okhttp.internal.e
            public void execute() {
                a.this.f29672c.a(a.this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class c extends com.squareup.okhttp.internal.e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.squareup.okhttp.internal.framed.i f29733a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(String str, Object[] objArr, com.squareup.okhttp.internal.framed.i iVar) {
                super(str, objArr);
                this.f29733a = iVar;
            }

            @Override // com.squareup.okhttp.internal.e
            public void execute() {
                try {
                    a.this.f29690u.ackSettings(this.f29733a);
                } catch (IOException unused) {
                }
            }
        }

        /* synthetic */ j(a aVar, FrameReader frameReader, C0293a c0293a) {
            this(frameReader);
        }

        private void b(com.squareup.okhttp.internal.framed.i iVar) {
            a.f29669x.execute(new c("OkHttp %s ACK Settings", new Object[]{a.this.f29674e}, iVar));
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void ackSettings() {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void alternateService(int i9, String str, ByteString byteString, String str2, int i10, long j10) {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void data(boolean z10, int i9, BufferedSource bufferedSource, int i10) throws IOException {
            if (a.this.Y(i9)) {
                a.this.U(i9, bufferedSource, i10, z10);
                return;
            }
            com.squareup.okhttp.internal.framed.b N = a.this.N(i9);
            if (N == null) {
                a.this.p0(i9, ErrorCode.INVALID_STREAM);
                bufferedSource.skip(i10);
                return;
            }
            N.v(bufferedSource, i10);
            if (z10) {
                N.w();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.squareup.okhttp.internal.e
        protected void execute() {
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    try {
                        if (!a.this.f29671b) {
                            this.f29728a.readConnectionPreface();
                        }
                        while (this.f29728a.nextFrame(this)) {
                        }
                        ErrorCode errorCode4 = ErrorCode.NO_ERROR;
                        try {
                            errorCode3 = ErrorCode.CANCEL;
                            a.this.L(errorCode4, errorCode3);
                            errorCode2 = errorCode4;
                        } catch (IOException unused) {
                            errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            a aVar = a.this;
                            aVar.L(errorCode3, errorCode3);
                            errorCode2 = aVar;
                            com.squareup.okhttp.internal.i.c(this.f29728a);
                        }
                    } catch (Throwable th2) {
                        errorCode = errorCode2;
                        th = th2;
                        try {
                            a.this.L(errorCode, errorCode3);
                        } catch (IOException unused2) {
                        }
                        com.squareup.okhttp.internal.i.c(this.f29728a);
                        throw th;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    th = th3;
                    errorCode = errorCode3;
                    a.this.L(errorCode, errorCode3);
                    com.squareup.okhttp.internal.i.c(this.f29728a);
                    throw th;
                }
            } catch (IOException unused4) {
            }
            com.squareup.okhttp.internal.i.c(this.f29728a);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void goAway(int i9, ErrorCode errorCode, ByteString byteString) {
            com.squareup.okhttp.internal.framed.b[] bVarArr;
            byteString.size();
            synchronized (a.this) {
                bVarArr = (com.squareup.okhttp.internal.framed.b[]) a.this.f29673d.values().toArray(new com.squareup.okhttp.internal.framed.b[a.this.f29673d.size()]);
                a.this.f29677h = true;
            }
            for (com.squareup.okhttp.internal.framed.b bVar : bVarArr) {
                if (bVar.o() > i9 && bVar.s()) {
                    bVar.y(ErrorCode.REFUSED_STREAM);
                    a.this.c0(bVar.o());
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void headers(boolean z10, boolean z11, int i9, int i10, List<com.squareup.okhttp.internal.framed.c> list, HeadersMode headersMode) {
            if (a.this.Y(i9)) {
                a.this.V(i9, list, z11);
                return;
            }
            synchronized (a.this) {
                if (a.this.f29677h) {
                    return;
                }
                com.squareup.okhttp.internal.framed.b N = a.this.N(i9);
                if (N == null) {
                    if (headersMode.failIfStreamAbsent()) {
                        a.this.p0(i9, ErrorCode.INVALID_STREAM);
                    } else if (i9 <= a.this.f29675f) {
                    } else {
                        if (i9 % 2 == a.this.f29676g % 2) {
                            return;
                        }
                        com.squareup.okhttp.internal.framed.b bVar = new com.squareup.okhttp.internal.framed.b(i9, a.this, z10, z11, list);
                        a.this.f29675f = i9;
                        a.this.f29673d.put(Integer.valueOf(i9), bVar);
                        a.f29669x.execute(new C0295a("OkHttp %s stream %d", new Object[]{a.this.f29674e, Integer.valueOf(i9)}, bVar));
                    }
                } else if (headersMode.failIfStreamPresent()) {
                    N.n(ErrorCode.PROTOCOL_ERROR);
                    a.this.c0(i9);
                } else {
                    N.x(list, headersMode);
                    if (z11) {
                        N.w();
                    }
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void ping(boolean z10, int i9, int i10) {
            if (z10) {
                com.squareup.okhttp.internal.framed.h Z = a.this.Z(i9);
                if (Z != null) {
                    Z.b();
                    return;
                }
                return;
            }
            a.this.j0(true, i9, i10, null);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void priority(int i9, int i10, int i11, boolean z10) {
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void pushPromise(int i9, int i10, List<com.squareup.okhttp.internal.framed.c> list) {
            a.this.W(i10, list);
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void rstStream(int i9, ErrorCode errorCode) {
            if (a.this.Y(i9)) {
                a.this.X(i9, errorCode);
                return;
            }
            com.squareup.okhttp.internal.framed.b c02 = a.this.c0(i9);
            if (c02 != null) {
                c02.y(errorCode);
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void settings(boolean z10, com.squareup.okhttp.internal.framed.i iVar) {
            com.squareup.okhttp.internal.framed.b[] bVarArr;
            long j10;
            int i9;
            synchronized (a.this) {
                int e10 = a.this.f29686q.e(65536);
                if (z10) {
                    a.this.f29686q.a();
                }
                a.this.f29686q.j(iVar);
                if (a.this.M() == Protocol.HTTP_2) {
                    b(iVar);
                }
                int e11 = a.this.f29686q.e(65536);
                bVarArr = null;
                if (e11 == -1 || e11 == e10) {
                    j10 = 0;
                } else {
                    j10 = e11 - e10;
                    if (!a.this.f29687r) {
                        a.this.K(j10);
                        a.this.f29687r = true;
                    }
                    if (!a.this.f29673d.isEmpty()) {
                        bVarArr = (com.squareup.okhttp.internal.framed.b[]) a.this.f29673d.values().toArray(new com.squareup.okhttp.internal.framed.b[a.this.f29673d.size()]);
                    }
                }
                a.f29669x.execute(new b("OkHttp %s settings", a.this.f29674e));
            }
            if (bVarArr == null || j10 == 0) {
                return;
            }
            for (com.squareup.okhttp.internal.framed.b bVar : bVarArr) {
                synchronized (bVar) {
                    bVar.i(j10);
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.FrameReader.Handler
        public void windowUpdate(int i9, long j10) {
            if (i9 == 0) {
                synchronized (a.this) {
                    a aVar = a.this;
                    aVar.f29684o += j10;
                    aVar.notifyAll();
                }
                return;
            }
            com.squareup.okhttp.internal.framed.b N = a.this.N(i9);
            if (N != null) {
                synchronized (N) {
                    N.i(j10);
                }
            }
        }

        private j(FrameReader frameReader) {
            super("OkHttp %s", a.this.f29674e);
            this.f29728a = frameReader;
        }
    }

    /* synthetic */ a(h hVar, C0293a c0293a) throws IOException {
        this(hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(ErrorCode errorCode, ErrorCode errorCode2) throws IOException {
        int i9;
        com.squareup.okhttp.internal.framed.b[] bVarArr;
        com.squareup.okhttp.internal.framed.h[] hVarArr = null;
        try {
            g0(errorCode);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            if (this.f29673d.isEmpty()) {
                bVarArr = null;
            } else {
                bVarArr = (com.squareup.okhttp.internal.framed.b[]) this.f29673d.values().toArray(new com.squareup.okhttp.internal.framed.b[this.f29673d.size()]);
                this.f29673d.clear();
                f0(false);
            }
            Map<Integer, com.squareup.okhttp.internal.framed.h> map = this.f29680k;
            if (map != null) {
                this.f29680k = null;
                hVarArr = (com.squareup.okhttp.internal.framed.h[]) map.values().toArray(new com.squareup.okhttp.internal.framed.h[this.f29680k.size()]);
            }
        }
        if (bVarArr != null) {
            for (com.squareup.okhttp.internal.framed.b bVar : bVarArr) {
                try {
                    bVar.l(errorCode2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        if (hVarArr != null) {
            for (com.squareup.okhttp.internal.framed.h hVar : hVarArr) {
                hVar.a();
            }
        }
        try {
            this.f29690u.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f29689t.close();
        } catch (IOException e13) {
            e = e13;
        }
        if (e != null) {
            throw e;
        }
    }

    private com.squareup.okhttp.internal.framed.b R(int i9, List<com.squareup.okhttp.internal.framed.c> list, boolean z10, boolean z11) throws IOException {
        int i10;
        com.squareup.okhttp.internal.framed.b bVar;
        boolean z12 = !z10;
        boolean z13 = !z11;
        synchronized (this.f29690u) {
            synchronized (this) {
                if (!this.f29677h) {
                    i10 = this.f29676g;
                    this.f29676g = i10 + 2;
                    bVar = new com.squareup.okhttp.internal.framed.b(i10, this, z12, z13, list);
                    if (bVar.t()) {
                        this.f29673d.put(Integer.valueOf(i10), bVar);
                        f0(false);
                    }
                } else {
                    throw new IOException("shutdown");
                }
            }
            if (i9 == 0) {
                this.f29690u.synStream(z12, z13, i10, i9, list);
            } else if (!this.f29671b) {
                this.f29690u.pushPromise(i9, i10, list);
            } else {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            }
        }
        if (!z10) {
            this.f29690u.flush();
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(int i9, BufferedSource bufferedSource, int i10, boolean z10) throws IOException {
        Buffer buffer = new Buffer();
        long j10 = i10;
        bufferedSource.require(j10);
        bufferedSource.read(buffer, j10);
        if (buffer.size() == j10) {
            this.f29679j.execute(new f("OkHttp %s Push Data[%s]", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, buffer, i10, z10));
            return;
        }
        throw new IOException(buffer.size() + " != " + i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void V(int i9, List<com.squareup.okhttp.internal.framed.c> list, boolean z10) {
        this.f29679j.execute(new e("OkHttp %s Push Headers[%s]", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, list, z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W(int i9, List<com.squareup.okhttp.internal.framed.c> list) {
        synchronized (this) {
            if (this.f29692w.contains(Integer.valueOf(i9))) {
                p0(i9, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.f29692w.add(Integer.valueOf(i9));
            this.f29679j.execute(new d("OkHttp %s Push Request[%s]", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, list));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(int i9, ErrorCode errorCode) {
        this.f29679j.execute(new g("OkHttp %s Push Reset[%s]", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, errorCode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y(int i9) {
        return this.f29670a == Protocol.HTTP_2 && i9 != 0 && (i9 & 1) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized com.squareup.okhttp.internal.framed.h Z(int i9) {
        Map<Integer, com.squareup.okhttp.internal.framed.h> map;
        map = this.f29680k;
        return map != null ? map.remove(Integer.valueOf(i9)) : null;
    }

    private synchronized void f0(boolean z10) {
        long nanoTime;
        if (z10) {
            try {
                nanoTime = System.nanoTime();
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            nanoTime = Long.MAX_VALUE;
        }
        this.f29678i = nanoTime;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(boolean z10, int i9, int i10, com.squareup.okhttp.internal.framed.h hVar) throws IOException {
        synchronized (this.f29690u) {
            if (hVar != null) {
                hVar.c();
            }
            this.f29690u.ping(z10, i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(boolean z10, int i9, int i10, com.squareup.okhttp.internal.framed.h hVar) {
        f29669x.execute(new c("OkHttp %s ping %08x%08x", new Object[]{this.f29674e, Integer.valueOf(i9), Integer.valueOf(i10)}, z10, i9, i10, hVar));
    }

    void K(long j10) {
        this.f29684o += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public Protocol M() {
        return this.f29670a;
    }

    synchronized com.squareup.okhttp.internal.framed.b N(int i9) {
        return this.f29673d.get(Integer.valueOf(i9));
    }

    public synchronized int P() {
        return this.f29686q.f(Integer.MAX_VALUE);
    }

    public com.squareup.okhttp.internal.framed.b T(List<com.squareup.okhttp.internal.framed.c> list, boolean z10, boolean z11) throws IOException {
        return R(0, list, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized com.squareup.okhttp.internal.framed.b c0(int i9) {
        com.squareup.okhttp.internal.framed.b remove;
        remove = this.f29673d.remove(Integer.valueOf(i9));
        if (remove != null && this.f29673d.isEmpty()) {
            f0(true);
        }
        notifyAll();
        return remove;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        L(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void d0() throws IOException {
        this.f29690u.connectionPreface();
        this.f29690u.settings(this.f29685p);
        int e10 = this.f29685p.e(65536);
        if (e10 != 65536) {
            this.f29690u.windowUpdate(0, e10 - 65536);
        }
    }

    public void flush() throws IOException {
        this.f29690u.flush();
    }

    public void g0(ErrorCode errorCode) throws IOException {
        synchronized (this.f29690u) {
            synchronized (this) {
                if (this.f29677h) {
                    return;
                }
                this.f29677h = true;
                this.f29690u.goAway(this.f29675f, errorCode, com.squareup.okhttp.internal.i.f29845a);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.f29690u.maxDataLength());
        r6 = r3;
        r8.f29684o -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void h0(int r9, boolean r10, okio.Buffer r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            com.squareup.okhttp.internal.framed.FrameWriter r12 = r8.f29690u
            r12.data(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L61
            monitor-enter(r8)
        L12:
            long r3 = r8.f29684o     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L31
            java.util.Map<java.lang.Integer, com.squareup.okhttp.internal.framed.b> r3 = r8.f29673d     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            if (r3 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L57 java.lang.InterruptedException -> L59
        L31:
            long r3 = java.lang.Math.min(r12, r3)     // Catch: java.lang.Throwable -> L57
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L57
            com.squareup.okhttp.internal.framed.FrameWriter r3 = r8.f29690u     // Catch: java.lang.Throwable -> L57
            int r3 = r3.maxDataLength()     // Catch: java.lang.Throwable -> L57
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L57
            long r4 = r8.f29684o     // Catch: java.lang.Throwable -> L57
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L57
            long r4 = r4 - r6
            r8.f29684o = r4     // Catch: java.lang.Throwable -> L57
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L57
            long r12 = r12 - r6
            com.squareup.okhttp.internal.framed.FrameWriter r4 = r8.f29690u
            if (r10 == 0) goto L52
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L52
            r5 = 1
            goto L53
        L52:
            r5 = 0
        L53:
            r4.data(r5, r9, r11, r3)
            goto Ld
        L57:
            r9 = move-exception
            goto L5f
        L59:
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L57
            r9.<init>()     // Catch: java.lang.Throwable -> L57
            throw r9     // Catch: java.lang.Throwable -> L57
        L5f:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L57
            throw r9
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.a.h0(int, boolean, okio.Buffer, long):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l0(int i9, ErrorCode errorCode) throws IOException {
        this.f29690u.rstStream(i9, errorCode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p0(int i9, ErrorCode errorCode) {
        f29669x.submit(new C0293a("OkHttp %s stream %d", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, errorCode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r0(int i9, long j10) {
        f29669x.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f29674e, Integer.valueOf(i9)}, i9, j10));
    }

    private a(h hVar) throws IOException {
        this.f29673d = new HashMap();
        this.f29678i = System.nanoTime();
        this.f29683n = 0L;
        this.f29685p = new com.squareup.okhttp.internal.framed.i();
        com.squareup.okhttp.internal.framed.i iVar = new com.squareup.okhttp.internal.framed.i();
        this.f29686q = iVar;
        this.f29687r = false;
        this.f29692w = new LinkedHashSet();
        Protocol protocol = hVar.f29724f;
        this.f29670a = protocol;
        this.f29681l = hVar.f29725g;
        boolean z10 = hVar.f29726h;
        this.f29671b = z10;
        this.f29672c = hVar.f29723e;
        this.f29676g = hVar.f29726h ? 1 : 2;
        if (hVar.f29726h && protocol == Protocol.HTTP_2) {
            this.f29676g += 2;
        }
        this.f29682m = hVar.f29726h ? 1 : 2;
        if (hVar.f29726h) {
            this.f29685p.l(7, 0, 16777216);
        }
        String str = hVar.f29720b;
        this.f29674e = str;
        if (protocol == Protocol.HTTP_2) {
            this.f29688s = new com.squareup.okhttp.internal.framed.e();
            this.f29679j = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.squareup.okhttp.internal.i.s(String.format("OkHttp %s Push Observer", str), true));
            iVar.l(7, 0, 65535);
            iVar.l(5, 0, 16384);
        } else if (protocol == Protocol.SPDY_3) {
            this.f29688s = new com.squareup.okhttp.internal.framed.j();
            this.f29679j = null;
        } else {
            throw new AssertionError(protocol);
        }
        this.f29684o = iVar.e(65536);
        this.f29689t = hVar.f29719a;
        this.f29690u = this.f29688s.newWriter(hVar.f29722d, z10);
        j jVar = new j(this, this.f29688s.newReader(hVar.f29721c, z10), null);
        this.f29691v = jVar;
        new Thread(jVar).start();
    }
}
