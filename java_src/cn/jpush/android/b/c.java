package cn.jpush.android.b;

import android.content.Context;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.api.ReportCallBack;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.n.e;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected Context f2972a;

    public c(Context context) {
        this.f2972a = context.getApplicationContext();
        e.a().a(new e.a() { // from class: cn.jpush.android.b.c.1
            @Override // cn.jpush.android.n.e.a
            public void a(b bVar) {
                c.this.a(bVar);
            }

            @Override // cn.jpush.android.n.e.a
            public void a(b bVar, b bVar2) {
                c.this.a(bVar, bVar2);
            }

            @Override // cn.jpush.android.n.e.a
            public void a(boolean z10) {
                if (z10) {
                    c.this.a();
                } else {
                    c.this.b();
                }
            }

            @Override // cn.jpush.android.n.e.a
            public void b(b bVar) {
                c.this.b(bVar);
            }
        });
    }

    private void a(Context context, b bVar) {
        try {
            Logger.d("GeofenceAction", "geofence report id=" + bVar.f2952a);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("geofence_id", bVar.f2952a);
            if (JCoreManager.onEvent(null, null, 26, null, null, jSONObject, "geo_fence") instanceof JSONObject) {
                JCoreManager.onEvent(context, JPushConstants.SDK_TYPE, 15, null, null, jSONObject, new ReportCallBack() { // from class: cn.jpush.android.b.c.2
                    @Override // cn.jiguang.api.ReportCallBack
                    public void onFinish(int i9) {
                        Logger.d("GeofenceAction", "report with callback:" + i9);
                    }
                });
            }
        } catch (Throwable th2) {
            Logger.w("GeofenceAction", "report geofence error:" + th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    public void a(long j10) {
    }

    protected abstract void a(b bVar);

    protected abstract void a(b bVar, b bVar2);

    public void b() {
    }

    protected abstract void b(b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(b bVar) {
        if (bVar != null) {
            try {
                if (bVar.f2960i == 2) {
                    a(this.f2972a, bVar);
                } else {
                    cn.jpush.android.d.d dVar = bVar.f2971t;
                    if (dVar != null) {
                        cn.jpush.android.d.b.a(this.f2972a, dVar);
                    } else {
                        Logger.w("GeofenceAction", "there is no push entity, won't show notification");
                    }
                }
            } catch (Throwable th2) {
                Logger.ww("GeofenceAction", "process geofence error:" + th2);
            }
        }
    }
}
