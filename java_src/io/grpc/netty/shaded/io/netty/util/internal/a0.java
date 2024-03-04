package io.grpc.netty.shaded.io.netty.util.internal;

import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Collections;
import java.util.Enumeration;
/* loaded from: classes5.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Enumeration<Object> f45022a = Collections.enumeration(Collections.emptyList());

    /* loaded from: classes5.dex */
    static class a implements PrivilegedAction<Enumeration<InetAddress>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NetworkInterface f45023a;

        a(NetworkInterface networkInterface) {
            this.f45023a = networkInterface;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Enumeration<InetAddress> run() {
            return this.f45023a.getInetAddresses();
        }
    }

    /* loaded from: classes5.dex */
    static class b implements PrivilegedExceptionAction<byte[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NetworkInterface f45024a;

        b(NetworkInterface networkInterface) {
            this.f45024a = networkInterface;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public byte[] run() throws SocketException {
            return this.f45024a.getHardwareAddress();
        }
    }

    /* loaded from: classes5.dex */
    static class c implements PrivilegedExceptionAction<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Socket f45025a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SocketAddress f45026b;

        c(Socket socket, SocketAddress socketAddress) {
            this.f45025a = socket;
            this.f45026b = socketAddress;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Void run() throws IOException {
            this.f45025a.bind(this.f45026b);
            return null;
        }
    }

    /* loaded from: classes5.dex */
    static class d implements PrivilegedExceptionAction<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SocketChannel f45027a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SocketAddress f45028b;

        d(SocketChannel socketChannel, SocketAddress socketAddress) {
            this.f45027a = socketChannel;
            this.f45028b = socketAddress;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Boolean run() throws IOException {
            return Boolean.valueOf(this.f45027a.connect(this.f45028b));
        }
    }

    /* loaded from: classes5.dex */
    static class e implements PrivilegedExceptionAction<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SocketChannel f45029a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SocketAddress f45030b;

        e(SocketChannel socketChannel, SocketAddress socketAddress) {
            this.f45029a = socketChannel;
            this.f45030b = socketAddress;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Void run() throws IOException {
            this.f45029a.bind(this.f45030b);
            return null;
        }
    }

    /* loaded from: classes5.dex */
    static class f implements PrivilegedExceptionAction<SocketChannel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ServerSocketChannel f45031a;

        f(ServerSocketChannel serverSocketChannel) {
            this.f45031a = serverSocketChannel;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public SocketChannel run() throws IOException {
            return this.f45031a.accept();
        }
    }

    /* loaded from: classes5.dex */
    static class g implements PrivilegedAction<SocketAddress> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ServerSocket f45032a;

        g(ServerSocket serverSocket) {
            this.f45032a = serverSocket;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public SocketAddress run() {
            return this.f45032a.getLocalSocketAddress();
        }
    }

    public static SocketChannel a(ServerSocketChannel serverSocketChannel) throws IOException {
        try {
            return (SocketChannel) AccessController.doPrivileged(new f(serverSocketChannel));
        } catch (PrivilegedActionException e10) {
            throw ((IOException) e10.getCause());
        }
    }

    public static Enumeration<InetAddress> b(NetworkInterface networkInterface) {
        Enumeration<InetAddress> enumeration = (Enumeration) AccessController.doPrivileged(new a(networkInterface));
        return enumeration == null ? f() : enumeration;
    }

    public static void c(Socket socket, SocketAddress socketAddress) throws IOException {
        try {
            AccessController.doPrivileged(new c(socket, socketAddress));
        } catch (PrivilegedActionException e10) {
            throw ((IOException) e10.getCause());
        }
    }

    public static void d(SocketChannel socketChannel, SocketAddress socketAddress) throws IOException {
        try {
            AccessController.doPrivileged(new e(socketChannel, socketAddress));
        } catch (PrivilegedActionException e10) {
            throw ((IOException) e10.getCause());
        }
    }

    public static boolean e(SocketChannel socketChannel, SocketAddress socketAddress) throws IOException {
        try {
            return ((Boolean) AccessController.doPrivileged(new d(socketChannel, socketAddress))).booleanValue();
        } catch (PrivilegedActionException e10) {
            throw ((IOException) e10.getCause());
        }
    }

    private static <T> Enumeration<T> f() {
        return (Enumeration<T>) f45022a;
    }

    public static byte[] g(NetworkInterface networkInterface) throws SocketException {
        try {
            return (byte[]) AccessController.doPrivileged(new b(networkInterface));
        } catch (PrivilegedActionException e10) {
            throw ((SocketException) e10.getCause());
        }
    }

    public static SocketAddress h(ServerSocket serverSocket) {
        return (SocketAddress) AccessController.doPrivileged(new g(serverSocket));
    }
}
