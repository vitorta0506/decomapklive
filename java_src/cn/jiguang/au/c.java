package cn.jiguang.au;

import android.text.TextUtils;
import java.io.File;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public long f2099a;

    /* renamed from: b  reason: collision with root package name */
    public JSONObject f2100b;

    /* renamed from: c  reason: collision with root package name */
    private File f2101c;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f2102d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2103e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f2104f;

    private c(File file, JSONObject jSONObject, JSONObject jSONObject2, boolean z10) {
        this.f2101c = file;
        this.f2102d = jSONObject;
        this.f2100b = jSONObject2;
        this.f2099a = file.length();
        this.f2104f = z10;
        this.f2103e = z10;
    }

    public static c a(File file, Set<String> set) {
        JSONObject a10 = a(file);
        if (a10 != null) {
            return new c(file, a10, cn.jiguang.f.d.a(a10, set), false);
        }
        cn.jiguang.f.c.a(file);
        return null;
    }

    public static c a(File file, JSONObject jSONObject) {
        JSONObject a10 = a(file);
        if (a10 != null) {
            return new c(file, a10, jSONObject, true);
        }
        cn.jiguang.f.c.a(file);
        return null;
    }

    public static JSONObject a(File file) {
        JSONObject jSONObject;
        JSONArray optJSONArray;
        try {
            String d10 = cn.jiguang.f.c.d(file);
            if (TextUtils.isEmpty(d10) || (optJSONArray = (jSONObject = new JSONObject(d10)).optJSONArray("content")) == null) {
                return null;
            }
            if (optJSONArray.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean a(c cVar, File file) {
        boolean z10 = true;
        if (cVar != null) {
            try {
                if (this.f2099a + cVar.f2099a <= 40960) {
                    JSONArray jSONArray = this.f2102d.getJSONArray("content");
                    JSONArray jSONArray2 = cVar.f2102d.getJSONArray("content");
                    for (int i9 = 0; i9 < jSONArray2.length(); i9++) {
                        jSONArray.put(jSONArray2.getJSONObject(i9));
                    }
                    this.f2099a += cVar.f2099a;
                    this.f2103e = true;
                    cn.jiguang.f.c.a(cVar.f2101c);
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, this.f2101c.getName());
        if (this.f2104f) {
            cn.jiguang.f.d.a(this.f2102d, this.f2100b);
        }
        if (this.f2101c.equals(file2)) {
            z10 = false;
        }
        if (this.f2103e || z10) {
            cn.jiguang.f.c.b(file2, this.f2102d.toString());
        }
        if (z10) {
            cn.jiguang.f.c.a(this.f2101c);
        }
        return false;
    }
}
