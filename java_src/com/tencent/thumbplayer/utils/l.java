package com.tencent.thumbplayer.utils;

import android.text.TextUtils;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class l implements com.tencent.thumbplayer.common.a.a {

    /* renamed from: a  reason: collision with root package name */
    protected final Properties f34480a;

    public l() {
        this(null);
    }

    public l(Properties properties) {
        this.f34480a = new Properties();
        if (properties != null) {
            for (Map.Entry entry : properties.entrySet()) {
                a((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public Properties a() {
        return this.f34480a;
    }

    @Override // com.tencent.thumbplayer.common.a.a
    public void a(String str, float f10) {
        if (str != null) {
            this.f34480a.put(str, String.valueOf(f10));
        }
    }

    @Override // com.tencent.thumbplayer.common.a.a
    public void a(String str, int i9) {
        if (str != null) {
            this.f34480a.put(str, String.valueOf(i9));
        }
    }

    @Override // com.tencent.thumbplayer.common.a.a
    public void a(String str, long j10) {
        if (str != null) {
            this.f34480a.put(str, String.valueOf(j10));
        }
    }

    @Override // com.tencent.thumbplayer.common.a.a
    public void a(String str, String str2) {
        if (str != null) {
            if (TextUtils.isEmpty(str2)) {
                this.f34480a.put(str, "");
            } else {
                this.f34480a.put(str, str2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.common.a.a
    public void a(Map<String, String> map) {
        if (map == null) {
            throw new IllegalArgumentException("map must not be null!");
        }
        for (Map.Entry entry : this.f34480a.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                map.put(key.toString(), "");
            } else {
                map.put(key.toString(), value.toString());
            }
        }
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject(this.f34480a);
        if (jSONObject.has("data")) {
            try {
                String string = jSONObject.getString("data");
                jSONObject.remove("data");
                jSONObject.put("data", new JSONObject(string));
            } catch (JSONException e10) {
                TPLogUtil.e("TPProperties", e10);
            }
        }
        return jSONObject.toString();
    }
}
