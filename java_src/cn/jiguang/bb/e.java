package cn.jiguang.bb;

import cn.jiguang.api.JCoreManager;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public int f2421a;

    /* renamed from: b  reason: collision with root package name */
    public long f2422b;

    /* renamed from: c  reason: collision with root package name */
    public String f2423c;

    /* renamed from: d  reason: collision with root package name */
    public String f2424d;

    /* renamed from: e  reason: collision with root package name */
    public String f2425e;

    /* renamed from: f  reason: collision with root package name */
    private final c f2426f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f2427g;

    /* renamed from: h  reason: collision with root package name */
    private String f2428h;

    /* renamed from: i  reason: collision with root package name */
    private String f2429i;

    public e(c cVar, ByteBuffer byteBuffer) {
        this.f2426f = cVar;
        if (byteBuffer == null) {
            cn.jiguang.as.d.g("RegisterResponse", "No body to parse.");
            return;
        }
        this.f2427g = byteBuffer;
        a();
    }

    private void a() {
        try {
            this.f2421a = this.f2427g.getShort();
        } catch (Throwable unused) {
            this.f2421a = 10000;
        }
        if (this.f2421a > 0) {
            cn.jiguang.as.d.i("RegisterResponse", "Response error - code:" + this.f2421a);
        }
        ByteBuffer byteBuffer = this.f2427g;
        int i9 = this.f2421a;
        try {
            if (i9 == 0) {
                this.f2422b = byteBuffer.getLong();
                this.f2423c = b.a(byteBuffer);
                this.f2424d = b.a(byteBuffer);
            } else if (i9 != 1007) {
                if (i9 == 1012) {
                    try {
                        this.f2429i = b.a(byteBuffer);
                    } catch (Throwable unused2) {
                        this.f2421a = 10000;
                    }
                    cn.jiguang.aw.a.a(JCoreManager.getAppContext(null), this.f2429i);
                }
            } else {
                this.f2428h = b.a(byteBuffer);
            }
        } catch (Throwable unused3) {
            this.f2421a = 10000;
        }
    }

    public String toString() {
        return "[RegisterResponse] - code:" + this.f2421a + ", juid:" + this.f2422b + ", password:" + this.f2423c + ", regId:" + this.f2424d + ", deviceId:" + this.f2425e + ", connectInfo:" + this.f2429i;
    }
}
