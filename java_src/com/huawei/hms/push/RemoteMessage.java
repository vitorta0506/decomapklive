package com.huawei.hms.push;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.push.utils.DateUtil;
import com.huawei.hms.push.utils.JsonUtil;
import com.huawei.hms.support.api.push.PushException;
import com.huawei.hms.support.log.HMSLog;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class RemoteMessage implements Parcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f27683a;

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f27684b;

    /* renamed from: c  reason: collision with root package name */
    public static final long[] f27685c;

    /* renamed from: d  reason: collision with root package name */
    public static final HashMap<String, Object> f27686d;

    /* renamed from: e  reason: collision with root package name */
    public static final HashMap<String, Object> f27687e;

    /* renamed from: f  reason: collision with root package name */
    public static final HashMap<String, Object> f27688f;

    /* renamed from: g  reason: collision with root package name */
    public static final HashMap<String, Object> f27689g;

    /* renamed from: h  reason: collision with root package name */
    public static final HashMap<String, Object> f27690h;

    /* renamed from: i  reason: collision with root package name */
    public Bundle f27691i;

    /* renamed from: j  reason: collision with root package name */
    public Notification f27692j;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public final Bundle f27693a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f27694b;

        public Builder(String str) {
            Bundle bundle = new Bundle();
            this.f27693a = bundle;
            this.f27694b = new HashMap();
            bundle.putString("to", str);
        }

        public Builder addData(String str, String str2) {
            if (str != null) {
                this.f27694b.put(str, str2);
                return this;
            }
            throw new IllegalArgumentException("add data failed, key is null.");
        }

        public RemoteMessage build() {
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject();
            try {
                for (Map.Entry<String, String> entry : this.f27694b.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                try {
                    String jSONObject2 = jSONObject.toString();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(RemoteMessageConst.COLLAPSE_KEY, this.f27693a.getString(RemoteMessageConst.COLLAPSE_KEY));
                    jSONObject3.put(RemoteMessageConst.TTL, this.f27693a.getInt(RemoteMessageConst.TTL));
                    jSONObject3.put(RemoteMessageConst.SEND_MODE, this.f27693a.getInt(RemoteMessageConst.SEND_MODE));
                    jSONObject3.put(RemoteMessageConst.RECEIPT_MODE, this.f27693a.getInt(RemoteMessageConst.RECEIPT_MODE));
                    JSONObject jSONObject4 = new JSONObject();
                    if (jSONObject.length() != 0) {
                        jSONObject4.put("data", jSONObject2);
                    }
                    jSONObject4.put(RemoteMessageConst.MSGID, this.f27693a.getString(RemoteMessageConst.MSGID));
                    jSONObject3.put(RemoteMessageConst.MessageBody.MSG_CONTENT, jSONObject4);
                    bundle.putByteArray(RemoteMessageConst.MSGBODY, jSONObject3.toString().getBytes(x.f27782a));
                    bundle.putString("to", this.f27693a.getString("to"));
                    bundle.putString(RemoteMessageConst.MSGTYPE, this.f27693a.getString(RemoteMessageConst.MSGTYPE));
                    return new RemoteMessage(bundle);
                } catch (JSONException unused) {
                    HMSLog.w("RemoteMessage", "JSONException: parse message body failed.");
                    throw new PushException(PushException.EXCEPTION_SEND_FAILED);
                }
            } catch (JSONException unused2) {
                HMSLog.w("RemoteMessage", "JSONException: parse data to json failed.");
                throw new PushException(PushException.EXCEPTION_SEND_FAILED);
            }
        }

        public Builder clearData() {
            this.f27694b.clear();
            return this;
        }

        public Builder setCollapseKey(String str) {
            this.f27693a.putString(RemoteMessageConst.COLLAPSE_KEY, str);
            return this;
        }

        public Builder setData(Map<String, String> map) {
            this.f27694b.clear();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f27694b.put(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder setMessageId(String str) {
            this.f27693a.putString(RemoteMessageConst.MSGID, str);
            return this;
        }

        public Builder setMessageType(String str) {
            this.f27693a.putString(RemoteMessageConst.MSGTYPE, str);
            return this;
        }

        public Builder setReceiptMode(int i9) {
            if (i9 != 1 && i9 != 0) {
                throw new IllegalArgumentException("receipt mode can only be 0 or 1.");
            }
            this.f27693a.putInt(RemoteMessageConst.RECEIPT_MODE, i9);
            return this;
        }

        public Builder setSendMode(int i9) {
            if (i9 != 0 && i9 != 1) {
                throw new IllegalArgumentException("send mode can only be 0 or 1.");
            }
            this.f27693a.putInt(RemoteMessageConst.SEND_MODE, i9);
            return this;
        }

        public Builder setTtl(int i9) {
            if (i9 >= 1 && i9 <= 1296000) {
                this.f27693a.putInt(RemoteMessageConst.TTL, i9);
                return this;
            }
            throw new IllegalArgumentException("ttl must be greater than or equal to 1 and less than or equal to 1296000");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface MessagePriority {
    }

    /* loaded from: classes4.dex */
    public static class Notification implements Serializable {
        public final long[] A;
        public final String B;

        /* renamed from: a  reason: collision with root package name */
        public final String f27695a;

        /* renamed from: b  reason: collision with root package name */
        public final String f27696b;

        /* renamed from: c  reason: collision with root package name */
        public final String[] f27697c;

        /* renamed from: d  reason: collision with root package name */
        public final String f27698d;

        /* renamed from: e  reason: collision with root package name */
        public final String f27699e;

        /* renamed from: f  reason: collision with root package name */
        public final String[] f27700f;

        /* renamed from: g  reason: collision with root package name */
        public final String f27701g;

        /* renamed from: h  reason: collision with root package name */
        public final String f27702h;

        /* renamed from: i  reason: collision with root package name */
        public final String f27703i;

        /* renamed from: j  reason: collision with root package name */
        public final String f27704j;

        /* renamed from: k  reason: collision with root package name */
        public final String f27705k;

        /* renamed from: l  reason: collision with root package name */
        public final String f27706l;

        /* renamed from: m  reason: collision with root package name */
        public final String f27707m;

        /* renamed from: n  reason: collision with root package name */
        public final Uri f27708n;

        /* renamed from: o  reason: collision with root package name */
        public final int f27709o;

        /* renamed from: p  reason: collision with root package name */
        public final String f27710p;

        /* renamed from: q  reason: collision with root package name */
        public final int f27711q;

        /* renamed from: r  reason: collision with root package name */
        public final int f27712r;

        /* renamed from: s  reason: collision with root package name */
        public final int f27713s;

        /* renamed from: t  reason: collision with root package name */
        public final int[] f27714t;

        /* renamed from: u  reason: collision with root package name */
        public final String f27715u;

        /* renamed from: v  reason: collision with root package name */
        public final int f27716v;

        /* renamed from: w  reason: collision with root package name */
        public final String f27717w;

        /* renamed from: x  reason: collision with root package name */
        public final int f27718x;

        /* renamed from: y  reason: collision with root package name */
        public final String f27719y;

        /* renamed from: z  reason: collision with root package name */
        public final String f27720z;

        public /* synthetic */ Notification(Bundle bundle, b bVar) {
            this(bundle);
        }

        public final Integer a(String str) {
            if (str != null) {
                try {
                    return Integer.valueOf(str);
                } catch (NumberFormatException unused) {
                    HMSLog.w("RemoteMessage", "NumberFormatException: get " + str + " failed.");
                }
            }
            return null;
        }

        public Integer getBadgeNumber() {
            return a(this.f27717w);
        }

        public String getBody() {
            return this.f27698d;
        }

        public String[] getBodyLocalizationArgs() {
            String[] strArr = this.f27700f;
            return strArr == null ? new String[0] : (String[]) strArr.clone();
        }

        public String getBodyLocalizationKey() {
            return this.f27699e;
        }

        public String getChannelId() {
            return this.f27707m;
        }

        public String getClickAction() {
            return this.f27705k;
        }

        public String getColor() {
            return this.f27704j;
        }

        public String getIcon() {
            return this.f27701g;
        }

        public Uri getImageUrl() {
            String str = this.f27710p;
            if (str == null) {
                return null;
            }
            return Uri.parse(str);
        }

        public Integer getImportance() {
            return a(this.f27719y);
        }

        public String getIntentUri() {
            return this.f27706l;
        }

        public int[] getLightSettings() {
            int[] iArr = this.f27714t;
            return iArr == null ? new int[0] : (int[]) iArr.clone();
        }

        public Uri getLink() {
            return this.f27708n;
        }

        public int getNotifyId() {
            return this.f27709o;
        }

        public String getSound() {
            return this.f27702h;
        }

        public String getTag() {
            return this.f27703i;
        }

        public String getTicker() {
            return this.f27720z;
        }

        public String getTitle() {
            return this.f27695a;
        }

        public String[] getTitleLocalizationArgs() {
            String[] strArr = this.f27697c;
            return strArr == null ? new String[0] : (String[]) strArr.clone();
        }

        public String getTitleLocalizationKey() {
            return this.f27696b;
        }

        public long[] getVibrateConfig() {
            long[] jArr = this.A;
            return jArr == null ? new long[0] : (long[]) jArr.clone();
        }

        public Integer getVisibility() {
            return a(this.B);
        }

        public Long getWhen() {
            if (!TextUtils.isEmpty(this.f27715u)) {
                try {
                    return Long.valueOf(DateUtil.parseUtcToMillisecond(this.f27715u));
                } catch (StringIndexOutOfBoundsException unused) {
                    HMSLog.w("RemoteMessage", "StringIndexOutOfBoundsException: parse when failed.");
                } catch (ParseException unused2) {
                    HMSLog.w("RemoteMessage", "ParseException: parse when failed.");
                }
            }
            return null;
        }

        public boolean isAutoCancel() {
            return this.f27718x == 1;
        }

        public boolean isDefaultLight() {
            return this.f27711q == 1;
        }

        public boolean isDefaultSound() {
            return this.f27712r == 1;
        }

        public boolean isDefaultVibrate() {
            return this.f27713s == 1;
        }

        public boolean isLocalOnly() {
            return this.f27716v == 1;
        }

        public Notification(Bundle bundle) {
            this.f27695a = bundle.getString(RemoteMessageConst.Notification.NOTIFY_TITLE);
            this.f27698d = bundle.getString("content");
            this.f27696b = bundle.getString(RemoteMessageConst.Notification.TITLE_LOC_KEY);
            this.f27699e = bundle.getString(RemoteMessageConst.Notification.BODY_LOC_KEY);
            this.f27697c = bundle.getStringArray(RemoteMessageConst.Notification.TITLE_LOC_ARGS);
            this.f27700f = bundle.getStringArray(RemoteMessageConst.Notification.BODY_LOC_ARGS);
            this.f27701g = bundle.getString(RemoteMessageConst.Notification.ICON);
            this.f27704j = bundle.getString("color");
            this.f27702h = bundle.getString(RemoteMessageConst.Notification.SOUND);
            this.f27703i = bundle.getString("tag");
            this.f27707m = bundle.getString(RemoteMessageConst.Notification.CHANNEL_ID);
            this.f27705k = bundle.getString(RemoteMessageConst.Notification.CLICK_ACTION);
            this.f27706l = bundle.getString(RemoteMessageConst.Notification.INTENT_URI);
            this.f27709o = bundle.getInt(RemoteMessageConst.Notification.NOTIFY_ID);
            String string = bundle.getString("url");
            this.f27708n = !TextUtils.isEmpty(string) ? Uri.parse(string) : null;
            this.f27710p = bundle.getString(RemoteMessageConst.Notification.NOTIFY_ICON);
            this.f27711q = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_LIGHT_SETTINGS);
            this.f27712r = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_SOUND);
            this.f27713s = bundle.getInt(RemoteMessageConst.Notification.DEFAULT_VIBRATE_TIMINGS);
            this.f27714t = bundle.getIntArray(RemoteMessageConst.Notification.LIGHT_SETTINGS);
            this.f27715u = bundle.getString(RemoteMessageConst.Notification.WHEN);
            this.f27716v = bundle.getInt(RemoteMessageConst.Notification.LOCAL_ONLY);
            this.f27717w = bundle.getString(RemoteMessageConst.Notification.BADGE_SET_NUM, null);
            this.f27718x = bundle.getInt(RemoteMessageConst.Notification.AUTO_CANCEL);
            this.f27719y = bundle.getString(RemoteMessageConst.Notification.PRIORITY, null);
            this.f27720z = bundle.getString(RemoteMessageConst.Notification.TICKER);
            this.A = bundle.getLongArray(RemoteMessageConst.Notification.VIBRATE_TIMINGS);
            this.B = bundle.getString("visibility", null);
        }
    }

    static {
        String[] strArr = new String[0];
        f27683a = strArr;
        int[] iArr = new int[0];
        f27684b = iArr;
        long[] jArr = new long[0];
        f27685c = jArr;
        HashMap<String, Object> hashMap = new HashMap<>(8);
        f27686d = hashMap;
        hashMap.put("from", "");
        hashMap.put(RemoteMessageConst.COLLAPSE_KEY, "");
        hashMap.put(RemoteMessageConst.SEND_TIME, "");
        hashMap.put(RemoteMessageConst.TTL, 86400);
        hashMap.put(RemoteMessageConst.URGENCY, 2);
        hashMap.put(RemoteMessageConst.ORI_URGENCY, 2);
        hashMap.put(RemoteMessageConst.SEND_MODE, 0);
        hashMap.put(RemoteMessageConst.RECEIPT_MODE, 0);
        HashMap<String, Object> hashMap2 = new HashMap<>(8);
        f27687e = hashMap2;
        hashMap2.put(RemoteMessageConst.Notification.TITLE_LOC_KEY, "");
        hashMap2.put(RemoteMessageConst.Notification.BODY_LOC_KEY, "");
        hashMap2.put(RemoteMessageConst.Notification.NOTIFY_ICON, "");
        hashMap2.put(RemoteMessageConst.Notification.TITLE_LOC_ARGS, strArr);
        hashMap2.put(RemoteMessageConst.Notification.BODY_LOC_ARGS, strArr);
        hashMap2.put(RemoteMessageConst.Notification.TICKER, "");
        hashMap2.put(RemoteMessageConst.Notification.NOTIFY_TITLE, "");
        hashMap2.put("content", "");
        HashMap<String, Object> hashMap3 = new HashMap<>(8);
        f27688f = hashMap3;
        hashMap3.put(RemoteMessageConst.Notification.ICON, "");
        hashMap3.put("color", "");
        hashMap3.put(RemoteMessageConst.Notification.SOUND, "");
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_LIGHT_SETTINGS, 1);
        hashMap3.put(RemoteMessageConst.Notification.LIGHT_SETTINGS, iArr);
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_SOUND, 1);
        hashMap3.put(RemoteMessageConst.Notification.DEFAULT_VIBRATE_TIMINGS, 1);
        hashMap3.put(RemoteMessageConst.Notification.VIBRATE_TIMINGS, jArr);
        HashMap<String, Object> hashMap4 = new HashMap<>(8);
        f27689g = hashMap4;
        hashMap4.put("tag", "");
        hashMap4.put(RemoteMessageConst.Notification.WHEN, "");
        hashMap4.put(RemoteMessageConst.Notification.LOCAL_ONLY, 1);
        hashMap4.put(RemoteMessageConst.Notification.BADGE_SET_NUM, "");
        hashMap4.put(RemoteMessageConst.Notification.PRIORITY, "");
        hashMap4.put(RemoteMessageConst.Notification.AUTO_CANCEL, 1);
        hashMap4.put("visibility", "");
        hashMap4.put(RemoteMessageConst.Notification.CHANNEL_ID, "");
        HashMap<String, Object> hashMap5 = new HashMap<>(3);
        f27690h = hashMap5;
        hashMap5.put(RemoteMessageConst.Notification.CLICK_ACTION, "");
        hashMap5.put(RemoteMessageConst.Notification.INTENT_URI, "");
        hashMap5.put("url", "");
        CREATOR = new b();
    }

    public RemoteMessage(Bundle bundle) {
        this.f27691i = a(bundle);
    }

    public static JSONObject b(Bundle bundle) {
        try {
            return new JSONObject(w.a(bundle.getByteArray(RemoteMessageConst.MSGBODY)));
        } catch (JSONException unused) {
            HMSLog.w("RemoteMessage", "JSONException:parse message body failed.");
            return null;
        }
    }

    public static JSONObject c(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PARAM);
        }
        return null;
    }

    public static JSONObject d(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.PS_CONTENT);
        }
        return null;
    }

    public final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        JSONObject b10 = b(bundle);
        JSONObject a10 = a(b10);
        String string = JsonUtil.getString(a10, "data", null);
        bundle2.putString(RemoteMessageConst.ANALYTIC_INFO, JsonUtil.getString(a10, RemoteMessageConst.ANALYTIC_INFO, null));
        bundle2.putString(RemoteMessageConst.DEVICE_TOKEN, bundle.getString(RemoteMessageConst.DEVICE_TOKEN));
        JSONObject d10 = d(a10);
        JSONObject b11 = b(d10);
        JSONObject c10 = c(d10);
        if (bundle.getInt(RemoteMessageConst.INPUT_TYPE) == 1 && s.a(a10, d10, string)) {
            bundle2.putString("data", w.a(bundle.getByteArray(RemoteMessageConst.MSGBODY)));
            return bundle2;
        }
        String string2 = bundle.getString("to");
        String string3 = bundle.getString(RemoteMessageConst.MSGTYPE);
        String string4 = JsonUtil.getString(a10, RemoteMessageConst.MSGID, null);
        bundle2.putString("to", string2);
        bundle2.putString("data", string);
        bundle2.putString(RemoteMessageConst.MSGID, string4);
        bundle2.putString(RemoteMessageConst.MSGTYPE, string3);
        JsonUtil.transferJsonObjectToBundle(b10, bundle2, f27686d);
        bundle2.putBundle(RemoteMessageConst.NOTIFICATION, a(b10, a10, d10, b11, c10));
        return bundle2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public String getAnalyticInfo() {
        return this.f27691i.getString(RemoteMessageConst.ANALYTIC_INFO);
    }

    public Map<String, String> getAnalyticInfoMap() {
        HashMap hashMap = new HashMap();
        String string = this.f27691i.getString(RemoteMessageConst.ANALYTIC_INFO);
        if (string != null && !string.trim().isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String valueOf = String.valueOf(keys.next());
                    hashMap.put(valueOf, String.valueOf(jSONObject.get(valueOf)));
                }
            } catch (JSONException unused) {
                HMSLog.w("RemoteMessage", "JSONException: get analyticInfo from map failed.");
            }
        }
        return hashMap;
    }

    public String getCollapseKey() {
        return this.f27691i.getString(RemoteMessageConst.COLLAPSE_KEY);
    }

    public String getData() {
        return this.f27691i.getString("data");
    }

    public Map<String, String> getDataOfMap() {
        HashMap hashMap = new HashMap();
        String string = this.f27691i.getString("data");
        if (string != null && !string.trim().isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String valueOf = String.valueOf(keys.next());
                    hashMap.put(valueOf, String.valueOf(jSONObject.get(valueOf)));
                }
            } catch (JSONException unused) {
                HMSLog.w("RemoteMessage", "JSONException: get data from map failed");
            }
        }
        return hashMap;
    }

    public String getFrom() {
        return this.f27691i.getString("from");
    }

    public String getMessageId() {
        return this.f27691i.getString(RemoteMessageConst.MSGID);
    }

    public String getMessageType() {
        return this.f27691i.getString(RemoteMessageConst.MSGTYPE);
    }

    public Notification getNotification() {
        Bundle bundle = this.f27691i.getBundle(RemoteMessageConst.NOTIFICATION);
        if (this.f27692j == null && bundle != null) {
            this.f27692j = new Notification(bundle, null);
        }
        if (this.f27692j == null) {
            this.f27692j = new Notification(new Bundle(), null);
        }
        return this.f27692j;
    }

    public int getOriginalUrgency() {
        int i9 = this.f27691i.getInt(RemoteMessageConst.ORI_URGENCY);
        if (i9 == 1 || i9 == 2) {
            return i9;
        }
        return 0;
    }

    public int getReceiptMode() {
        return this.f27691i.getInt(RemoteMessageConst.RECEIPT_MODE);
    }

    public int getSendMode() {
        return this.f27691i.getInt(RemoteMessageConst.SEND_MODE);
    }

    public long getSentTime() {
        try {
            String string = this.f27691i.getString(RemoteMessageConst.SEND_TIME);
            if (TextUtils.isEmpty(string)) {
                return 0L;
            }
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            HMSLog.w("RemoteMessage", "NumberFormatException: get sendTime error.");
            return 0L;
        }
    }

    public String getTo() {
        return this.f27691i.getString("to");
    }

    public String getToken() {
        return this.f27691i.getString(RemoteMessageConst.DEVICE_TOKEN);
    }

    public int getTtl() {
        return this.f27691i.getInt(RemoteMessageConst.TTL);
    }

    public int getUrgency() {
        int i9 = this.f27691i.getInt(RemoteMessageConst.URGENCY);
        if (i9 == 1 || i9 == 2) {
            return i9;
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeBundle(this.f27691i);
        parcel.writeSerializable(this.f27692j);
    }

    public RemoteMessage(Parcel parcel) {
        this.f27691i = parcel.readBundle();
        this.f27692j = (Notification) parcel.readSerializable();
    }

    public static JSONObject b(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.NOTIFY_DETAIL);
        }
        return null;
    }

    public final Bundle a(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, JSONObject jSONObject5) {
        Bundle bundle = new Bundle();
        JsonUtil.transferJsonObjectToBundle(jSONObject3, bundle, f27687e);
        JsonUtil.transferJsonObjectToBundle(jSONObject4, bundle, f27688f);
        JsonUtil.transferJsonObjectToBundle(jSONObject, bundle, f27689g);
        JsonUtil.transferJsonObjectToBundle(jSONObject5, bundle, f27690h);
        bundle.putInt(RemoteMessageConst.Notification.NOTIFY_ID, JsonUtil.getInt(jSONObject2, RemoteMessageConst.Notification.NOTIFY_ID, 0));
        return bundle;
    }

    public static JSONObject a(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(RemoteMessageConst.MessageBody.MSG_CONTENT);
        }
        return null;
    }
}
