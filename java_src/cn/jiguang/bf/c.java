package cn.jiguang.bf;

import cn.jiguang.api.utils.ProtocolUtil;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.ShortCompanionObject;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    int f2481a;

    /* renamed from: b  reason: collision with root package name */
    int f2482b;

    /* renamed from: c  reason: collision with root package name */
    int f2483c;

    /* renamed from: d  reason: collision with root package name */
    Long f2484d;

    /* renamed from: e  reason: collision with root package name */
    int f2485e;

    /* renamed from: f  reason: collision with root package name */
    long f2486f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2487g;

    public c(boolean z10, int i9, int i10, int i11, long j10, int i12, long j11) {
        this.f2487g = z10;
        this.f2481a = i9;
        this.f2482b = i10;
        this.f2483c = i11;
        this.f2484d = Long.valueOf(j10);
        this.f2485e = i12;
        this.f2486f = j11;
    }

    public c(boolean z10, int i9, int i10, long j10) {
        this(z10, 0, i9, i10, j10, 0, 0L);
    }

    public c(boolean z10, byte[] bArr) {
        this.f2487g = z10;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f2481a = wrap.getShort() & ShortCompanionObject.MAX_VALUE;
        this.f2482b = wrap.get();
        this.f2483c = wrap.get();
        Long valueOf = Long.valueOf(wrap.getLong());
        this.f2484d = valueOf;
        this.f2484d = Long.valueOf(valueOf.longValue() & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        if (z10) {
            this.f2485e = wrap.getInt();
        }
        this.f2486f = wrap.getLong();
    }

    public int a() {
        return this.f2483c;
    }

    public void a(int i9) {
        this.f2481a = i9;
    }

    public void a(long j10) {
        this.f2486f = j10;
    }

    public Long b() {
        return this.f2484d;
    }

    public void b(int i9) {
        this.f2485e = i9;
    }

    public long c() {
        return this.f2486f;
    }

    public int d() {
        return this.f2485e;
    }

    public int e() {
        return this.f2482b;
    }

    public byte[] f() {
        if (this.f2481a != 0) {
            ByteBuffer allocate = ByteBuffer.allocate(24);
            allocate.putShort((short) this.f2481a);
            allocate.put((byte) this.f2482b);
            allocate.put((byte) this.f2483c);
            allocate.putLong(this.f2484d.longValue());
            if (this.f2487g) {
                allocate.putInt(this.f2485e);
            }
            allocate.putLong(this.f2486f);
            allocate.flip();
            return ProtocolUtil.getBytesConsumed(allocate);
        }
        throw new IllegalStateException("The head is not initialized yet.");
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[JHead] - len:");
        sb2.append(this.f2481a);
        sb2.append(", version:");
        sb2.append(this.f2482b);
        sb2.append(", command:");
        sb2.append(this.f2483c);
        sb2.append(", rid:");
        sb2.append(this.f2484d);
        if (this.f2487g) {
            str = ", sid:" + this.f2485e;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(", juid:");
        sb2.append(this.f2486f);
        return sb2.toString();
    }
}
