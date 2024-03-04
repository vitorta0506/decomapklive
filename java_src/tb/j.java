package tb;

import android.util.Log;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
class j implements f {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f58114a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(InputStream inputStream, String str) {
        this.f58114a = b(inputStream);
        c(str);
    }

    private JSONObject b(InputStream inputStream) {
        String str;
        if (inputStream != null) {
            try {
                return new JSONObject(b.g(inputStream, "UTF-8"));
            } catch (IOException unused) {
                str = "IOException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            } catch (JSONException unused2) {
                str = "JSONException when reading the 'Config' from InputStream.";
                Log.e("InputStreamReader", str);
                return new JSONObject();
            }
        }
        return new JSONObject();
    }

    private void c(String str) {
        try {
            JSONObject e10 = e(str);
            if (e10 == null) {
                return;
            }
            String a10 = a("/configuration_version", "");
            BigDecimal bigDecimal = new BigDecimal("0.0");
            try {
                bigDecimal = BigDecimal.valueOf(Double.parseDouble(a10));
            } catch (NumberFormatException unused) {
                Log.d("InputStreamReader", "configuration_version to double error");
            }
            if (bigDecimal.compareTo(new BigDecimal("2.0")) == 0) {
                this.f58114a.getJSONObject("client").put("app_id", e10.getString("app_id"));
            } else if (bigDecimal.compareTo(new BigDecimal("3.0")) >= 0) {
                Iterator<String> keys = e10.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!PushConstants.PACKAGE_NAME.equals(next)) {
                        d(next, e10.get(next), this.f58114a);
                    }
                }
            }
        } catch (JSONException unused2) {
            Log.d("InputStreamReader", "JSONException when reading the 'appInfos' from InputStream.");
        }
    }

    private void d(String str, Object obj, JSONObject jSONObject) throws JSONException {
        if (str == null || obj == null || jSONObject == null) {
            return;
        }
        if (!(obj instanceof JSONObject)) {
            jSONObject.put(str, obj);
            return;
        }
        JSONObject jSONObject2 = (JSONObject) obj;
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            d(next, jSONObject2.get(next), jSONObject.getJSONObject(str));
        }
    }

    private JSONObject e(String str) throws JSONException {
        JSONArray jSONArray = this.f58114a.getJSONArray("appInfos");
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i9);
            if (jSONObject.getString(PushConstants.PACKAGE_NAME).equals(str)) {
                return jSONObject;
            }
        }
        return null;
    }

    @Override // tb.f
    public String a(String str, String str2) {
        if (str.endsWith(FileUtils.RES_PREFIX_STORAGE)) {
            return str2;
        }
        String[] split = str.split(FileUtils.RES_PREFIX_STORAGE);
        try {
            JSONObject jSONObject = this.f58114a;
            for (int i9 = 1; i9 < split.length; i9++) {
                if (i9 == split.length - 1) {
                    str = jSONObject.get(split[i9]).toString();
                    return str;
                }
                jSONObject = jSONObject.getJSONObject(split[i9]);
            }
        } catch (JSONException unused) {
            Log.w("InputStreamReader", "JSONException when reading 'path': " + str);
        }
        return str2;
    }

    public String toString() {
        return "InputStreamReader{config=" + this.f58114a.toString().hashCode() + '}';
    }
}
