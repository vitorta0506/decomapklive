package cn.jpush.android.x;

import cn.jpush.android.helper.Logger;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public String f3535a;

    /* renamed from: b  reason: collision with root package name */
    public String f3536b;

    /* renamed from: c  reason: collision with root package name */
    public long f3537c;

    public static f a(String str, String str2, long j10) {
        f fVar = new f();
        fVar.f3535a = str;
        fVar.f3536b = str2;
        fVar.f3537c = j10;
        return fVar;
    }

    public static f a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                f fVar = new f();
                fVar.f3535a = jSONObject.getString("tpl_id");
                fVar.f3536b = jSONObject.getString("tpl_file_name");
                fVar.f3537c = jSONObject.getLong("tpl_recent_use_time");
                return fVar;
            } catch (Throwable th2) {
                th2.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tpl_id", this.f3535a);
            jSONObject.put("tpl_file_name", this.f3536b);
            jSONObject.put("tpl_recent_use_time", this.f3537c);
            return jSONObject;
        } catch (Throwable th2) {
            Logger.w("InAppTemplate", "in-app template to json failed. " + th2.getMessage());
            return null;
        }
    }
}
