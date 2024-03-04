package org.conscrypt;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public abstract class b extends SSLSocket {

    /* renamed from: g  reason: collision with root package name */
    private int f56308g;

    /* renamed from: e  reason: collision with root package name */
    private final z f56306e = new a();

    /* renamed from: f  reason: collision with root package name */
    private final List<HandshakeCompletedListener> f56307f = new ArrayList(2);

    /* renamed from: a  reason: collision with root package name */
    final Socket f56302a = this;

    /* renamed from: c  reason: collision with root package name */
    private String f56304c = null;

    /* renamed from: d  reason: collision with root package name */
    private final int f56305d = -1;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f56303b = false;

    /* loaded from: classes7.dex */
    class a extends z {
        a() {
        }
    }

    b() throws IOException {
    }

    private boolean a() {
        Socket socket = this.f56302a;
        return (socket == null || socket == this) ? false : true;
    }

    @Override // javax.net.ssl.SSLSocket
    public void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        b0.a(handshakeCompletedListener != null, "Provided listener is null");
        this.f56307f.add(handshakeCompletedListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(String[] strArr);

    @Override // java.net.Socket
    public void bind(SocketAddress socketAddress) throws IOException {
        if (a()) {
            this.f56302a.bind(socketAddress);
        } else {
            super.bind(socketAddress);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c(boolean z10);

    @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (a()) {
            if (!this.f56303b || this.f56302a.isClosed()) {
                return;
            }
            this.f56302a.close();
        } else if (super.isClosed()) {
        } else {
            super.close();
        }
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress) throws IOException {
        connect(socketAddress, 0);
    }

    @Override // javax.net.ssl.SSLSocket
    public abstract String getApplicationProtocol();

    @Override // java.net.Socket
    public SocketChannel getChannel() {
        return null;
    }

    @Override // java.net.Socket
    public InetAddress getInetAddress() {
        if (a()) {
            return this.f56302a.getInetAddress();
        }
        return super.getInetAddress();
    }

    @Override // java.net.Socket
    public InputStream getInputStream() throws IOException {
        if (a()) {
            return this.f56302a.getInputStream();
        }
        return super.getInputStream();
    }

    @Override // java.net.Socket
    public boolean getKeepAlive() throws SocketException {
        if (a()) {
            return this.f56302a.getKeepAlive();
        }
        return super.getKeepAlive();
    }

    @Override // java.net.Socket
    public InetAddress getLocalAddress() {
        if (a()) {
            return this.f56302a.getLocalAddress();
        }
        return super.getLocalAddress();
    }

    @Override // java.net.Socket
    public int getLocalPort() {
        if (a()) {
            return this.f56302a.getLocalPort();
        }
        return super.getLocalPort();
    }

    @Override // java.net.Socket
    public SocketAddress getLocalSocketAddress() {
        if (a()) {
            return this.f56302a.getLocalSocketAddress();
        }
        return super.getLocalSocketAddress();
    }

    @Override // java.net.Socket
    public boolean getOOBInline() throws SocketException {
        return false;
    }

    @Override // java.net.Socket
    public OutputStream getOutputStream() throws IOException {
        if (a()) {
            return this.f56302a.getOutputStream();
        }
        return super.getOutputStream();
    }

    @Override // java.net.Socket
    public final int getPort() {
        if (a()) {
            return this.f56302a.getPort();
        }
        int i9 = this.f56305d;
        return i9 != -1 ? i9 : super.getPort();
    }

    @Override // java.net.Socket
    public int getReceiveBufferSize() throws SocketException {
        if (a()) {
            return this.f56302a.getReceiveBufferSize();
        }
        return super.getReceiveBufferSize();
    }

    @Override // java.net.Socket
    public SocketAddress getRemoteSocketAddress() {
        if (a()) {
            return this.f56302a.getRemoteSocketAddress();
        }
        return super.getRemoteSocketAddress();
    }

    @Override // java.net.Socket
    public boolean getReuseAddress() throws SocketException {
        if (a()) {
            return this.f56302a.getReuseAddress();
        }
        return super.getReuseAddress();
    }

    @Override // java.net.Socket
    public int getSendBufferSize() throws SocketException {
        if (a()) {
            return this.f56302a.getSendBufferSize();
        }
        return super.getSendBufferSize();
    }

    @Override // java.net.Socket
    public int getSoLinger() throws SocketException {
        if (a()) {
            return this.f56302a.getSoLinger();
        }
        return super.getSoLinger();
    }

    @Override // java.net.Socket
    public final int getSoTimeout() throws SocketException {
        if (a()) {
            return this.f56302a.getSoTimeout();
        }
        return this.f56308g;
    }

    @Override // java.net.Socket
    public boolean getTcpNoDelay() throws SocketException {
        if (a()) {
            return this.f56302a.getTcpNoDelay();
        }
        return super.getTcpNoDelay();
    }

    @Override // java.net.Socket
    public int getTrafficClass() throws SocketException {
        if (a()) {
            return this.f56302a.getTrafficClass();
        }
        return super.getTrafficClass();
    }

    @Override // java.net.Socket
    public boolean isBound() {
        if (a()) {
            return this.f56302a.isBound();
        }
        return super.isBound();
    }

    @Override // java.net.Socket
    public boolean isClosed() {
        if (a()) {
            return this.f56302a.isClosed();
        }
        return super.isClosed();
    }

    @Override // java.net.Socket
    public boolean isConnected() {
        if (a()) {
            return this.f56302a.isConnected();
        }
        return super.isConnected();
    }

    @Override // java.net.Socket
    public boolean isInputShutdown() {
        if (a()) {
            return this.f56302a.isInputShutdown();
        }
        return super.isInputShutdown();
    }

    @Override // java.net.Socket
    public boolean isOutputShutdown() {
        if (a()) {
            return this.f56302a.isOutputShutdown();
        }
        return super.isOutputShutdown();
    }

    @Override // javax.net.ssl.SSLSocket
    public void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        b0.a(handshakeCompletedListener != null, "Provided listener is null");
        if (!this.f56307f.remove(handshakeCompletedListener)) {
            throw new IllegalArgumentException("Provided listener is not registered");
        }
    }

    @Override // java.net.Socket
    public final void sendUrgentData(int i9) throws IOException {
        throw new SocketException("Method sendUrgentData() is not supported.");
    }

    @Override // java.net.Socket
    public void setKeepAlive(boolean z10) throws SocketException {
        if (a()) {
            this.f56302a.setKeepAlive(z10);
        } else {
            super.setKeepAlive(z10);
        }
    }

    @Override // java.net.Socket
    public final void setOOBInline(boolean z10) throws SocketException {
        throw new SocketException("Method setOOBInline() is not supported.");
    }

    @Override // java.net.Socket
    public void setPerformancePreferences(int i9, int i10, int i11) {
        if (a()) {
            this.f56302a.setPerformancePreferences(i9, i10, i11);
        } else {
            super.setPerformancePreferences(i9, i10, i11);
        }
    }

    @Override // java.net.Socket
    public void setReceiveBufferSize(int i9) throws SocketException {
        if (a()) {
            this.f56302a.setReceiveBufferSize(i9);
        } else {
            super.setReceiveBufferSize(i9);
        }
    }

    @Override // java.net.Socket
    public void setReuseAddress(boolean z10) throws SocketException {
        if (a()) {
            this.f56302a.setReuseAddress(z10);
        } else {
            super.setReuseAddress(z10);
        }
    }

    @Override // java.net.Socket
    public void setSendBufferSize(int i9) throws SocketException {
        if (a()) {
            this.f56302a.setSendBufferSize(i9);
        } else {
            super.setSendBufferSize(i9);
        }
    }

    @Override // java.net.Socket
    public void setSoLinger(boolean z10, int i9) throws SocketException {
        if (a()) {
            this.f56302a.setSoLinger(z10, i9);
        } else {
            super.setSoLinger(z10, i9);
        }
    }

    @Override // java.net.Socket
    public final void setSoTimeout(int i9) throws SocketException {
        if (a()) {
            this.f56302a.setSoTimeout(i9);
            return;
        }
        super.setSoTimeout(i9);
        this.f56308g = i9;
    }

    @Override // java.net.Socket
    public void setTcpNoDelay(boolean z10) throws SocketException {
        if (a()) {
            this.f56302a.setTcpNoDelay(z10);
        } else {
            super.setTcpNoDelay(z10);
        }
    }

    @Override // java.net.Socket
    public void setTrafficClass(int i9) throws SocketException {
        if (a()) {
            this.f56302a.setTrafficClass(i9);
        } else {
            super.setTrafficClass(i9);
        }
    }

    @Override // java.net.Socket
    public void shutdownInput() throws IOException {
        if (a()) {
            this.f56302a.shutdownInput();
        } else {
            super.shutdownInput();
        }
    }

    @Override // java.net.Socket
    public void shutdownOutput() throws IOException {
        if (a()) {
            this.f56302a.shutdownOutput();
        } else {
            super.shutdownOutput();
        }
    }

    @Override // javax.net.ssl.SSLSocket, java.net.Socket
    public String toString() {
        StringBuilder sb2 = new StringBuilder("SSL socket over ");
        if (a()) {
            sb2.append(this.f56302a.toString());
        } else {
            sb2.append(super.toString());
        }
        return sb2.toString();
    }

    @Override // java.net.Socket
    public final void connect(SocketAddress socketAddress, int i9) throws IOException {
        if (this.f56304c == null && (socketAddress instanceof InetSocketAddress)) {
            this.f56304c = a0.f((InetSocketAddress) socketAddress);
        }
        if (a()) {
            this.f56302a.connect(socketAddress, i9);
        } else {
            super.connect(socketAddress, i9);
        }
    }
}
