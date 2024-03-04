package cn.jiguang.q;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends cn.jiguang.o.a {

    /* renamed from: c  reason: collision with root package name */
    private static volatile c f2741c;

    /* renamed from: a  reason: collision with root package name */
    private Context f2742a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f2743b;

    public static c a() {
        if (f2741c == null) {
            synchronized (c.class) {
                if (f2741c == null) {
                    f2741c = new c();
                }
            }
        }
        return f2741c;
    }

    @Override // cn.jiguang.o.a
    protected String a(Context context) {
        this.f2742a = context;
        return "JDeviceBattery";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void b(Context context, String str) {
        if (cn.jiguang.i.a.a().e(1200)) {
            return;
        }
        try {
            Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"), context.getPackageName() + cn.jiguang.a.a.f1807a, null);
            if (registerReceiver == null) {
                return;
            }
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            int intExtra3 = registerReceiver.getIntExtra("status", -1);
            if (intExtra3 == 1) {
                intExtra3 = 0;
            } else if (intExtra3 == 2) {
                intExtra3 = 2;
            } else if (intExtra3 == 3 || intExtra3 == 4) {
                intExtra3 = 1;
            } else if (intExtra3 == 5) {
                intExtra3 = 3;
            }
            int intExtra4 = registerReceiver.getIntExtra("voltage", -1);
            int intExtra5 = registerReceiver.getIntExtra("temperature", -1);
            if (this.f2743b == null) {
                this.f2743b = new JSONObject();
            }
            this.f2743b.put("level", intExtra);
            this.f2743b.put("scale", intExtra2);
            this.f2743b.put("status", intExtra3);
            this.f2743b.put("voltage", intExtra4);
            this.f2743b.put("temperature", intExtra5);
            cn.jiguang.al.a.a("JDeviceBattery", "collect success:" + this.f2743b);
            super.b(context, str);
        } catch (JSONException e10) {
            cn.jiguang.al.a.d("JDeviceBattery", "packageJson exception: " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.jiguang.o.a
    public void d(Context context, String str) {
        if (cn.jiguang.i.a.a().e(1200)) {
            return;
        }
        JSONObject jSONObject = this.f2743b;
        if (jSONObject == null) {
            cn.jiguang.al.a.d("JDeviceBattery", "there are no data to report");
            return;
        }
        cn.jiguang.o.d.a(context, jSONObject, "battery");
        cn.jiguang.o.d.a(context, (Object) this.f2743b);
        super.d(context, str);
        this.f2743b = null;
    }
}
