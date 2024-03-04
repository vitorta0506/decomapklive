package cn.jiguang.bc;

import cn.jiguang.as.d;
import cn.jiguang.az.f;
import cn.jiguang.f.i;
import com.tencent.imsdk.BaseConstants;
import com.tencent.ugc.TXVideoEditConstants;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: g  reason: collision with root package name */
    private final int f2436g;

    /* renamed from: h  reason: collision with root package name */
    private ByteBuffer f2437h = ByteBuffer.allocate(8192);

    public b(int i9, int i10) {
        this.f2436g = i9;
        this.f2435f = i10;
    }

    private boolean b(byte[] bArr) {
        try {
            if (!b()) {
                d.c("NioSocketClient", "send error - connect was invalid");
                return false;
            }
            if (bArr != null && bArr.length > 0) {
                int write = this.f2431b.write(ByteBuffer.wrap(bArr));
                if (write > 0) {
                    d.a("NioSocketClient", "isWritable has send len:" + write);
                    return true;
                } else if (write < 0) {
                    d.a("NioSocketClient", "isWritable error:" + write);
                    return false;
                } else {
                    return true;
                }
            }
            d.c("NioSocketClient", "send error - invalide buffer");
            return false;
        } catch (Exception e10) {
            d.h("NioSocketClient", "send data error:" + e10);
            close();
            return false;
        }
    }

    @Override // cn.jiguang.bc.a
    public synchronized int a(String str, int i9) {
        super.a(str, i9);
        this.f2431b = SocketChannel.open();
        this.f2433d = Selector.open();
        this.f2431b.configureBlocking(false);
        this.f2431b.connect(new InetSocketAddress(str, i9));
        d.c("NioSocketClient", "tcp connecting...");
        long currentTimeMillis = System.currentTimeMillis();
        while (!this.f2431b.finishConnect()) {
            if (!this.f2434e) {
                d.c("NioSocketClient", "has close channel when connect...");
                return -991;
            }
            Thread.sleep(10L);
            if (System.currentTimeMillis() - currentTimeMillis > 3000) {
                close();
                return -994;
            }
        }
        if (!this.f2434e) {
            d.c("NioSocketClient", "has close channel when connected...");
            return -991;
        }
        d.c("NioSocketClient", "tcp connected");
        this.f2431b.register(this.f2433d, 1);
        return 0;
    }

    @Override // cn.jiguang.bc.a
    public int a(byte[] bArr) {
        if (bArr == null) {
            d.c("NioSocketClient", "sendData failed, send data was null");
            return 103;
        }
        d.c("NioSocketClient", "send data length:" + bArr.length);
        if (bArr.length < this.f2436g) {
            return b(bArr) ? 0 : 103;
        }
        d.c("NioSocketClient", "sendData failed, data length must less than " + this.f2436g);
        return BaseConstants.ERR_NO_PREVIOUS_LOGIN;
    }

    @Override // cn.jiguang.bc.a
    public ByteBuffer a(int i9) {
        ByteBuffer b10;
        try {
            if (b()) {
                int c10 = c();
                if (c10 <= 0 || (b10 = b(c10)) == null) {
                    int i10 = 0;
                    int i11 = 1048576;
                    while (b() && this.f2432c < i11) {
                        int select = i9 > 0 ? this.f2433d.select(i9) : this.f2433d.select();
                        if (select == 0) {
                            d.c("NioSocketClient", "readSelect:" + select + ",time out:" + i9);
                            if (i9 > 0) {
                                throw new f(-994, "recv time out");
                            }
                        } else {
                            Iterator<SelectionKey> it = this.f2433d.selectedKeys().iterator();
                            while (it.hasNext()) {
                                SelectionKey next = it.next();
                                SocketChannel socketChannel = (SocketChannel) next.channel();
                                if (next.isReadable()) {
                                    int read = socketChannel.read(this.f2437h);
                                    if (read < 0) {
                                        throw new f(-996, "read len < 0:" + read);
                                    }
                                    this.f2437h.flip();
                                    int limit = this.f2437h.limit();
                                    if (this.f2430a.remaining() < limit) {
                                        throw new f(-996, "the total buf remaining less than readLen,remaining:" + this.f2430a.remaining() + ",readLen:" + limit);
                                    }
                                    this.f2430a.put(this.f2437h);
                                    this.f2432c += limit;
                                    this.f2437h.compact();
                                    if (this.f2432c < this.f2435f) {
                                        d.c("NioSocketClient", "totalbuf can not parse head:" + this.f2432c + ",peerNetData len:" + limit + ",read:" + read);
                                    } else {
                                        i11 = c();
                                    }
                                    i10 = limit;
                                } else {
                                    next.isWritable();
                                }
                                it.remove();
                            }
                            continue;
                        }
                    }
                    if (i11 != 1048576) {
                        d.c("NioSocketClient", "read len:" + i10 + ",recvTotalLen:" + this.f2432c + ",shouldLen:" + i11);
                        ByteBuffer b11 = b(i11);
                        if (b11 != null) {
                            return b11;
                        }
                        throw new f(TXVideoEditConstants.ERR_UNSUPPORT_VIDEO_FORMAT, "parse error");
                    }
                    throw new f(-997, "recv empty data or tcp has close");
                }
                return b10;
            }
            throw new f(-991, "recv error,the connect is invalid");
        } catch (Throwable th2) {
            if (th2 instanceof SocketTimeoutException) {
                throw new f(-994, th2.getMessage());
            }
            if (th2 instanceof f) {
                throw th2;
            }
            throw new f(-997, th2.getMessage());
        }
    }

    @Override // cn.jiguang.bc.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        d.c("NioSocketClient", "close this connect");
        super.close();
        Selector selector = this.f2433d;
        if (selector != null) {
            try {
                selector.close();
            } catch (IOException unused) {
            }
        }
        i.a(this.f2431b);
        this.f2431b = null;
    }
}
