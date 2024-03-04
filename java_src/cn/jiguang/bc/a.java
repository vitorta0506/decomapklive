package cn.jiguang.bc;

import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import kotlin.jvm.internal.ShortCompanionObject;
/* loaded from: classes.dex */
public abstract class a implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    protected SocketChannel f2431b;

    /* renamed from: c  reason: collision with root package name */
    protected int f2432c;

    /* renamed from: d  reason: collision with root package name */
    protected Selector f2433d;

    /* renamed from: f  reason: collision with root package name */
    protected int f2435f = 20;

    /* renamed from: a  reason: collision with root package name */
    protected ByteBuffer f2430a = ByteBuffer.allocate(49152);

    /* renamed from: e  reason: collision with root package name */
    protected boolean f2434e = false;

    public int a(String str, int i9) {
        if (this.f2430a == null) {
            this.f2430a = ByteBuffer.allocate(49152);
        }
        this.f2430a.clear();
        this.f2432c = 0;
        this.f2434e = true;
        return 0;
    }

    public abstract int a(byte[] bArr);

    public ByteBuffer a() {
        return a(0);
    }

    public abstract ByteBuffer a(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteBuffer b(int i9) {
        int i10 = this.f2432c;
        if (i10 >= i9) {
            this.f2432c = i10 - i9;
            byte[] bArr = new byte[i9];
            this.f2430a.flip();
            this.f2430a.get(bArr, 0, i9);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.f2430a.compact();
            return wrap;
        }
        return null;
    }

    public boolean b() {
        SocketChannel socketChannel;
        return this.f2434e && (socketChannel = this.f2431b) != null && socketChannel.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c() {
        if (this.f2432c < this.f2435f) {
            return 0;
        }
        int position = this.f2430a.position();
        this.f2430a.position(0);
        int i9 = this.f2430a.getShort() & ShortCompanionObject.MAX_VALUE;
        this.f2430a.position(position);
        return i9;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2434e = false;
        ByteBuffer byteBuffer = this.f2430a;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f2432c = 0;
    }
}
