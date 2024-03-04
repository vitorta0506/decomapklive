package cn.jiguang.common.app.entity;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public String f2524a;

    /* renamed from: b  reason: collision with root package name */
    public String f2525b;

    /* renamed from: c  reason: collision with root package name */
    public String f2526c;

    /* renamed from: d  reason: collision with root package name */
    public String f2527d;

    private static CharSequence a(CharSequence charSequence, int i9) {
        return (i9 < 0 || i9 >= charSequence.length()) ? charSequence : charSequence.subSequence(0, i9);
    }

    public JSONObject a(int i9) {
        try {
            return new JSONObject().put("pkg", a(this.f2524a, i9)).put("sign_md5", this.f2525b).put("sign_sha1", this.f2526c).put("sign_sha256", this.f2527d);
        } catch (JSONException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.f2524a;
        String str2 = ((a) obj).f2524a;
        return str != null ? str.equals(str2) : str2 == null;
    }
}
