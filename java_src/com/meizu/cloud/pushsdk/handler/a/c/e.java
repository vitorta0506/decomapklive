package com.meizu.cloud.pushsdk.handler.a.c;

import android.text.TextUtils;
import com.facebook.appevents.UserDataStore;
import com.meizu.cloud.pushinternal.DebugLogger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.handler.MessageV3;
import com.meizu.cloud.pushsdk.handler.MzPushMessage;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private int f28701a;

    /* renamed from: b  reason: collision with root package name */
    private String f28702b = String.valueOf(-1);

    /* renamed from: c  reason: collision with root package name */
    private String f28703c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f28704d = "";

    /* renamed from: e  reason: collision with root package name */
    private int f28705e = -1;

    /* renamed from: f  reason: collision with root package name */
    private String f28706f = "";

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f28707a;

        /* renamed from: b  reason: collision with root package name */
        public String f28708b;

        /* renamed from: c  reason: collision with root package name */
        String f28709c;

        public a(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.isNull("code")) {
                    a(jSONObject.getString("code"));
                }
                if (!jSONObject.isNull("message")) {
                    b(jSONObject.getString("message"));
                }
                if (jSONObject.isNull("value")) {
                    return;
                }
                c(jSONObject.getString("value"));
            } catch (JSONException e10) {
                DebugLogger.e("SecurityMessage", "covert json error " + e10.getMessage());
            }
        }

        public String a() {
            return this.f28709c;
        }

        public void a(String str) {
            this.f28707a = str;
        }

        public void b(String str) {
            this.f28708b = str;
        }

        public void c(String str) {
            this.f28709c = str;
        }

        public String toString() {
            return "PublicKeyStatus{code='" + this.f28707a + "', message='" + this.f28708b + "', publicKey='" + this.f28709c + "'}";
        }
    }

    public static String a(MessageV3 messageV3) {
        JSONObject jSONObject;
        String notificationMessage = messageV3.getNotificationMessage();
        String str = null;
        try {
            try {
                if (!TextUtils.isEmpty(notificationMessage)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(notificationMessage).getJSONObject("data");
                        if (!jSONObject2.isNull(PushConstants.EXTRA)) {
                            JSONObject jSONObject3 = jSONObject2.getJSONObject(PushConstants.EXTRA);
                            if (!jSONObject3.isNull("se")) {
                                str = jSONObject3.getString("se");
                            }
                        }
                    } catch (JSONException e10) {
                        DebugLogger.e("SecurityMessage", "parse notification message error " + e10.getMessage());
                        if (TextUtils.isEmpty(null)) {
                            jSONObject = new JSONObject(notificationMessage);
                        }
                    }
                    if (TextUtils.isEmpty(str)) {
                        jSONObject = new JSONObject(notificationMessage);
                        jSONObject.getString("se");
                    }
                }
            } catch (Throwable th2) {
                if (TextUtils.isEmpty(null)) {
                    try {
                        new JSONObject(notificationMessage).getString("se");
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (Exception unused2) {
        }
        DebugLogger.i("SecurityMessage", "encrypt message " + str);
        return str;
    }

    public static boolean a(String str, MessageV3 messageV3) {
        String str2;
        e e10 = e(str);
        DebugLogger.e("SecurityMessage", "securityMessage " + e10);
        if (System.currentTimeMillis() / 1000 > e10.a()) {
            str2 = "message expire";
        } else if (!messageV3.getTitle().contains(e10.c())) {
            str2 = "invalid title";
        } else if (!messageV3.getContent().contains(e10.d())) {
            str2 = "invalid content";
        } else if (!String.valueOf(-1).equals(e10.b()) && !e10.b().equals(messageV3.getTaskId())) {
            str2 = "invalid taskId";
        } else if (e10.e() != -1) {
            int e11 = e10.e();
            if (e11 == 1) {
                if (!messageV3.getActivity().contains(e10.f())) {
                    str2 = "invalid click activity";
                }
                return true;
            } else if (e11 == 2) {
                if (!messageV3.getWebUrl().contains(e10.f())) {
                    str2 = "invalid web url";
                }
                return true;
            } else {
                if (e11 == 3 && !MzPushMessage.fromMessageV3(messageV3).getSelfDefineContentString().contains(e10.f())) {
                    str2 = "invalid self define";
                }
                return true;
            }
        } else {
            str2 = "invalid click type";
        }
        DebugLogger.e("SecurityMessage", str2);
        return false;
    }

    private static e e(String str) {
        e eVar = new e();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP)) {
                eVar.a(jSONObject.getInt(PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP));
            }
            if (!jSONObject.isNull("ti")) {
                eVar.a(jSONObject.getString("ti"));
            }
            if (!jSONObject.isNull("tl")) {
                eVar.b(jSONObject.getString("tl"));
            }
            if (!jSONObject.isNull("cont")) {
                eVar.c(jSONObject.getString("cont"));
            }
            if (!jSONObject.isNull(UserDataStore.CITY)) {
                eVar.b(jSONObject.getInt(UserDataStore.CITY));
            }
            if (!jSONObject.isNull("pm")) {
                eVar.d(jSONObject.getString("pm"));
            }
        } catch (Exception e10) {
            DebugLogger.e("SecurityMessage", "parse decryptSign error " + e10.getMessage());
        }
        return eVar;
    }

    public int a() {
        return this.f28701a;
    }

    public void a(int i9) {
        this.f28701a = i9;
    }

    public void a(String str) {
        this.f28702b = str;
    }

    public String b() {
        return this.f28702b;
    }

    public void b(int i9) {
        this.f28705e = i9;
    }

    public void b(String str) {
        this.f28703c = str;
    }

    public String c() {
        return this.f28703c;
    }

    public void c(String str) {
        this.f28704d = str;
    }

    public String d() {
        return this.f28704d;
    }

    public void d(String str) {
        this.f28706f = str;
    }

    public int e() {
        return this.f28705e;
    }

    public String f() {
        return this.f28706f;
    }

    public String toString() {
        return "SecurityMessage{timestamp=" + this.f28701a + ", taskId='" + this.f28702b + "', title='" + this.f28703c + "', content='" + this.f28704d + "', clickType=" + this.f28705e + ", params='" + this.f28706f + "'}";
    }
}
