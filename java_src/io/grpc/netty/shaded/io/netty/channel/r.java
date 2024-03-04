package io.grpc.netty.shaded.io.netty.channel;

import java.net.InetAddress;
import java.net.NetworkInterface;
/* loaded from: classes5.dex */
public class r<T> extends io.grpc.netty.shaded.io.netty.util.a<r<T>> {

    /* renamed from: e  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.j<r<Object>> f43724e = new a();

    /* renamed from: f  reason: collision with root package name */
    public static final r<kg.k> f43725f = f("ALLOCATOR");

    /* renamed from: g  reason: collision with root package name */
    public static final r<v0> f43726g = f("RCVBUF_ALLOCATOR");

    /* renamed from: h  reason: collision with root package name */
    public static final r<r0> f43727h = f("MESSAGE_SIZE_ESTIMATOR");

    /* renamed from: i  reason: collision with root package name */
    public static final r<Integer> f43728i = f("CONNECT_TIMEOUT_MILLIS");
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    public static final r<Integer> f43729j = f("MAX_MESSAGES_PER_READ");

    /* renamed from: k  reason: collision with root package name */
    public static final r<Integer> f43730k = f("MAX_MESSAGES_PER_WRITE");

    /* renamed from: l  reason: collision with root package name */
    public static final r<Integer> f43731l = f("WRITE_SPIN_COUNT");
    @Deprecated

    /* renamed from: m  reason: collision with root package name */
    public static final r<Integer> f43732m = f("WRITE_BUFFER_HIGH_WATER_MARK");
    @Deprecated

    /* renamed from: n  reason: collision with root package name */
    public static final r<Integer> f43733n = f("WRITE_BUFFER_LOW_WATER_MARK");

    /* renamed from: o  reason: collision with root package name */
    public static final r<f1> f43734o = f("WRITE_BUFFER_WATER_MARK");

    /* renamed from: p  reason: collision with root package name */
    public static final r<Boolean> f43735p = f("ALLOW_HALF_CLOSURE");

    /* renamed from: q  reason: collision with root package name */
    public static final r<Boolean> f43736q = f("AUTO_READ");

    /* renamed from: r  reason: collision with root package name */
    public static final r<Boolean> f43737r = f("AUTO_CLOSE");

    /* renamed from: s  reason: collision with root package name */
    public static final r<Boolean> f43738s = f("SO_BROADCAST");

    /* renamed from: t  reason: collision with root package name */
    public static final r<Boolean> f43739t = f("SO_KEEPALIVE");

    /* renamed from: u  reason: collision with root package name */
    public static final r<Integer> f43740u = f("SO_SNDBUF");

    /* renamed from: v  reason: collision with root package name */
    public static final r<Integer> f43741v = f("SO_RCVBUF");

    /* renamed from: w  reason: collision with root package name */
    public static final r<Boolean> f43742w = f("SO_REUSEADDR");

    /* renamed from: x  reason: collision with root package name */
    public static final r<Integer> f43743x = f("SO_LINGER");

    /* renamed from: y  reason: collision with root package name */
    public static final r<Integer> f43744y = f("SO_BACKLOG");

    /* renamed from: z  reason: collision with root package name */
    public static final r<Integer> f43745z = f("SO_TIMEOUT");
    public static final r<Integer> A = f("IP_TOS");
    public static final r<InetAddress> B = f("IP_MULTICAST_ADDR");
    public static final r<NetworkInterface> C = f("IP_MULTICAST_IF");
    public static final r<Integer> D = f("IP_MULTICAST_TTL");
    public static final r<Boolean> E = f("IP_MULTICAST_LOOP_DISABLED");
    public static final r<Boolean> F = f("TCP_NODELAY");
    public static final r<Boolean> G = f("TCP_FASTOPEN_CONNECT");
    public static final r<Integer> H = e(r.class, "TCP_FASTOPEN");
    @Deprecated
    public static final r<Boolean> I = f("DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION");
    public static final r<Boolean> J = f("SINGLE_EVENTEXECUTOR_PER_GROUP");

    /* loaded from: classes5.dex */
    static class a extends io.grpc.netty.shaded.io.netty.util.j<r<Object>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.netty.shaded.io.netty.util.j
        /* renamed from: f */
        public r<Object> b(int i9, String str) {
            return new r<>(i9, str, null);
        }
    }

    /* synthetic */ r(int i9, String str, a aVar) {
        this(i9, str);
    }

    public static <T> r<T> e(Class<?> cls, String str) {
        return (r<T>) f43724e.d(cls, str);
    }

    public static <T> r<T> f(String str) {
        return (r<T>) f43724e.e(str);
    }

    public void d(T t10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(t10, "value");
    }

    private r(int i9, String str) {
        super(i9, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public r(String str) {
        this(f43724e.c(), str);
    }
}
