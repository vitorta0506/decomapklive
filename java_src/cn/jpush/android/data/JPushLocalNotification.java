package cn.jpush.android.data;

import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.helper.Logger;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class JPushLocalNotification implements Serializable {
    private static final long serialVersionUID = 1472982106750878137L;

    /* renamed from: f  reason: collision with root package name */
    private String f3046f;

    /* renamed from: g  reason: collision with root package name */
    private String f3047g;

    /* renamed from: h  reason: collision with root package name */
    private String f3048h;

    /* renamed from: i  reason: collision with root package name */
    private long f3049i;

    /* renamed from: a  reason: collision with root package name */
    private int f3041a = 1;

    /* renamed from: b  reason: collision with root package name */
    private String f3042b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f3043c = "00";

    /* renamed from: d  reason: collision with root package name */
    private String f3044d = "00";

    /* renamed from: e  reason: collision with root package name */
    private long f3045e = 0;

    /* renamed from: j  reason: collision with root package name */
    private long f3050j = 1;

    /* renamed from: k  reason: collision with root package name */
    private int f3051k = 1;

    /* renamed from: l  reason: collision with root package name */
    private String f3052l = "";

    /* renamed from: m  reason: collision with root package name */
    private String f3053m = "";

    private void a(String str, String str2, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f3050j == ((JPushLocalNotification) obj).f3050j;
    }

    public long getBroadcastTime() {
        return this.f3045e;
    }

    public long getBuilderId() {
        return this.f3049i;
    }

    public String getContent() {
        return this.f3046f;
    }

    public String getExtras() {
        return this.f3048h;
    }

    public long getNotificationId() {
        return this.f3050j;
    }

    public String getTitle() {
        return this.f3047g;
    }

    public int hashCode() {
        long j10 = this.f3050j;
        return (int) (j10 ^ (j10 >>> 32));
    }

    public void setBroadcastTime(int i9, int i10, int i11, int i12, int i13, int i14) {
        if (i9 < 0 || i10 < 1 || i10 > 12 || i11 < 1 || i11 > 31 || i12 < 0 || i12 > 23 || i13 < 0 || i13 > 59 || i14 < 0 || i14 > 59) {
            Logger.ee("JPushLocalNotification", "Set time fail! Please check your args!");
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.set(i9, i10 - 1, i11, i12, i13, i14);
        Date time = calendar.getTime();
        long currentTimeMillis = System.currentTimeMillis();
        if (time.getTime() < currentTimeMillis) {
            this.f3045e = currentTimeMillis;
        } else {
            this.f3045e = time.getTime();
        }
    }

    public void setBroadcastTime(long j10) {
        this.f3045e = j10;
    }

    public void setBroadcastTime(Date date) {
        this.f3045e = date.getTime();
    }

    public void setBuilderId(long j10) {
        this.f3049i = j10;
    }

    public void setContent(String str) {
        this.f3046f = str;
    }

    public void setExtras(String str) {
        this.f3048h = str;
    }

    public void setNotificationId(long j10) {
        this.f3050j = (int) j10;
    }

    public void setTitle(String str) {
        this.f3047g = str;
    }

    public String toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (!TextUtils.isEmpty(this.f3048h)) {
                jSONObject2.put("n_extras", new JSONObject(this.f3048h));
            }
            a("n_content", this.f3046f, jSONObject2);
            a("n_title", this.f3047g, jSONObject2);
            a("n_content", this.f3046f, jSONObject2);
            jSONObject2.put("ad_t", 0);
            jSONObject.put("m_content", jSONObject2);
            a(JThirdPlatFormInterface.KEY_MSG_ID, "" + this.f3050j, jSONObject);
            a(EventTrackingUtils.CONTENT_TYPE, this.f3053m, jSONObject);
            a("override_msg_id", this.f3052l, jSONObject);
            jSONObject.put("n_only", this.f3051k);
            jSONObject.put("n_builder_id", this.f3049i);
            jSONObject.put("show_type", 3);
            jSONObject.put("notificaion_type", 1);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }
}
