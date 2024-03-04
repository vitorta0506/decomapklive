package com.squareup.okhttp.internal;

import com.squareup.okhttp.ConnectionSpec;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<ConnectionSpec> f29616a;

    /* renamed from: b  reason: collision with root package name */
    private int f29617b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29618c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f29619d;

    public a(List<ConnectionSpec> list) {
        this.f29616a = list;
    }

    private boolean c(SSLSocket sSLSocket) {
        for (int i9 = this.f29617b; i9 < this.f29616a.size(); i9++) {
            if (this.f29616a.get(i9).isCompatible(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public ConnectionSpec a(SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int i9 = this.f29617b;
        int size = this.f29616a.size();
        while (true) {
            if (i9 >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = this.f29616a.get(i9);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.f29617b = i9 + 1;
                break;
            }
            i9++;
        }
        if (connectionSpec != null) {
            this.f29618c = c(sSLSocket);
            d.instance.apply(connectionSpec, sSLSocket, this.f29619d);
            return connectionSpec;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f29619d + ", modes=" + this.f29616a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean b(IOException iOException) {
        this.f29619d = true;
        if (!this.f29618c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException);
    }
}
