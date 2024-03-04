package io.grpc.netty.shaded.io.netty.handler.codec.http;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
/* loaded from: classes5.dex */
public class h0 implements Comparable<h0> {

    /* renamed from: a  reason: collision with root package name */
    private final int f43947a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.c f43948b;

    /* renamed from: c  reason: collision with root package name */
    private HttpStatusClass f43949c;

    /* renamed from: d  reason: collision with root package name */
    private final String f43950d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f43951e;

    /* renamed from: f  reason: collision with root package name */
    public static final h0 f43926f = e(100, "Continue");

    /* renamed from: g  reason: collision with root package name */
    public static final h0 f43927g = e(101, "Switching Protocols");

    /* renamed from: h  reason: collision with root package name */
    public static final h0 f43928h = e(102, "Processing");

    /* renamed from: i  reason: collision with root package name */
    public static final h0 f43929i = e(200, "OK");

    /* renamed from: j  reason: collision with root package name */
    public static final h0 f43930j = e(201, "Created");

    /* renamed from: k  reason: collision with root package name */
    public static final h0 f43931k = e(202, "Accepted");

    /* renamed from: l  reason: collision with root package name */
    public static final h0 f43932l = e(203, "Non-Authoritative Information");

    /* renamed from: m  reason: collision with root package name */
    public static final h0 f43933m = e(204, "No Content");

    /* renamed from: n  reason: collision with root package name */
    public static final h0 f43934n = e(205, "Reset Content");

    /* renamed from: o  reason: collision with root package name */
    public static final h0 f43935o = e(206, "Partial Content");

    /* renamed from: p  reason: collision with root package name */
    public static final h0 f43936p = e(207, "Multi-Status");

    /* renamed from: q  reason: collision with root package name */
    public static final h0 f43937q = e(300, "Multiple Choices");

    /* renamed from: r  reason: collision with root package name */
    public static final h0 f43938r = e(301, "Moved Permanently");

    /* renamed from: s  reason: collision with root package name */
    public static final h0 f43939s = e(302, "Found");

    /* renamed from: t  reason: collision with root package name */
    public static final h0 f43940t = e(303, "See Other");

    /* renamed from: u  reason: collision with root package name */
    public static final h0 f43941u = e(304, "Not Modified");

    /* renamed from: v  reason: collision with root package name */
    public static final h0 f43942v = e(305, "Use Proxy");

    /* renamed from: w  reason: collision with root package name */
    public static final h0 f43943w = e(307, "Temporary Redirect");

    /* renamed from: x  reason: collision with root package name */
    public static final h0 f43944x = e(308, "Permanent Redirect");

    /* renamed from: y  reason: collision with root package name */
    public static final h0 f43945y = e(400, "Bad Request");

    /* renamed from: z  reason: collision with root package name */
    public static final h0 f43946z = e(401, "Unauthorized");
    public static final h0 A = e(402, "Payment Required");
    public static final h0 B = e(403, "Forbidden");
    public static final h0 C = e(404, "Not Found");
    public static final h0 D = e(405, "Method Not Allowed");
    public static final h0 E = e(TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE, "Not Acceptable");
    public static final h0 F = e(TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT, "Proxy Authentication Required");
    public static final h0 G = e(408, "Request Timeout");
    public static final h0 H = e(409, "Conflict");
    public static final h0 I = e(410, "Gone");
    public static final h0 J = e(411, "Length Required");
    public static final h0 K = e(412, "Precondition Failed");
    public static final h0 L = e(413, "Request Entity Too Large");
    public static final h0 M = e(414, "Request-URI Too Long");
    public static final h0 N = e(415, "Unsupported Media Type");
    public static final h0 O = e(TypedValues.CycleType.TYPE_PATH_ROTATE, "Requested Range Not Satisfiable");
    public static final h0 P = e(417, "Expectation Failed");
    public static final h0 Q = e(421, "Misdirected Request");
    public static final h0 R = e(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, "Unprocessable Entity");

    /* renamed from: a1  reason: collision with root package name */
    public static final h0 f43924a1 = e(TypedValues.CycleType.TYPE_WAVE_PERIOD, "Locked");
    public static final h0 V1 = e(TypedValues.CycleType.TYPE_WAVE_OFFSET, "Failed Dependency");

    /* renamed from: a2  reason: collision with root package name */
    public static final h0 f43925a2 = e(TypedValues.CycleType.TYPE_WAVE_PHASE, "Unordered Collection");
    public static final h0 V2 = e(426, "Upgrade Required");
    public static final h0 B3 = e(428, "Precondition Required");
    public static final h0 V3 = e(429, "Too Many Requests");
    public static final h0 C4 = e(431, "Request Header Fields Too Large");
    public static final h0 D4 = e(500, "Internal Server Error");
    public static final h0 E4 = e(501, "Not Implemented");
    public static final h0 F4 = e(502, "Bad Gateway");
    public static final h0 G4 = e(503, "Service Unavailable");
    public static final h0 H4 = e(504, "Gateway Timeout");
    public static final h0 I4 = e(505, "HTTP Version Not Supported");
    public static final h0 J4 = e(506, "Variant Also Negotiates");
    public static final h0 K4 = e(507, "Insufficient Storage");
    public static final h0 L4 = e(TypedValues.PositionType.TYPE_POSITION_TYPE, "Not Extended");
    public static final h0 M4 = e(FrameMetricsAggregator.EVERY_DURATION, "Network Authentication Required");

    public h0(int i9, String str) {
        this(i9, str, false);
    }

    private static h0 e(int i9, String str) {
        return new h0(i9, str, true);
    }

    public static h0 g(int i9, String str) {
        h0 h10 = h(i9);
        return (h10 == null || !h10.f().contentEquals(str)) ? new h0(i9, str) : h10;
    }

    private static h0 h(int i9) {
        if (i9 != 307) {
            if (i9 != 308) {
                if (i9 != 428) {
                    if (i9 != 429) {
                        if (i9 != 431) {
                            if (i9 != 510) {
                                if (i9 != 511) {
                                    switch (i9) {
                                        case 100:
                                            return f43926f;
                                        case 101:
                                            return f43927g;
                                        case 102:
                                            return f43928h;
                                        default:
                                            switch (i9) {
                                                case 200:
                                                    return f43929i;
                                                case 201:
                                                    return f43930j;
                                                case 202:
                                                    return f43931k;
                                                case 203:
                                                    return f43932l;
                                                case 204:
                                                    return f43933m;
                                                case 205:
                                                    return f43934n;
                                                case 206:
                                                    return f43935o;
                                                case 207:
                                                    return f43936p;
                                                default:
                                                    switch (i9) {
                                                        case 300:
                                                            return f43937q;
                                                        case 301:
                                                            return f43938r;
                                                        case 302:
                                                            return f43939s;
                                                        case 303:
                                                            return f43940t;
                                                        case 304:
                                                            return f43941u;
                                                        case 305:
                                                            return f43942v;
                                                        default:
                                                            switch (i9) {
                                                                case 400:
                                                                    return f43945y;
                                                                case 401:
                                                                    return f43946z;
                                                                case 402:
                                                                    return A;
                                                                case 403:
                                                                    return B;
                                                                case 404:
                                                                    return C;
                                                                case 405:
                                                                    return D;
                                                                case TPNativePlayerInitConfig.BOOL_ENABLE_DROPFRAME_BY_REFRESHRATE /* 406 */:
                                                                    return E;
                                                                case TPNativePlayerInitConfig.BOOL_ENABLE_COLOR_MANAGEMENT /* 407 */:
                                                                    return F;
                                                                case 408:
                                                                    return G;
                                                                case 409:
                                                                    return H;
                                                                case 410:
                                                                    return I;
                                                                case 411:
                                                                    return J;
                                                                case 412:
                                                                    return K;
                                                                case 413:
                                                                    return L;
                                                                case 414:
                                                                    return M;
                                                                case 415:
                                                                    return N;
                                                                case TypedValues.CycleType.TYPE_PATH_ROTATE /* 416 */:
                                                                    return O;
                                                                case 417:
                                                                    return P;
                                                                default:
                                                                    switch (i9) {
                                                                        case 421:
                                                                            return Q;
                                                                        case TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE /* 422 */:
                                                                            return R;
                                                                        case TypedValues.CycleType.TYPE_WAVE_PERIOD /* 423 */:
                                                                            return f43924a1;
                                                                        case TypedValues.CycleType.TYPE_WAVE_OFFSET /* 424 */:
                                                                            return V1;
                                                                        case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                                                                            return f43925a2;
                                                                        case 426:
                                                                            return V2;
                                                                        default:
                                                                            switch (i9) {
                                                                                case 500:
                                                                                    return D4;
                                                                                case 501:
                                                                                    return E4;
                                                                                case 502:
                                                                                    return F4;
                                                                                case 503:
                                                                                    return G4;
                                                                                case 504:
                                                                                    return H4;
                                                                                case 505:
                                                                                    return I4;
                                                                                case 506:
                                                                                    return J4;
                                                                                case 507:
                                                                                    return K4;
                                                                                default:
                                                                                    return null;
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                }
                                return M4;
                            }
                            return L4;
                        }
                        return C4;
                    }
                    return V3;
                }
                return B3;
            }
            return f43944x;
        }
        return f43943w;
    }

    public int a() {
        return this.f43947a;
    }

    public io.grpc.netty.shaded.io.netty.util.c b() {
        return this.f43948b;
    }

    public HttpStatusClass c() {
        HttpStatusClass httpStatusClass = this.f43949c;
        if (httpStatusClass == null) {
            HttpStatusClass valueOf = HttpStatusClass.valueOf(this.f43947a);
            this.f43949c = valueOf;
            return valueOf;
        }
        return httpStatusClass;
    }

    @Override // java.lang.Comparable
    /* renamed from: d */
    public int compareTo(h0 h0Var) {
        return a() - h0Var.a();
    }

    public boolean equals(Object obj) {
        return (obj instanceof h0) && a() == ((h0) obj).a();
    }

    public String f() {
        return this.f43950d;
    }

    public int hashCode() {
        return a();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(this.f43950d.length() + 4);
        sb2.append((CharSequence) this.f43948b);
        sb2.append(' ');
        sb2.append(this.f43950d);
        return sb2.toString();
    }

    private h0(int i9, String str, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "code");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "reasonPhrase");
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt == '\n' || charAt == '\r') {
                throw new IllegalArgumentException("reasonPhrase contains one of the following prohibited characters: \\r\\n: " + str);
            }
        }
        this.f43947a = i9;
        String num = Integer.toString(i9);
        this.f43948b = new io.grpc.netty.shaded.io.netty.util.c(num);
        this.f43950d = str;
        if (z10) {
            this.f43951e = (num + ' ' + str).getBytes(io.grpc.netty.shaded.io.netty.util.h.f45018f);
            return;
        }
        this.f43951e = null;
    }
}
