package io.grpc.netty.shaded.io.netty.handler.codec.http.websocketx;

import io.grpc.netty.shaded.io.netty.util.internal.s;
/* loaded from: classes5.dex */
public final class a implements Comparable<a> {

    /* renamed from: d  reason: collision with root package name */
    public static final a f44063d = new a(1000, "Bye");

    /* renamed from: e  reason: collision with root package name */
    public static final a f44064e = new a(1001, "Endpoint unavailable");

    /* renamed from: f  reason: collision with root package name */
    public static final a f44065f = new a(1002, "Protocol error");

    /* renamed from: g  reason: collision with root package name */
    public static final a f44066g = new a(1003, "Invalid message type");

    /* renamed from: h  reason: collision with root package name */
    public static final a f44067h = new a(1007, "Invalid payload data");

    /* renamed from: i  reason: collision with root package name */
    public static final a f44068i = new a(1008, "Policy violation");

    /* renamed from: j  reason: collision with root package name */
    public static final a f44069j = new a(1009, "Message too big");

    /* renamed from: k  reason: collision with root package name */
    public static final a f44070k = new a(1010, "Mandatory extension");

    /* renamed from: l  reason: collision with root package name */
    public static final a f44071l = new a(1011, "Internal server error");

    /* renamed from: m  reason: collision with root package name */
    public static final a f44072m = new a(1012, "Service Restart");

    /* renamed from: n  reason: collision with root package name */
    public static final a f44073n = new a(1013, "Try Again Later");

    /* renamed from: o  reason: collision with root package name */
    public static final a f44074o = new a(1014, "Bad Gateway");

    /* renamed from: p  reason: collision with root package name */
    public static final a f44075p = new a(1005, "Empty", false);

    /* renamed from: q  reason: collision with root package name */
    public static final a f44076q = new a(1006, "Abnormal closure", false);

    /* renamed from: r  reason: collision with root package name */
    public static final a f44077r = new a(1015, "TLS handshake failed", false);

    /* renamed from: a  reason: collision with root package name */
    private final int f44078a;

    /* renamed from: b  reason: collision with root package name */
    private final String f44079b;

    /* renamed from: c  reason: collision with root package name */
    private String f44080c;

    public a(int i9, String str) {
        this(i9, str, true);
    }

    public static boolean c(int i9) {
        return i9 < 0 || (1000 <= i9 && i9 <= 1003) || ((1007 <= i9 && i9 <= 1014) || 3000 <= i9);
    }

    public int a() {
        return this.f44078a;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(a aVar) {
        return a() - aVar.a();
    }

    public String d() {
        return this.f44079b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && a.class == obj.getClass() && this.f44078a == ((a) obj).f44078a;
    }

    public int hashCode() {
        return this.f44078a;
    }

    public String toString() {
        String str = this.f44080c;
        if (str == null) {
            String str2 = a() + " " + d();
            this.f44080c = str2;
            return str2;
        }
        return str;
    }

    public a(int i9, String str, boolean z10) {
        if (z10 && !c(i9)) {
            throw new IllegalArgumentException("WebSocket close status code does NOT comply with RFC-6455: " + i9);
        }
        this.f44078a = i9;
        this.f44079b = (String) s.h(str, "reasonText");
    }
}
