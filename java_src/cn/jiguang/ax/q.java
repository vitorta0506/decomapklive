package cn.jiguang.ax;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q extends cn.jiguang.bg.b {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f2227a;

    /* renamed from: b  reason: collision with root package name */
    private Context f2228b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, byte[] bArr) {
        this.f2228b = context;
        this.f2227a = bArr;
        this.f2494h = "TcpRecvAction";
    }

    @Override // cn.jiguang.bg.b
    public void a() {
        try {
            cn.jiguang.az.h.a().a(this.f2228b, "tcp_a22", null);
            cn.jiguang.bb.a.a(this.f2228b, this.f2227a);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("TcpRecvAction", "TcpRecvAction failed:" + th2.getMessage());
        }
    }
}
