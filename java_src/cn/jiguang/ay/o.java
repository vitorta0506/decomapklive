package cn.jiguang.ay;

import java.io.EOFException;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    protected long f2292a;

    /* renamed from: b  reason: collision with root package name */
    protected SelectionKey f2293b;

    public o(long j10) {
        Selector selector;
        SocketChannel open = SocketChannel.open();
        this.f2292a = j10;
        try {
            selector = Selector.open();
            try {
                open.configureBlocking(false);
                this.f2293b = open.register(selector, 1);
            } catch (Throwable th2) {
                th = th2;
                if (selector != null) {
                    selector.close();
                }
                open.close();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            selector = null;
        }
    }

    protected static void a(SelectionKey selectionKey, long j10) {
        long currentTimeMillis = j10 - System.currentTimeMillis();
        int i9 = (currentTimeMillis > 0L ? 1 : (currentTimeMillis == 0L ? 0 : -1));
        if ((i9 > 0 ? selectionKey.selector().select(currentTimeMillis) : i9 == 0 ? selectionKey.selector().selectNow() : 0) == 0) {
            throw new SocketTimeoutException();
        }
    }

    private byte[] a(int i9) {
        SocketChannel socketChannel = (SocketChannel) this.f2293b.channel();
        byte[] bArr = new byte[i9];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f2293b.interestOps(1);
        int i10 = 0;
        while (i10 < i9) {
            try {
                if (this.f2293b.isReadable()) {
                    long read = socketChannel.read(wrap);
                    if (read < 0) {
                        throw new EOFException();
                    }
                    i10 += (int) read;
                    if (i10 < i9 && System.currentTimeMillis() > this.f2292a) {
                        throw new SocketTimeoutException();
                    }
                } else {
                    a(this.f2293b, this.f2292a);
                }
            } finally {
                if (this.f2293b.isValid()) {
                    this.f2293b.interestOps(0);
                }
            }
        }
        return bArr;
    }

    public static byte[] a(SocketAddress socketAddress, SocketAddress socketAddress2, byte[] bArr, long j10) {
        o oVar = new o(j10);
        if (socketAddress != null) {
            try {
                oVar.a(socketAddress);
            } finally {
                oVar.b();
            }
        }
        oVar.b(socketAddress2);
        oVar.a(bArr);
        return oVar.a();
    }

    void a(SocketAddress socketAddress) {
        ((SocketChannel) this.f2293b.channel()).socket().bind(socketAddress);
    }

    void a(byte[] bArr) {
        SocketChannel socketChannel = (SocketChannel) this.f2293b.channel();
        ByteBuffer[] byteBufferArr = {ByteBuffer.wrap(new byte[]{(byte) (bArr.length >>> 8), (byte) (bArr.length & 255)}), ByteBuffer.wrap(bArr)};
        this.f2293b.interestOps(4);
        int i9 = 0;
        while (i9 < bArr.length + 2) {
            try {
                if (this.f2293b.isWritable()) {
                    long write = socketChannel.write(byteBufferArr);
                    if (write < 0) {
                        throw new EOFException();
                    }
                    i9 += (int) write;
                    if (i9 < bArr.length + 2 && System.currentTimeMillis() > this.f2292a) {
                        throw new SocketTimeoutException();
                    }
                } else {
                    a(this.f2293b, this.f2292a);
                }
            } finally {
                if (this.f2293b.isValid()) {
                    this.f2293b.interestOps(0);
                }
            }
        }
    }

    byte[] a() {
        byte[] a10 = a(2);
        byte[] a11 = a(((a10[0] & UByte.MAX_VALUE) << 8) + (a10[1] & UByte.MAX_VALUE));
        SocketChannel socketChannel = (SocketChannel) this.f2293b.channel();
        return a11;
    }

    void b() {
        this.f2293b.selector().close();
        this.f2293b.channel().close();
    }

    void b(SocketAddress socketAddress) {
        SocketChannel socketChannel = (SocketChannel) this.f2293b.channel();
        if (socketChannel.connect(socketAddress)) {
            return;
        }
        this.f2293b.interestOps(8);
        while (true) {
            try {
                if (socketChannel.finishConnect()) {
                    break;
                } else if (!this.f2293b.isConnectable()) {
                    a(this.f2293b, this.f2292a);
                }
            } finally {
                if (this.f2293b.isValid()) {
                    this.f2293b.interestOps(0);
                }
            }
        }
    }
}
