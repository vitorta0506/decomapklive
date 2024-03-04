package io.grpc.netty.shaded.io.netty.channel.socket;

import io.grpc.netty.shaded.io.netty.util.n;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
/* loaded from: classes5.dex */
public enum InternetProtocolFamily {
    IPv4(Inet4Address.class, 1),
    IPv6(Inet6Address.class, 2);
    
    private final int addressNumber;
    private final Class<? extends InetAddress> addressType;

    /* loaded from: classes5.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f43781a;

        static {
            int[] iArr = new int[InternetProtocolFamily.values().length];
            f43781a = iArr;
            try {
                iArr[InternetProtocolFamily.IPv4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f43781a[InternetProtocolFamily.IPv6.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    InternetProtocolFamily(Class cls, int i9) {
        this.addressType = cls;
        this.addressNumber = i9;
    }

    public static InternetProtocolFamily of(InetAddress inetAddress) {
        if (inetAddress instanceof Inet4Address) {
            return IPv4;
        }
        if (inetAddress instanceof Inet6Address) {
            return IPv6;
        }
        throw new IllegalArgumentException("address " + inetAddress + " not supported");
    }

    public int addressNumber() {
        return this.addressNumber;
    }

    public Class<? extends InetAddress> addressType() {
        return this.addressType;
    }

    public InetAddress localhost() {
        int i9 = a.f43781a[ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return n.f45223b;
            }
            throw new IllegalStateException("Unsupported family " + this);
        }
        return n.f45222a;
    }
}
