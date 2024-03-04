package com.xiaomi.push;

import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private int f36883a;

    /* renamed from: b  reason: collision with root package name */
    private long f36884b;

    /* renamed from: c  reason: collision with root package name */
    private long f36885c;

    /* renamed from: d  reason: collision with root package name */
    private String f36886d;

    /* renamed from: e  reason: collision with root package name */
    private long f36887e;

    public h() {
        this(0, 0L, 0L, null);
    }

    public h(int i9, long j10, long j11, Exception exc) {
        this.f36883a = i9;
        this.f36884b = j10;
        this.f36887e = j11;
        this.f36885c = System.currentTimeMillis();
        if (exc != null) {
            this.f36886d = exc.getClass().getSimpleName();
        }
    }

    public int a() {
        return this.f36883a;
    }

    public h b(JSONObject jSONObject) {
        this.f36884b = jSONObject.getLong("cost");
        this.f36887e = jSONObject.getLong("size");
        this.f36885c = jSONObject.getLong(TimeDisplaySetting.TIME_DISPLAY_SETTING);
        this.f36883a = jSONObject.getInt("wt");
        this.f36886d = jSONObject.optString("expt");
        return this;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cost", this.f36884b);
        jSONObject.put("size", this.f36887e);
        jSONObject.put(TimeDisplaySetting.TIME_DISPLAY_SETTING, this.f36885c);
        jSONObject.put("wt", this.f36883a);
        jSONObject.put("expt", this.f36886d);
        return jSONObject;
    }
}
