package cn.jiguang.ax;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class h extends cn.jiguang.bg.b {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2164a;

    /* renamed from: b  reason: collision with root package name */
    private Context f2165b;

    /* renamed from: c  reason: collision with root package name */
    private cn.jiguang.bc.a f2166c = new cn.jiguang.bc.b(8128, 20);

    static {
        cn.jiguang.av.b.a("NetworkingClient");
    }

    public h(Context context) {
        this.f2165b = context;
        this.f2494h = "NetworkingClient";
    }

    private void a(ByteBuffer byteBuffer) {
        cn.jiguang.av.b.b(new q(this.f2165b, byteBuffer.array()), new int[0]);
    }

    private boolean a(int i9) {
        if (this.f2164a) {
            return false;
        }
        if (i9 <= 0) {
            cn.jiguang.as.d.d("NetworkingClient", "login error,retry login too many times");
            g();
            f();
            return false;
        }
        cn.jiguang.as.d.c("NetworkingClient", "loginTimes:" + i9);
        if (e()) {
            int a10 = c.a(this.f2165b, this.f2166c);
            if (a10 < 0) {
                f();
                return false;
            } else if (a10 <= 0) {
                cn.jiguang.az.h.a().a(this.f2165b, "tcp_a10", null);
                return true;
            } else {
                g();
                if (a10 == 108) {
                    cn.jiguang.av.b.a(this.f2165b);
                    return a(i9 - 1);
                }
                b(a10);
                return false;
            }
        }
        return false;
    }

    private boolean a(Context context) {
        String str;
        cn.jiguang.as.d.c("NetworkingClient", "google:true");
        cn.jiguang.be.a.a(context);
        try {
            this.f2166c = new j(k.a(context)).a(this);
        } catch (Exception e10) {
            f();
            str = "sis and connect failed:" + e10;
        }
        if (a(2)) {
            return true;
        }
        str = "login failed";
        cn.jiguang.as.d.g("NetworkingClient", str);
        return false;
    }

    private void b(int i9) {
        cn.jiguang.as.d.a("NetworkingClient", "Action - onLoginFailed - respCode:" + i9);
        Bundle bundle = new Bundle();
        bundle.putInt("resCode", i9);
        cn.jiguang.az.h.a().a(this.f2165b, "tcp_a12", bundle);
    }

    private boolean e() {
        if (!cn.jiguang.d.b.a(this.f2165b) || TextUtils.isEmpty(cn.jiguang.d.a.i(this.f2165b))) {
            int b10 = c.b(this.f2165b, this.f2166c);
            if (b10 == 0) {
                cn.jiguang.az.h.a().a(this.f2165b, "tcp_a11", null);
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("resCode", b10);
            cn.jiguang.az.h.a().a(this.f2165b, "tcp_a13", bundle);
            g();
            f();
            return false;
        }
        return true;
    }

    private void f() {
        cn.jiguang.as.d.d("NetworkingClient", "Action - closeConnection");
        cn.jiguang.f.i.a(this.f2166c);
        cn.jiguang.az.h.a().a(this.f2165b, "tcp_a19", null);
    }

    private void g() {
        c.b(this.f2165b);
    }

    @Override // cn.jiguang.bg.b
    public void a() {
        cn.jiguang.as.d.f("NetworkingClient", "Begin to run in ConnectingThread - id:" + Thread.currentThread().getId());
        try {
        } catch (Throwable th2) {
            cn.jiguang.as.d.e("NetworkingClient", "run exception", th2);
        }
        if (!a(this.f2165b)) {
            cn.jiguang.as.d.d("NetworkingClient", "prepare Push Channel failed , returned");
            return;
        }
        while (!this.f2164a) {
            cn.jiguang.as.d.d("NetworkingClient", "Network listening...");
            try {
                ByteBuffer a10 = this.f2166c.a();
                a(a10);
                cn.jiguang.as.d.d("NetworkingClient", "Received bytes - len:" + a10.array().length + ", pkg:" + cn.jiguang.f.a.b(this.f2165b));
            } catch (cn.jiguang.az.f e10) {
                cn.jiguang.as.d.g("NetworkingClient", " recv failed with error:" + e10 + " ,No Break!!");
            }
        }
        if (this.f2164a) {
            cn.jiguang.as.d.d("NetworkingClient", "Break receiving by wantStop");
        }
        f();
    }

    public synchronized void b() {
        try {
            cn.jiguang.bg.d.a("TCP_CONN_TASK", this);
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("NetworkingClient", "execute networkingClient exception :" + th2);
        }
    }

    public synchronized void c() {
        cn.jiguang.as.d.d("NetworkingClient", "Action - stop");
        cn.jiguang.f.i.a(this.f2166c);
        this.f2164a = true;
        cn.jiguang.bg.d.a("TCP_CONN_TASK");
    }

    public cn.jiguang.bc.a d() {
        return this.f2166c;
    }
}
