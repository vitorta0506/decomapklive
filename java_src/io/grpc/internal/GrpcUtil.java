package io.grpc.internal;

import androidx.exifinterface.media.ExifInterface;
import io.grpc.MethodDescriptor;
import io.grpc.ProxiedSocketAddress;
import io.grpc.Status;
import io.grpc.c;
import io.grpc.h0;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.f2;
import io.grpc.internal.k2;
import io.grpc.k;
import io.grpc.n0;
import io.grpc.s0;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public final class GrpcUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f42342a = Logger.getLogger(GrpcUtil.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f42343b = Charset.forName("US-ASCII");

    /* renamed from: c  reason: collision with root package name */
    public static final s0.i<Long> f42344c = s0.i.e("grpc-timeout", new i());

    /* renamed from: d  reason: collision with root package name */
    public static final s0.i<String> f42345d;

    /* renamed from: e  reason: collision with root package name */
    public static final s0.i<byte[]> f42346e;

    /* renamed from: f  reason: collision with root package name */
    public static final s0.i<String> f42347f;

    /* renamed from: g  reason: collision with root package name */
    public static final s0.i<byte[]> f42348g;

    /* renamed from: h  reason: collision with root package name */
    static final s0.i<String> f42349h;

    /* renamed from: i  reason: collision with root package name */
    public static final s0.i<String> f42350i;

    /* renamed from: j  reason: collision with root package name */
    public static final s0.i<String> f42351j;

    /* renamed from: k  reason: collision with root package name */
    public static final s0.i<String> f42352k;

    /* renamed from: l  reason: collision with root package name */
    public static final com.google.common.base.t f42353l;

    /* renamed from: m  reason: collision with root package name */
    public static final long f42354m;

    /* renamed from: n  reason: collision with root package name */
    public static final long f42355n;

    /* renamed from: o  reason: collision with root package name */
    public static final long f42356o;

    /* renamed from: p  reason: collision with root package name */
    public static final io.grpc.z0 f42357p;

    /* renamed from: q  reason: collision with root package name */
    public static final io.grpc.z0 f42358q;

    /* renamed from: r  reason: collision with root package name */
    public static final c.a<Boolean> f42359r;

    /* renamed from: s  reason: collision with root package name */
    private static final io.grpc.k f42360s;

    /* renamed from: t  reason: collision with root package name */
    public static final f2.d<Executor> f42361t;

    /* renamed from: u  reason: collision with root package name */
    public static final f2.d<ScheduledExecutorService> f42362u;

    /* renamed from: v  reason: collision with root package name */
    public static final com.google.common.base.w<com.google.common.base.u> f42363v;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum NO_ERROR uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes5.dex */
    public static final class Http2Error {
        private static final /* synthetic */ Http2Error[] $VALUES;
        public static final Http2Error CANCEL;
        public static final Http2Error COMPRESSION_ERROR;
        public static final Http2Error CONNECT_ERROR;
        public static final Http2Error ENHANCE_YOUR_CALM;
        public static final Http2Error FLOW_CONTROL_ERROR;
        public static final Http2Error FRAME_SIZE_ERROR;
        public static final Http2Error HTTP_1_1_REQUIRED;
        public static final Http2Error INADEQUATE_SECURITY;
        public static final Http2Error INTERNAL_ERROR;
        public static final Http2Error NO_ERROR;
        public static final Http2Error PROTOCOL_ERROR;
        public static final Http2Error REFUSED_STREAM;
        public static final Http2Error SETTINGS_TIMEOUT;
        public static final Http2Error STREAM_CLOSED;
        private static final Http2Error[] codeMap;
        private final int code;
        private final Status status;

        static {
            Status status = Status.f41719u;
            Http2Error http2Error = new Http2Error("NO_ERROR", 0, 0, status);
            NO_ERROR = http2Error;
            Status status2 = Status.f41718t;
            Http2Error http2Error2 = new Http2Error("PROTOCOL_ERROR", 1, 1, status2);
            PROTOCOL_ERROR = http2Error2;
            Http2Error http2Error3 = new Http2Error("INTERNAL_ERROR", 2, 2, status2);
            INTERNAL_ERROR = http2Error3;
            Http2Error http2Error4 = new Http2Error("FLOW_CONTROL_ERROR", 3, 3, status2);
            FLOW_CONTROL_ERROR = http2Error4;
            Http2Error http2Error5 = new Http2Error("SETTINGS_TIMEOUT", 4, 4, status2);
            SETTINGS_TIMEOUT = http2Error5;
            Http2Error http2Error6 = new Http2Error("STREAM_CLOSED", 5, 5, status2);
            STREAM_CLOSED = http2Error6;
            Http2Error http2Error7 = new Http2Error("FRAME_SIZE_ERROR", 6, 6, status2);
            FRAME_SIZE_ERROR = http2Error7;
            Http2Error http2Error8 = new Http2Error("REFUSED_STREAM", 7, 7, status);
            REFUSED_STREAM = http2Error8;
            Http2Error http2Error9 = new Http2Error("CANCEL", 8, 8, Status.f41705g);
            CANCEL = http2Error9;
            Http2Error http2Error10 = new Http2Error("COMPRESSION_ERROR", 9, 9, status2);
            COMPRESSION_ERROR = http2Error10;
            Http2Error http2Error11 = new Http2Error("CONNECT_ERROR", 10, 10, status2);
            CONNECT_ERROR = http2Error11;
            Http2Error http2Error12 = new Http2Error("ENHANCE_YOUR_CALM", 11, 11, Status.f41713o.r("Bandwidth exhausted"));
            ENHANCE_YOUR_CALM = http2Error12;
            Http2Error http2Error13 = new Http2Error("INADEQUATE_SECURITY", 12, 12, Status.f41711m.r("Permission denied as protocol is not secure enough to call"));
            INADEQUATE_SECURITY = http2Error13;
            Http2Error http2Error14 = new Http2Error("HTTP_1_1_REQUIRED", 13, 13, Status.f41706h);
            HTTP_1_1_REQUIRED = http2Error14;
            $VALUES = new Http2Error[]{http2Error, http2Error2, http2Error3, http2Error4, http2Error5, http2Error6, http2Error7, http2Error8, http2Error9, http2Error10, http2Error11, http2Error12, http2Error13, http2Error14};
            codeMap = buildHttp2CodeMap();
        }

        private Http2Error(String str, int i9, int i10, Status status) {
            this.code = i10;
            String str2 = "HTTP/2 error code: " + name();
            if (status.o() != null) {
                str2 = str2 + " (" + status.o() + ")";
            }
            this.status = status.r(str2);
        }

        private static Http2Error[] buildHttp2CodeMap() {
            Http2Error[] values = values();
            Http2Error[] http2ErrorArr = new Http2Error[((int) values[values.length - 1].code()) + 1];
            for (Http2Error http2Error : values) {
                http2ErrorArr[(int) http2Error.code()] = http2Error;
            }
            return http2ErrorArr;
        }

        public static Http2Error forCode(long j10) {
            Http2Error[] http2ErrorArr = codeMap;
            if (j10 >= http2ErrorArr.length || j10 < 0) {
                return null;
            }
            return http2ErrorArr[(int) j10];
        }

        public static Status statusForCode(long j10) {
            Http2Error forCode = forCode(j10);
            if (forCode == null) {
                Status i9 = Status.i(INTERNAL_ERROR.status().n().value());
                return i9.r("Unrecognized HTTP/2 error code: " + j10);
            }
            return forCode.status();
        }

        public static Http2Error valueOf(String str) {
            return (Http2Error) Enum.valueOf(Http2Error.class, str);
        }

        public static Http2Error[] values() {
            return (Http2Error[]) $VALUES.clone();
        }

        public long code() {
            return this.code;
        }

        public Status status() {
            return this.status;
        }
    }

    /* loaded from: classes5.dex */
    class a implements io.grpc.z0 {
        a() {
        }

        @Override // io.grpc.z0
        public ProxiedSocketAddress a(SocketAddress socketAddress) {
            return null;
        }
    }

    /* loaded from: classes5.dex */
    class b extends io.grpc.k {
        b() {
        }
    }

    /* loaded from: classes5.dex */
    class c implements f2.d<Executor> {
        c() {
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: c */
        public void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: d */
        public Executor a() {
            return Executors.newCachedThreadPool(GrpcUtil.k("grpc-default-executor-%d", true));
        }

        public String toString() {
            return "grpc-default-executor";
        }
    }

    /* loaded from: classes5.dex */
    class d implements f2.d<ScheduledExecutorService> {
        d() {
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: c */
        public void b(ScheduledExecutorService scheduledExecutorService) {
            scheduledExecutorService.shutdown();
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: d */
        public ScheduledExecutorService a() {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, GrpcUtil.k("grpc-timer-%d", true));
            try {
                newScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(newScheduledThreadPool, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new RuntimeException(e11);
            }
            return Executors.unconfigurableScheduledExecutorService(newScheduledThreadPool);
        }
    }

    /* loaded from: classes5.dex */
    class e implements com.google.common.base.w<com.google.common.base.u> {
        e() {
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public com.google.common.base.u get() {
            return com.google.common.base.u.c();
        }
    }

    /* loaded from: classes5.dex */
    class f implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k.a f42364a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r f42365b;

        f(k.a aVar, r rVar) {
            this.f42364a = aVar;
            this.f42365b = rVar;
        }

        @Override // io.grpc.l0
        public io.grpc.g0 c() {
            return this.f42365b.c();
        }

        @Override // io.grpc.internal.r
        public q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
            io.grpc.k a10 = this.f42364a.a(k.b.a().b(cVar).a(), s0Var);
            com.google.common.base.o.A(kVarArr[kVarArr.length - 1] == GrpcUtil.f42360s, "lb tracer already assigned");
            kVarArr[kVarArr.length - 1] = a10;
            return this.f42365b.e(methodDescriptor, s0Var, cVar, kVarArr);
        }
    }

    /* loaded from: classes5.dex */
    private static final class g implements h0.a<byte[]> {
        private g() {
        }

        /* synthetic */ g(a aVar) {
            this();
        }

        @Override // io.grpc.s0.l
        /* renamed from: c */
        public byte[] b(byte[] bArr) {
            return bArr;
        }

        @Override // io.grpc.s0.l
        /* renamed from: d */
        public byte[] a(byte[] bArr) {
            return bArr;
        }
    }

    /* loaded from: classes5.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        private final String f42366a;

        /* renamed from: b  reason: collision with root package name */
        private final String f42367b;

        /* synthetic */ h(String str, String str2, a aVar) {
            this(str, str2);
        }

        public String a() {
            return this.f42367b;
        }

        public String b() {
            return this.f42366a;
        }

        public String toString() {
            return this.f42366a + " " + this.f42367b;
        }

        private h(String str, String str2) {
            this.f42366a = (String) com.google.common.base.o.t(str, "userAgentName");
            this.f42367b = (String) com.google.common.base.o.t(str2, "implementationVersion");
        }
    }

    /* loaded from: classes5.dex */
    static class i implements s0.d<Long> {
        i() {
        }

        @Override // io.grpc.s0.d
        /* renamed from: c */
        public Long b(String str) {
            com.google.common.base.o.e(str.length() > 0, "empty timeout");
            com.google.common.base.o.e(str.length() <= 9, "bad timeout format");
            long parseLong = Long.parseLong(str.substring(0, str.length() - 1));
            char charAt = str.charAt(str.length() - 1);
            if (charAt != 'H') {
                if (charAt != 'M') {
                    if (charAt != 'S') {
                        if (charAt != 'u') {
                            if (charAt != 'm') {
                                if (charAt == 'n') {
                                    return Long.valueOf(parseLong);
                                }
                                throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(charAt)));
                            }
                            return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(parseLong));
                        }
                        return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(parseLong));
                    }
                    return Long.valueOf(TimeUnit.SECONDS.toNanos(parseLong));
                }
                return Long.valueOf(TimeUnit.MINUTES.toNanos(parseLong));
            }
            return Long.valueOf(TimeUnit.HOURS.toNanos(parseLong));
        }

        @Override // io.grpc.s0.d
        /* renamed from: d */
        public String a(Long l10) {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            if (l10.longValue() >= 0) {
                if (l10.longValue() < 100000000) {
                    return l10 + "n";
                } else if (l10.longValue() < 100000000000L) {
                    return timeUnit.toMicros(l10.longValue()) + "u";
                } else if (l10.longValue() < 100000000000000L) {
                    return timeUnit.toMillis(l10.longValue()) + "m";
                } else if (l10.longValue() < 100000000000000000L) {
                    return timeUnit.toSeconds(l10.longValue()) + ExifInterface.LATITUDE_SOUTH;
                } else if (l10.longValue() < 6000000000000000000L) {
                    return timeUnit.toMinutes(l10.longValue()) + "M";
                } else {
                    return timeUnit.toHours(l10.longValue()) + "H";
                }
            }
            throw new IllegalArgumentException("Timeout too small");
        }
    }

    static {
        s0.d<String> dVar = io.grpc.s0.f45383e;
        f42345d = s0.i.e("grpc-encoding", dVar);
        f42346e = io.grpc.h0.b("grpc-accept-encoding", new g(null));
        f42347f = s0.i.e("content-encoding", dVar);
        f42348g = io.grpc.h0.b("accept-encoding", new g(null));
        f42349h = s0.i.e("content-length", dVar);
        f42350i = s0.i.e("content-type", dVar);
        f42351j = s0.i.e("te", dVar);
        f42352k = s0.i.e("user-agent", dVar);
        f42353l = com.google.common.base.t.f(',').l();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f42354m = timeUnit.toNanos(20L);
        f42355n = TimeUnit.HOURS.toNanos(2L);
        f42356o = timeUnit.toNanos(20L);
        f42357p = new u1();
        f42358q = new a();
        f42359r = c.a.b("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
        f42360s = new b();
        f42361t = new c();
        f42362u = new d();
        f42363v = new e();
    }

    private GrpcUtil() {
    }

    public static String b(String str, int i9) {
        try {
            return new URI(null, null, str, i9, null, null, null).getAuthority();
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException("Invalid host or port: " + str + " " + i9, e10);
        }
    }

    public static URI c(String str) {
        com.google.common.base.o.t(str, "authority");
        try {
            return new URI(null, str, null, null, null);
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException("Invalid authority: " + str, e10);
        }
    }

    public static String d(String str) {
        URI c10 = c(str);
        com.google.common.base.o.m(c10.getHost() != null, "No host in authority '%s'", str);
        com.google.common.base.o.m(c10.getUserInfo() == null, "Userinfo must not be present on authority: '%s'", str);
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(k2.a aVar) {
        while (true) {
            InputStream next = aVar.next();
            if (next == null) {
                return;
            }
            f(next);
        }
    }

    public static void f(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e10) {
            f42342a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e10);
        }
    }

    public static io.grpc.k[] g(io.grpc.c cVar, io.grpc.s0 s0Var, int i9, boolean z10) {
        List<k.a> i10 = cVar.i();
        int size = i10.size() + 1;
        io.grpc.k[] kVarArr = new io.grpc.k[size];
        k.b a10 = k.b.a().b(cVar).d(i9).c(z10).a();
        for (int i11 = 0; i11 < i10.size(); i11++) {
            kVarArr[i11] = i10.get(i11).a(a10, s0Var);
        }
        kVarArr[size - 1] = f42360s;
        return kVarArr;
    }

    public static h h() {
        return new h("gRPC Java", "1.45.1", null);
    }

    public static String i(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        if (str2 != null) {
            sb2.append(str2);
            sb2.append(' ');
        }
        sb2.append("grpc-java-");
        sb2.append(str);
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append("1.45.1");
        return sb2.toString();
    }

    public static String j(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", new Class[0]).invoke(inetSocketAddress, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return inetSocketAddress.getHostName();
        }
    }

    public static ThreadFactory k(String str, boolean z10) {
        return new com.google.common.util.concurrent.l0().e(z10).f(str).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r l(n0.e eVar, boolean z10) {
        n0.h c10 = eVar.c();
        r a10 = c10 != null ? ((o2) c10.f()).a() : null;
        if (a10 != null) {
            k.a b10 = eVar.b();
            return b10 == null ? a10 : new f(b10, a10);
        }
        if (!eVar.a().p()) {
            if (eVar.d()) {
                return new g0(eVar.a(), ClientStreamListener.RpcProgress.DROPPED);
            }
            if (!z10) {
                return new g0(eVar.a(), ClientStreamListener.RpcProgress.PROCESSED);
            }
        }
        return null;
    }

    private static Status.Code m(int i9) {
        if (i9 >= 100 && i9 < 200) {
            return Status.Code.INTERNAL;
        }
        if (i9 != 400) {
            if (i9 != 401) {
                if (i9 != 403) {
                    if (i9 != 404) {
                        if (i9 != 429) {
                            if (i9 != 431) {
                                switch (i9) {
                                    case 502:
                                    case 503:
                                    case 504:
                                        break;
                                    default:
                                        return Status.Code.UNKNOWN;
                                }
                            }
                        }
                        return Status.Code.UNAVAILABLE;
                    }
                    return Status.Code.UNIMPLEMENTED;
                }
                return Status.Code.PERMISSION_DENIED;
            }
            return Status.Code.UNAUTHENTICATED;
        }
        return Status.Code.INTERNAL;
    }

    public static Status n(int i9) {
        Status status = m(i9).toStatus();
        return status.r("HTTP status code " + i9);
    }

    public static boolean o(String str) {
        char charAt;
        if (str != null && 16 <= str.length()) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.startsWith("application/grpc")) {
                return lowerCase.length() == 16 || (charAt = lowerCase.charAt(16)) == '+' || charAt == ';';
            }
            return false;
        }
        return false;
    }

    public static boolean p(io.grpc.c cVar) {
        return !Boolean.TRUE.equals(cVar.h(f42359r));
    }
}
