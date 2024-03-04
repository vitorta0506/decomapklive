package com.huawei.hms.push;

import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.log.HMSLog;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.AdvertisementOption;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class k {
    public int B;
    public String D;

    /* renamed from: b  reason: collision with root package name */
    public int f27731b;

    /* renamed from: c  reason: collision with root package name */
    public String f27732c;

    /* renamed from: d  reason: collision with root package name */
    public String f27733d;

    /* renamed from: l  reason: collision with root package name */
    public String f27741l;

    /* renamed from: m  reason: collision with root package name */
    public String f27742m;

    /* renamed from: n  reason: collision with root package name */
    public String f27743n;

    /* renamed from: o  reason: collision with root package name */
    public String f27744o;

    /* renamed from: p  reason: collision with root package name */
    public String f27745p;

    /* renamed from: r  reason: collision with root package name */
    public String f27747r;

    /* renamed from: s  reason: collision with root package name */
    public String f27748s;

    /* renamed from: z  reason: collision with root package name */
    public String f27755z;

    /* renamed from: a  reason: collision with root package name */
    public String f27730a = "";

    /* renamed from: e  reason: collision with root package name */
    public String f27734e = "";

    /* renamed from: f  reason: collision with root package name */
    public String f27735f = "";

    /* renamed from: g  reason: collision with root package name */
    public String f27736g = "";

    /* renamed from: h  reason: collision with root package name */
    public String f27737h = "";

    /* renamed from: i  reason: collision with root package name */
    public String f27738i = "";

    /* renamed from: j  reason: collision with root package name */
    public String f27739j = "";

    /* renamed from: k  reason: collision with root package name */
    public String f27740k = "";

    /* renamed from: q  reason: collision with root package name */
    public String f27746q = "";

    /* renamed from: t  reason: collision with root package name */
    public int f27749t = n.STYLE_DEFAULT.ordinal();

    /* renamed from: u  reason: collision with root package name */
    public String f27750u = "";

    /* renamed from: v  reason: collision with root package name */
    public String f27751v = "";

    /* renamed from: w  reason: collision with root package name */
    public String f27752w = "";

    /* renamed from: x  reason: collision with root package name */
    public int f27753x = 0;

    /* renamed from: y  reason: collision with root package name */
    public int f27754y = 0;
    public String A = "";
    public String C = "";
    public String E = "";
    public String F = "";

    public k(byte[] bArr, byte[] bArr2) {
        Charset charset = x.f27782a;
        this.f27747r = new String(bArr, charset);
        this.f27748s = new String(bArr2, charset);
    }

    public final JSONObject a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(RemoteMessageConst.MessageBody.MSG_CONTENT, jSONObject);
        jSONObject2.put("group", this.f27730a);
        jSONObject2.put("tag", this.A);
        jSONObject2.put(RemoteMessageConst.Notification.AUTO_CANCEL, this.f27753x);
        jSONObject2.put("visibility", this.f27754y);
        jSONObject2.put(RemoteMessageConst.Notification.WHEN, this.f27755z);
        return jSONObject2;
    }

    public final JSONObject b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("cmd", this.f27736g);
        jSONObject2.put("content", this.f27737h);
        jSONObject2.put(RemoteMessageConst.Notification.NOTIFY_ICON, this.f27738i);
        jSONObject2.put(RemoteMessageConst.Notification.NOTIFY_TITLE, this.f27739j);
        jSONObject2.put("notifySummary", this.f27740k);
        jSONObject2.put(RemoteMessageConst.MessageBody.PARAM, jSONObject);
        return jSONObject2;
    }

    public final void c(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(AdvertisementOption.AD_PACKAGE)) {
            String string = jSONObject.getString(AdvertisementOption.AD_PACKAGE);
            StringBuilder sb2 = new StringBuilder();
            if (!TextUtils.isEmpty(string) && string.length() < 48) {
                int length = 48 - string.length();
                for (int i9 = 0; i9 < length; i9++) {
                    sb2.append("0");
                }
                sb2.append(string);
                this.f27733d = sb2.toString();
                return;
            }
            this.f27733d = string.substring(0, 48);
        }
    }

    public final boolean d(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (jSONObject.has(RemoteMessageConst.Notification.CLICK_ACTION)) {
            this.f27742m = jSONObject.getString(RemoteMessageConst.Notification.CLICK_ACTION);
        }
        if (jSONObject.has(RemoteMessageConst.Notification.INTENT_URI)) {
            this.f27732c = jSONObject.getString(RemoteMessageConst.Notification.INTENT_URI);
        }
        if (jSONObject.has("appPackageName")) {
            this.f27741l = jSONObject.getString("appPackageName");
            return true;
        }
        HMSLog.d("PushSelfShowLog", "appPackageName is null");
        return false;
    }

    public final boolean e(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(RemoteMessageConst.MSGID)) {
            Object obj = jSONObject.get(RemoteMessageConst.MSGID);
            if (obj instanceof String) {
                this.f27734e = (String) obj;
                return true;
            } else if (obj instanceof Integer) {
                this.f27734e = String.valueOf(((Integer) obj).intValue());
                return true;
            } else {
                return true;
            }
        }
        HMSLog.i("PushSelfShowLog", "msgId == null");
        return false;
    }

    public final boolean f(JSONObject jSONObject) {
        HMSLog.d("PushSelfShowLog", "enter parseNotifyParam");
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.NOTIFY_DETAIL);
            if (jSONObject2.has(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE)) {
                this.f27749t = jSONObject2.getInt(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE);
            }
            this.f27750u = jSONObject2.optString("bigTitle");
            this.f27751v = jSONObject2.optString("bigContent");
            this.E = jSONObject2.optString(RemoteMessageConst.Notification.ICON);
            return true;
        } catch (JSONException e10) {
            HMSLog.i("PushSelfShowLog", e10.toString());
            return false;
        }
    }

    public final void g(JSONObject jSONObject) {
        this.f27730a = jSONObject.optString("group");
        HMSLog.d("PushSelfShowLog", "NOTIFY_GROUP:" + this.f27730a);
        this.f27753x = jSONObject.optInt(RemoteMessageConst.Notification.AUTO_CANCEL, 1);
        HMSLog.d("PushSelfShowLog", "autoCancel: " + this.f27753x);
        this.f27754y = jSONObject.optInt("visibility", 0);
        this.f27755z = jSONObject.optString(RemoteMessageConst.Notification.WHEN);
        this.A = jSONObject.optString("tag");
    }

    public final boolean h(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.PARAM);
            if (jSONObject2.has("autoClear")) {
                this.f27731b = jSONObject2.getInt("autoClear");
            } else {
                this.f27731b = 0;
            }
            if (!PushConstants.EXTRA_APPLICATION_PENDING_INTENT.equals(this.f27736g) && !"cosa".equals(this.f27736g)) {
                if ("url".equals(this.f27736g)) {
                    k(jSONObject2);
                    return true;
                } else if ("rp".equals(this.f27736g)) {
                    j(jSONObject2);
                    return true;
                } else {
                    return true;
                }
            }
            d(jSONObject2);
            return true;
        } catch (Exception e10) {
            HMSLog.e("PushSelfShowLog", "ParseParam error ", e10);
            return false;
        }
    }

    public final boolean i(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(RemoteMessageConst.MessageBody.PS_CONTENT)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
            this.f27736g = jSONObject2.getString("cmd");
            this.f27737h = jSONObject2.optString("content");
            this.f27738i = jSONObject2.optString(RemoteMessageConst.Notification.NOTIFY_ICON);
            this.f27739j = jSONObject2.optString(RemoteMessageConst.Notification.NOTIFY_TITLE);
            this.f27740k = jSONObject2.optString("notifySummary");
            this.D = jSONObject2.optString(RemoteMessageConst.Notification.TICKER);
            if ((!jSONObject2.has(RemoteMessageConst.MessageBody.NOTIFY_DETAIL) || f(jSONObject2)) && jSONObject2.has(RemoteMessageConst.MessageBody.PARAM)) {
                return h(jSONObject2);
            }
        }
        return false;
    }

    public final boolean j(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (jSONObject.has("appPackageName")) {
            this.f27741l = jSONObject.getString("appPackageName");
        }
        if (jSONObject.has("rpt") && jSONObject.has("rpl")) {
            this.f27744o = jSONObject.getString("rpl");
            this.f27745p = jSONObject.getString("rpt");
            if (jSONObject.has("rpct")) {
                this.f27746q = jSONObject.getString("rpct");
                return true;
            }
            return true;
        }
        HMSLog.d("PushSelfShowLog", "rpl or rpt is null");
        return false;
    }

    public final boolean k(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return false;
        }
        if (jSONObject.has("url")) {
            this.f27743n = jSONObject.getString("url");
            if (jSONObject.has("appPackageName")) {
                this.f27741l = jSONObject.getString("appPackageName");
            }
            if (jSONObject.has("rpt") && jSONObject.has("rpl")) {
                this.f27744o = jSONObject.getString("rpl");
                this.f27745p = jSONObject.getString("rpt");
                if (jSONObject.has("rpct")) {
                    this.f27746q = jSONObject.getString("rpct");
                    return true;
                }
                return true;
            }
            return true;
        }
        HMSLog.d("PushSelfShowLog", "url is null");
        return false;
    }

    public String l() {
        return this.f27730a;
    }

    public String m() {
        return this.E;
    }

    public String n() {
        return this.f27732c;
    }

    public byte[] o() {
        try {
            return a(a(b(v()), r())).toString().getBytes(x.f27782a);
        } catch (JSONException e10) {
            HMSLog.e("PushSelfShowLog", "getMsgData failed JSONException:", e10);
            return new byte[0];
        }
    }

    public String p() {
        HMSLog.d("PushSelfShowLog", "msgId =" + this.f27734e);
        return this.f27734e;
    }

    public String q() {
        return this.A;
    }

    public final JSONObject r() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, this.f27749t);
        jSONObject.put("bigTitle", this.f27750u);
        jSONObject.put("bigContent", this.f27751v);
        jSONObject.put("bigPic", this.f27752w);
        return jSONObject;
    }

    public int s() {
        return this.B;
    }

    public String t() {
        return this.f27740k;
    }

    public String u() {
        return this.f27739j;
    }

    public final JSONObject v() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("autoClear", this.f27731b);
        jSONObject.put("url", this.f27743n);
        jSONObject.put("rpl", this.f27744o);
        jSONObject.put("rpt", this.f27745p);
        jSONObject.put("rpct", this.f27746q);
        jSONObject.put("appPackageName", this.f27741l);
        jSONObject.put(RemoteMessageConst.Notification.CLICK_ACTION, this.f27742m);
        jSONObject.put(RemoteMessageConst.Notification.INTENT_URI, this.f27732c);
        return jSONObject;
    }

    public int w() {
        return this.f27749t;
    }

    public String x() {
        return this.D;
    }

    public byte[] y() {
        return this.f27748s.getBytes(x.f27782a);
    }

    public boolean z() {
        try {
            if (TextUtils.isEmpty(this.f27747r)) {
                HMSLog.d("PushSelfShowLog", "msg is null");
                return false;
            }
            JSONObject jSONObject = new JSONObject(this.f27747r);
            g(jSONObject);
            JSONObject jSONObject2 = jSONObject.getJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
            if (e(jSONObject2)) {
                this.f27735f = jSONObject2.optString("dispPkgName");
                c(jSONObject2);
                this.B = jSONObject2.optInt(RemoteMessageConst.Notification.NOTIFY_ID, -1);
                this.C = jSONObject2.optString("data");
                this.F = jSONObject2.optString(RemoteMessageConst.ANALYTIC_INFO);
                return i(jSONObject2);
            }
            return false;
        } catch (JSONException unused) {
            HMSLog.d("PushSelfShowLog", "parse message exception.");
            return false;
        } catch (Exception e10) {
            HMSLog.d("PushSelfShowLog", e10.toString());
            return false;
        }
    }

    public final JSONObject a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("dispPkgName", this.f27735f);
        jSONObject3.put(RemoteMessageConst.MSGID, this.f27734e);
        jSONObject3.put(AdvertisementOption.AD_PACKAGE, this.f27733d);
        jSONObject3.put(RemoteMessageConst.Notification.NOTIFY_ID, this.B);
        jSONObject3.put(RemoteMessageConst.MessageBody.PS_CONTENT, jSONObject);
        jSONObject3.put(RemoteMessageConst.MessageBody.NOTIFY_DETAIL, jSONObject2);
        jSONObject3.put(RemoteMessageConst.Notification.TICKER, this.D);
        jSONObject3.put("data", this.C);
        return jSONObject3;
    }

    public String b() {
        return this.F;
    }

    public String d() {
        return this.f27741l;
    }

    public String g() {
        return this.f27751v;
    }

    public int e() {
        return this.f27753x;
    }

    public int f() {
        return this.f27731b;
    }

    public String j() {
        return this.f27737h;
    }

    public String c() {
        return this.f27733d;
    }

    public String k() {
        return this.f27735f;
    }

    public String h() {
        return this.f27750u;
    }

    public String i() {
        return this.f27736g;
    }

    public String a() {
        return this.f27742m;
    }

    public void a(int i9) {
        this.B = i9;
    }
}
