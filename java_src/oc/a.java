package oc;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
public class a extends SSLSocketFactory {

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f55609e = {"RC4", "DES", "PSK", "_DHE_"};
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final SSLSocketFactory f55610a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f55611b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private Class<?> f55612c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Method f55613d;

    /* loaded from: classes4.dex */
    private static class b extends SSLSocket {

        /* renamed from: a  reason: collision with root package name */
        protected final SSLSocket f55614a;

        b(SSLSocket sSLSocket) {
            this.f55614a = sSLSocket;
        }

        @Override // javax.net.ssl.SSLSocket
        public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f55614a.addHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void bind(SocketAddress socketAddress) throws IOException {
            this.f55614a.bind(socketAddress);
        }

        @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f55614a.close();
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress) throws IOException {
            this.f55614a.connect(socketAddress);
        }

        public boolean equals(Object obj) {
            return this.f55614a.equals(obj);
        }

        @Override // java.net.Socket
        public SocketChannel getChannel() {
            return this.f55614a.getChannel();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getEnableSessionCreation() {
            return this.f55614a.getEnableSessionCreation();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledCipherSuites() {
            return this.f55614a.getEnabledCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getEnabledProtocols() {
            return this.f55614a.getEnabledProtocols();
        }

        @Override // java.net.Socket
        public InetAddress getInetAddress() {
            return this.f55614a.getInetAddress();
        }

        @Override // java.net.Socket
        public InputStream getInputStream() throws IOException {
            return this.f55614a.getInputStream();
        }

        @Override // java.net.Socket
        public boolean getKeepAlive() throws SocketException {
            return this.f55614a.getKeepAlive();
        }

        @Override // java.net.Socket
        public InetAddress getLocalAddress() {
            return this.f55614a.getLocalAddress();
        }

        @Override // java.net.Socket
        public int getLocalPort() {
            return this.f55614a.getLocalPort();
        }

        @Override // java.net.Socket
        public SocketAddress getLocalSocketAddress() {
            return this.f55614a.getLocalSocketAddress();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getNeedClientAuth() {
            return this.f55614a.getNeedClientAuth();
        }

        @Override // java.net.Socket
        public boolean getOOBInline() throws SocketException {
            return this.f55614a.getOOBInline();
        }

        @Override // java.net.Socket
        public OutputStream getOutputStream() throws IOException {
            return this.f55614a.getOutputStream();
        }

        @Override // java.net.Socket
        public int getPort() {
            return this.f55614a.getPort();
        }

        @Override // java.net.Socket
        public synchronized int getReceiveBufferSize() throws SocketException {
            return this.f55614a.getReceiveBufferSize();
        }

        @Override // java.net.Socket
        public SocketAddress getRemoteSocketAddress() {
            return this.f55614a.getRemoteSocketAddress();
        }

        @Override // java.net.Socket
        public boolean getReuseAddress() throws SocketException {
            return this.f55614a.getReuseAddress();
        }

        @Override // java.net.Socket
        public synchronized int getSendBufferSize() throws SocketException {
            return this.f55614a.getSendBufferSize();
        }

        @Override // javax.net.ssl.SSLSocket
        public SSLSession getSession() {
            return this.f55614a.getSession();
        }

        @Override // java.net.Socket
        public int getSoLinger() throws SocketException {
            return this.f55614a.getSoLinger();
        }

        @Override // java.net.Socket
        public synchronized int getSoTimeout() throws SocketException {
            return this.f55614a.getSoTimeout();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedCipherSuites() {
            return this.f55614a.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public String[] getSupportedProtocols() {
            return this.f55614a.getSupportedProtocols();
        }

        @Override // java.net.Socket
        public boolean getTcpNoDelay() throws SocketException {
            return this.f55614a.getTcpNoDelay();
        }

        @Override // java.net.Socket
        public int getTrafficClass() throws SocketException {
            return this.f55614a.getTrafficClass();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getUseClientMode() {
            return this.f55614a.getUseClientMode();
        }

        @Override // javax.net.ssl.SSLSocket
        public boolean getWantClientAuth() {
            return this.f55614a.getWantClientAuth();
        }

        @Override // java.net.Socket
        public boolean isBound() {
            return this.f55614a.isBound();
        }

        @Override // java.net.Socket
        public boolean isClosed() {
            return this.f55614a.isClosed();
        }

        @Override // java.net.Socket
        public boolean isConnected() {
            return this.f55614a.isConnected();
        }

        @Override // java.net.Socket
        public boolean isInputShutdown() {
            return this.f55614a.isInputShutdown();
        }

        @Override // java.net.Socket
        public boolean isOutputShutdown() {
            return this.f55614a.isOutputShutdown();
        }

        @Override // javax.net.ssl.SSLSocket
        public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f55614a.removeHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public void sendUrgentData(int i9) throws IOException {
            this.f55614a.sendUrgentData(i9);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnableSessionCreation(boolean z10) {
            this.f55614a.setEnableSessionCreation(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledCipherSuites(String[] strArr) {
            this.f55614a.setEnabledCipherSuites(strArr);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            this.f55614a.setEnabledProtocols(strArr);
        }

        @Override // java.net.Socket
        public void setKeepAlive(boolean z10) throws SocketException {
            this.f55614a.setKeepAlive(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setNeedClientAuth(boolean z10) {
            this.f55614a.setNeedClientAuth(z10);
        }

        @Override // java.net.Socket
        public void setOOBInline(boolean z10) throws SocketException {
            this.f55614a.setOOBInline(z10);
        }

        @Override // java.net.Socket
        public void setPerformancePreferences(int i9, int i10, int i11) {
            this.f55614a.setPerformancePreferences(i9, i10, i11);
        }

        @Override // java.net.Socket
        public synchronized void setReceiveBufferSize(int i9) throws SocketException {
            this.f55614a.setReceiveBufferSize(i9);
        }

        @Override // java.net.Socket
        public void setReuseAddress(boolean z10) throws SocketException {
            this.f55614a.setReuseAddress(z10);
        }

        @Override // java.net.Socket
        public synchronized void setSendBufferSize(int i9) throws SocketException {
            this.f55614a.setSendBufferSize(i9);
        }

        @Override // java.net.Socket
        public void setSoLinger(boolean z10, int i9) throws SocketException {
            this.f55614a.setSoLinger(z10, i9);
        }

        @Override // java.net.Socket
        public synchronized void setSoTimeout(int i9) throws SocketException {
            this.f55614a.setSoTimeout(i9);
        }

        @Override // java.net.Socket
        public void setTcpNoDelay(boolean z10) throws SocketException {
            this.f55614a.setTcpNoDelay(z10);
        }

        @Override // java.net.Socket
        public void setTrafficClass(int i9) throws SocketException {
            this.f55614a.setTrafficClass(i9);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setUseClientMode(boolean z10) {
            this.f55614a.setUseClientMode(z10);
        }

        @Override // javax.net.ssl.SSLSocket
        public void setWantClientAuth(boolean z10) {
            this.f55614a.setWantClientAuth(z10);
        }

        @Override // java.net.Socket
        public void shutdownInput() throws IOException {
            this.f55614a.shutdownInput();
        }

        @Override // java.net.Socket
        public void shutdownOutput() throws IOException {
            this.f55614a.shutdownOutput();
        }

        @Override // javax.net.ssl.SSLSocket
        public void startHandshake() throws IOException {
            this.f55614a.startHandshake();
        }

        @Override // javax.net.ssl.SSLSocket, java.net.Socket
        public String toString() {
            return this.f55614a.toString();
        }

        @Override // java.net.Socket
        public void connect(SocketAddress socketAddress, int i9) throws IOException {
            this.f55614a.connect(socketAddress, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c extends b {
        @Override // oc.a.b, javax.net.ssl.SSLSocket
        public void setEnabledProtocols(String[] strArr) {
            if (strArr != null && strArr.length == 1 && "SSLv3".equals(strArr[0])) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f55614a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                }
                strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            super.setEnabledProtocols(strArr);
        }

        private c(SSLSocket sSLSocket) {
            super(sSLSocket);
        }
    }

    public a(@NonNull SSLSocketFactory sSLSocketFactory) {
        this(sSLSocketFactory, true);
    }

    private static String[] a() {
        return new String[]{"TLSv1.2"};
    }

    private void b() {
        try {
            try {
                this.f55612c = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            } catch (ClassNotFoundException unused) {
                this.f55612c = Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            }
            this.f55613d = this.f55612c.getMethod("setHostname", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
        }
    }

    private static String[] c(String[] strArr) {
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        for (String str : strArr) {
            for (String str2 : f55609e) {
                if (str.contains(str2)) {
                    arrayList.remove(str);
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private void d(Socket socket, String str) {
        Method method;
        if (!this.f55612c.isInstance(socket) || (method = this.f55613d) == null) {
            return;
        }
        try {
            method.invoke(socket, str);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i9, boolean z10) throws IOException {
        Socket createSocket = this.f55610a.createSocket(socket, str, i9, z10);
        d(createSocket, str);
        return e(createSocket);
    }

    public Socket e(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(a());
            if (this.f55611b) {
                sSLSocket.setEnabledCipherSuites(c(sSLSocket.getEnabledCipherSuites()));
            }
            return new c(sSLSocket);
        }
        return socket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        if (this.f55611b) {
            return c(this.f55610a.getDefaultCipherSuites());
        }
        return this.f55610a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        if (this.f55611b) {
            return c(this.f55610a.getSupportedCipherSuites());
        }
        return this.f55610a.getSupportedCipherSuites();
    }

    public a(@NonNull SSLSocketFactory sSLSocketFactory, boolean z10) {
        this.f55610a = sSLSocketFactory;
        this.f55611b = z10;
        b();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i9) throws IOException {
        Socket createSocket = this.f55610a.createSocket(str, i9);
        d(createSocket, str);
        return e(createSocket);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i9) throws IOException {
        return e(this.f55610a.createSocket(inetAddress, i9));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i9, InetAddress inetAddress2, int i10) throws IOException {
        return e(this.f55610a.createSocket(inetAddress, i9, inetAddress2, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i9, InetAddress inetAddress, int i10) throws IOException {
        Socket createSocket = this.f55610a.createSocket(str, i9, inetAddress, i10);
        d(createSocket, str);
        return e(createSocket);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        return e(this.f55610a.createSocket());
    }
}
