package lg;

import io.grpc.netty.shaded.io.netty.channel.epoll.EpollMode;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.channel.unix.g;
import java.net.InetAddress;
import java.util.Map;
/* loaded from: classes5.dex */
public final class b<T> extends g<T> {
    public static final r<Boolean> M = r.e(b.class, "TCP_CORK");
    public static final r<Long> N = r.e(b.class, "TCP_NOTSENT_LOWAT");
    public static final r<Integer> O = r.e(b.class, "TCP_KEEPIDLE");
    public static final r<Integer> P = r.e(b.class, "TCP_KEEPINTVL");
    public static final r<Integer> Q = r.e(b.class, "TCP_KEEPCNT");
    public static final r<Integer> R = r.e(b.class, "TCP_USER_TIMEOUT");

    /* renamed from: a1  reason: collision with root package name */
    public static final r<Boolean> f54327a1 = r.f("IP_FREEBIND");
    public static final r<Boolean> V1 = r.f("IP_TRANSPARENT");

    /* renamed from: a2  reason: collision with root package name */
    public static final r<Boolean> f54328a2 = r.f("IP_RECVORIGDSTADDR");
    @Deprecated
    public static final r<Integer> V2 = r.H;
    @Deprecated
    public static final r<Boolean> B3 = r.G;
    public static final r<Integer> V3 = r.e(b.class, "TCP_DEFER_ACCEPT");
    public static final r<Boolean> C4 = r.e(b.class, "TCP_QUICKACK");
    public static final r<Integer> D4 = r.e(b.class, "SO_BUSY_POLL");
    public static final r<EpollMode> E4 = r.e(b.class, "EPOLL_MODE");
    public static final r<Map<InetAddress, byte[]>> F4 = r.f("TCP_MD5SIG");
    public static final r<Integer> G4 = r.f("MAX_DATAGRAM_PAYLOAD_SIZE");
    public static final r<Boolean> H4 = r.f("UDP_GRO");

    private b() {
    }
}
