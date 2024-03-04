package cn.jiguang.bb;

import cn.jiguang.api.JCoreManager;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public int f2412a;

    /* renamed from: b  reason: collision with root package name */
    public int f2413b;

    /* renamed from: c  reason: collision with root package name */
    public int f2414c;

    /* renamed from: d  reason: collision with root package name */
    public int f2415d;

    /* renamed from: e  reason: collision with root package name */
    private final c f2416e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f2417f;

    /* renamed from: g  reason: collision with root package name */
    private int f2418g;

    /* renamed from: h  reason: collision with root package name */
    private String f2419h;

    /* renamed from: i  reason: collision with root package name */
    private String f2420i;

    public d(c cVar, ByteBuffer byteBuffer) {
        this.f2416e = cVar;
        if (byteBuffer == null) {
            cn.jiguang.as.d.g("LoginResponse", "No body to parse.");
            return;
        }
        this.f2417f = byteBuffer;
        a();
    }

    private void a() {
        try {
            this.f2412a = this.f2417f.getShort();
        } catch (Throwable unused) {
            this.f2412a = 10000;
        }
        if (this.f2412a > 0) {
            cn.jiguang.as.d.i("LoginResponse", "Response error - code:" + this.f2412a);
        }
        ByteBuffer byteBuffer = this.f2417f;
        this.f2415d = -1;
        int i9 = this.f2412a;
        if (i9 != 0) {
            if (i9 == 1012) {
                try {
                    this.f2420i = b.a(byteBuffer);
                } catch (Throwable unused2) {
                    this.f2412a = 10000;
                }
                cn.jiguang.aw.a.a(JCoreManager.getAppContext(null), this.f2420i);
                return;
            }
            return;
        }
        try {
            this.f2413b = byteBuffer.getInt();
            this.f2418g = byteBuffer.getShort();
            this.f2419h = b.a(byteBuffer);
            this.f2414c = byteBuffer.getInt();
        } catch (Throwable unused3) {
            this.f2412a = 10000;
        }
        try {
            this.f2415d = byteBuffer.get();
            cn.jiguang.as.d.c("LoginResponse", "idc parse success, value:" + this.f2415d);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("LoginResponse", "parse idc failed, error:" + th2);
        }
    }

    public String toString() {
        return "[LoginResponse] - code:" + this.f2412a + ",sid:" + this.f2413b + ", serverVersion:" + this.f2418g + ", sessionKey:" + this.f2419h + ", serverTime:" + this.f2414c + ", idc:" + this.f2415d + ", connectInfo:" + this.f2420i;
    }
}
