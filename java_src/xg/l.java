package xg;

import io.grpc.okhttp.internal.Protocol;
import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
final class l {

    /* renamed from: a  reason: collision with root package name */
    static final List<Protocol> f59892a = Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2));

    static String a(String str) {
        return (str.startsWith("[") && str.endsWith("]")) ? str.substring(1, str.length() - 1) : str;
    }

    public static SSLSocket b(SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, Socket socket, String str, int i9, io.grpc.okhttp.internal.a aVar) throws IOException {
        com.google.common.base.o.t(sSLSocketFactory, "sslSocketFactory");
        com.google.common.base.o.t(socket, "socket");
        com.google.common.base.o.t(aVar, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i9, true);
        aVar.c(sSLSocket, false);
        String h10 = i.e().h(sSLSocket, str, aVar.f() ? f59892a : null);
        List<Protocol> list = f59892a;
        boolean contains = list.contains(Protocol.get(h10));
        com.google.common.base.o.D(contains, "Only " + list + " are supported, but negotiated protocol is %s", h10);
        if (hostnameVerifier == null) {
            hostnameVerifier = io.grpc.okhttp.internal.c.f45298a;
        }
        if (hostnameVerifier.verify(a(str), sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: " + str);
    }
}
