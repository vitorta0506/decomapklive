package cn.jpush.android.d;

import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements Serializable {
    private static final long serialVersionUID = -942487107643335186L;

    /* renamed from: a  reason: collision with root package name */
    public String f2988a;

    /* renamed from: b  reason: collision with root package name */
    public String f2989b;

    public a() {
    }

    public a(d dVar) {
        this.f2988a = dVar.f3017c;
        this.f2989b = dVar.f3021g;
    }

    public a(String str, String str2) {
        this.f2988a = str;
        this.f2989b = str2;
    }

    public static a a(JSONObject jSONObject) {
        return new a(jSONObject.optString(JThirdPlatFormInterface.KEY_MSG_ID), jSONObject.optString("override_msg_id"));
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JThirdPlatFormInterface.KEY_MSG_ID, this.f2988a);
            jSONObject.put("override_msg_id", this.f2989b);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (TextUtils.isEmpty(this.f2988a) || TextUtils.isEmpty(aVar.f2988a) || !TextUtils.equals(this.f2988a, aVar.f2988a)) {
                return false;
            }
            if (TextUtils.isEmpty(this.f2989b) && TextUtils.isEmpty(aVar.f2989b)) {
                return true;
            }
            return (TextUtils.isEmpty(this.f2989b) || TextUtils.isEmpty(aVar.f2989b) || !TextUtils.equals(this.f2989b, aVar.f2989b)) ? false : true;
        }
        return false;
    }

    public String toString() {
        return "msg_id = " + this.f2988a + ",  override_msg_id = " + this.f2989b;
    }
}
