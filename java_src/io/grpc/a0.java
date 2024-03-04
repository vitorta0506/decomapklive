package io.grpc;

import io.grpc.a;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import javax.net.ssl.SSLSession;
/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    public static final a.c<SocketAddress> f41748a = a.c.a("remote-addr");

    /* renamed from: b  reason: collision with root package name */
    public static final a.c<SocketAddress> f41749b = a.c.a("local-addr");

    /* renamed from: c  reason: collision with root package name */
    public static final a.c<SSLSession> f41750c = a.c.a("ssl-session");

    private static String a(String str, int i9) {
        try {
            return new URI(null, null, str, i9, null, null, null).getAuthority();
        } catch (URISyntaxException e10) {
            throw new IllegalArgumentException("Invalid host or port: " + str + " " + i9, e10);
        }
    }

    public static r0<?> b(String str, e eVar) {
        return ManagedChannelRegistry.b().d(str, eVar);
    }

    public static r0<?> c(String str, int i9, e eVar) {
        return b(a(str, i9), eVar);
    }
}
