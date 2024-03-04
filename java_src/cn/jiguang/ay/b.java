package cn.jiguang.ay;

import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.UByte;
import kotlin.UShort;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f2233a;

    /* renamed from: b  reason: collision with root package name */
    private int f2234b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f2235c = -1;

    public b(byte[] bArr) {
        this.f2233a = ByteBuffer.wrap(bArr);
    }

    private void c(int i9) {
        if (i9 > b()) {
            throw new IOException("end of input");
        }
    }

    public int a() {
        return this.f2233a.position();
    }

    public void a(int i9) {
        if (i9 > this.f2233a.capacity() - this.f2233a.position()) {
            throw new IllegalArgumentException("cannot set active region past end of input");
        }
        ByteBuffer byteBuffer = this.f2233a;
        byteBuffer.limit(byteBuffer.position() + i9);
    }

    public void a(byte[] bArr, int i9, int i10) {
        c(i10);
        this.f2233a.get(bArr, i9, i10);
    }

    public int b() {
        return this.f2233a.remaining();
    }

    public void b(int i9) {
        if (i9 >= this.f2233a.capacity()) {
            throw new IllegalArgumentException("cannot jump past end of input");
        }
        this.f2233a.position(i9);
        ByteBuffer byteBuffer = this.f2233a;
        byteBuffer.limit(byteBuffer.capacity());
    }

    public void c() {
        ByteBuffer byteBuffer = this.f2233a;
        byteBuffer.limit(byteBuffer.capacity());
    }

    public void d() {
        this.f2234b = this.f2233a.position();
        this.f2235c = this.f2233a.limit();
    }

    public void e() {
        int i9 = this.f2234b;
        if (i9 < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.f2233a.position(i9);
        this.f2233a.limit(this.f2235c);
        this.f2234b = -1;
        this.f2235c = -1;
    }

    public int f() {
        c(1);
        return this.f2233a.get() & UByte.MAX_VALUE;
    }

    public int g() {
        c(2);
        return this.f2233a.getShort() & UShort.MAX_VALUE;
    }

    public long h() {
        c(4);
        return this.f2233a.getInt() & 4294967295L;
    }
}
