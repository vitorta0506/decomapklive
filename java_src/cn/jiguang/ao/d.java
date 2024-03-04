package cn.jiguang.ao;

import android.content.Context;
import cn.jiguang.aq.e;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class d extends cn.jiguang.o.a {

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f1985b;

    /* renamed from: a  reason: collision with root package name */
    private Context f1986a;

    /* renamed from: c  reason: collision with root package name */
    private cn.jiguang.ap.a f1987c;

    public static d a() {
        if (f1985b == null) {
            synchronized (d.class) {
                if (f1985b == null) {
                    f1985b = new d();
                }
            }
        }
        return f1985b;
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f1986a = context;
        e.f2033a = true;
        return "JWakeReport";
    }

    @Override // cn.jiguang.o.a
    protected boolean a(Context context, String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        this.f1987c = cn.jiguang.aq.b.b(context);
        super.b(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public boolean c(Context context, String str) {
        return cn.jiguang.o.b.d(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (this.f1987c.f2007t) {
            JSONArray b10 = cn.jiguang.aq.c.b(context);
            if (b10 == null || b10.length() == 0) {
                cn.jiguang.al.a.a("JWakeReport", "no report wakeData");
            } else {
                cn.jiguang.al.a.a("JWakeReport", "report wakeData:" + b10);
                cn.jiguang.o.d.a(context, b10);
                cn.jiguang.aq.c.c(context);
            }
        } else {
            cn.jiguang.al.a.d("JWakeReport", "server set do not report wake data.");
        }
        if (this.f1987c.f2008u) {
            JSONArray a10 = e.a(context);
            if (a10 == null || a10.length() == 0) {
                cn.jiguang.al.a.a("JWakeReport", "no report wakedData");
            } else {
                cn.jiguang.al.a.a("JWakeReport", "report wakedData:" + a10);
                cn.jiguang.o.d.a(context, a10);
                e.d(context);
            }
        } else {
            cn.jiguang.al.a.d("JWakeReport", "server set do not report waked data.");
        }
        super.d(context, str);
    }
}
