package cn.jpush.android.x;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {
    private String A;
    private String B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private long H;
    private int I;
    private int J;
    private boolean K;
    private boolean L;
    private String M;
    private int N;
    private int O;
    private int P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private cn.jpush.android.d.d V;

    /* renamed from: b  reason: collision with root package name */
    public String f3510b;

    /* renamed from: c  reason: collision with root package name */
    public int f3511c;

    /* renamed from: d  reason: collision with root package name */
    public String f3512d;

    /* renamed from: e  reason: collision with root package name */
    public String f3513e;

    /* renamed from: f  reason: collision with root package name */
    public int f3514f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3515g;

    /* renamed from: h  reason: collision with root package name */
    public String f3516h;

    /* renamed from: i  reason: collision with root package name */
    public String f3517i;

    /* renamed from: o  reason: collision with root package name */
    public String f3523o;

    /* renamed from: p  reason: collision with root package name */
    public String f3524p;

    /* renamed from: q  reason: collision with root package name */
    public int f3525q;

    /* renamed from: r  reason: collision with root package name */
    public String f3526r;

    /* renamed from: t  reason: collision with root package name */
    public int f3528t;

    /* renamed from: v  reason: collision with root package name */
    public long f3530v;

    /* renamed from: w  reason: collision with root package name */
    private String f3531w;

    /* renamed from: x  reason: collision with root package name */
    private String f3532x;

    /* renamed from: y  reason: collision with root package name */
    private String f3533y;

    /* renamed from: z  reason: collision with root package name */
    private String f3534z;

    /* renamed from: a  reason: collision with root package name */
    public int f3509a = 60;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3518j = true;

    /* renamed from: k  reason: collision with root package name */
    public boolean f3519k = false;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3520l = true;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3521m = true;

    /* renamed from: n  reason: collision with root package name */
    public boolean f3522n = true;

    /* renamed from: s  reason: collision with root package name */
    public boolean f3527s = false;

    /* renamed from: u  reason: collision with root package name */
    public int f3529u = 0;

    public e(cn.jpush.android.d.d dVar) {
        this.A = "";
        this.B = "";
        this.C = 0;
        this.D = 0;
        this.E = 1;
        this.F = 0;
        this.G = 5;
        this.H = 1800L;
        this.I = 0;
        this.J = 10;
        this.K = false;
        this.L = true;
        this.f3533y = dVar.f3017c;
        this.f3531w = dVar.f2991a;
        this.f3532x = dVar.f3004b;
        this.f3534z = dVar.f3020f;
        this.A = dVar.ay;
        this.B = dVar.az;
        this.C = dVar.aA;
        this.D = dVar.aF;
        this.E = dVar.aG;
        this.F = dVar.aH;
        this.G = dVar.aJ;
        this.H = dVar.aK;
        this.I = dVar.aL;
        this.J = dVar.aM;
        this.M = dVar.aY;
        this.N = dVar.aZ;
        this.O = dVar.f3014bj;
        this.P = dVar.f3005ba;
        this.Q = dVar.f3006bb;
        this.R = dVar.f3007bc;
        this.S = dVar.f3008bd;
        this.T = dVar.f3010bf;
        this.U = dVar.f3011bg;
        this.K = dVar.aN != 0;
        this.L = dVar.aO != 0;
        this.f3510b = dVar.K;
        this.V = dVar;
        dVar.f3031q = 0;
        dVar.f2992aa = 0;
        dVar.f3032r = true;
    }

    public static e a(String str) {
        cn.jpush.android.d.d a10;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("entity");
            if (TextUtils.isEmpty(optString) || (a10 = cn.jpush.android.d.d.a(optString)) == null) {
                return null;
            }
            e eVar = new e(a10);
            eVar.f3509a = jSONObject.optInt("webWidth");
            eVar.f3510b = jSONObject.optString("deeplink");
            eVar.f3511c = jSONObject.optInt("failedAction");
            eVar.f3512d = jSONObject.optString("failedLink");
            eVar.f3513e = jSONObject.optString("targetPkgName");
            eVar.f3514f = jSONObject.optInt("urlOpenType");
            eVar.f3515g = jSONObject.optBoolean("isForNewUser");
            eVar.f3516h = jSONObject.optString("targetAppName");
            eVar.f3517i = jSONObject.optString("targetAppIcon");
            eVar.f3518j = jSONObject.optBoolean("isCanCancel");
            eVar.f3519k = jSONObject.optBoolean("useRange");
            eVar.f3520l = jSONObject.optBoolean("installBySys");
            eVar.f3521m = jSONObject.optBoolean("failInstallByWeb");
            eVar.f3522n = jSONObject.optBoolean("isPopGrantWin");
            eVar.f3523o = jSONObject.optString("sspWxAppId");
            eVar.f3524p = jSONObject.optString("sspWmOriginId");
            eVar.f3525q = jSONObject.optInt("sspWmType");
            eVar.f3526r = jSONObject.optString("sspWxPath");
            eVar.f3527s = jSONObject.optBoolean("isWmDeepLink");
            eVar.f3528t = jSONObject.optInt("actionType");
            return eVar;
        } catch (Throwable unused) {
        }
        return null;
    }

    public int a(Context context, String str) {
        String str2;
        JSONObject optJSONObject;
        int i9 = 0;
        int i10 = 1302;
        try {
            JSONArray jSONArray = new JSONArray(this.V.f3011bg);
            Logger.d("InAppMessage", "actionKey: " + str + ", parse intent action, actions: " + jSONArray.toString() + ", actionLen: " + jSONArray.length());
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                try {
                    JSONObject optJSONObject2 = jSONArray.optJSONObject(i11);
                    if (optJSONObject2 != null && optJSONObject2.optString("ein_action_key", "").equals(str)) {
                        int optInt = optJSONObject2.optInt("ein_action_type", 0);
                        this.f3528t = optInt;
                        boolean z10 = true;
                        if (optInt != 1) {
                            if (optInt == 2) {
                                try {
                                    JSONObject optJSONObject3 = optJSONObject2.optJSONObject("ein_wx_intent");
                                    if (optJSONObject3 != null) {
                                        this.f3523o = optJSONObject3.optString("wx_app_id", "");
                                        this.f3524p = optJSONObject3.optString("mini_originid", "");
                                        this.f3525q = optJSONObject3.optInt("mini_type", 0);
                                        this.f3526r = optJSONObject3.optString("mini_path", "");
                                        this.f3527s = true;
                                        str2 = "wx intent param, sspWxAppId=" + this.f3523o + ", sspWmOriginId=" + this.f3524p + ", sspWmType=" + this.f3525q + ", sspWmType=" + this.f3525q;
                                        Logger.d("InAppMessage", str2);
                                    }
                                    i10 = 0;
                                } catch (Throwable th2) {
                                    th = th2;
                                    Logger.w("InAppMessage", "parse intent action by actionKey: " + str + " failed. " + th.getMessage());
                                    return i9;
                                }
                            } else if (optInt != 3 && optInt != 4) {
                            }
                        }
                        JSONObject optJSONObject4 = optJSONObject2.optJSONObject("ein_intent");
                        this.f3515g = optJSONObject2.optInt("ein_for_new_user", 0) != 0;
                        if (optJSONObject4 != null) {
                            this.f3512d = optJSONObject4.optString("n_fail_handle_url", "");
                            this.f3510b = optJSONObject4.optString("n_url", "");
                            this.f3511c = optJSONObject4.optInt("n_fail_handle_type", 0);
                            this.f3513e = optJSONObject4.optString("n_package_name", "");
                            this.f3514f = optJSONObject4.optInt("n_url_open_type", 0);
                            if (this.f3515g && (optJSONObject = optJSONObject2.optJSONObject("ein_extras")) != null) {
                                this.f3516h = optJSONObject.optString("n_target_app_name");
                                this.f3517i = optJSONObject.optString("n_target_app_icon");
                                this.f3518j = optJSONObject.optInt("n_no_swipe_cancel", 0) == 0;
                                this.f3519k = optJSONObject.optInt("n_use_range", 0) != 0;
                                this.f3520l = optJSONObject.optInt("n_install_type", 0) == 0;
                                this.f3521m = optJSONObject.optInt("n_fail_install_type", 0) == 0;
                                if (optJSONObject.optInt("n_pop_grant_win", 0) != 0) {
                                    z10 = false;
                                }
                                this.f3522n = z10;
                            }
                            str2 = "deeplink intent param, deeplink=" + this.f3510b + ", failedLink=" + this.f3512d + ", failedAction=" + this.f3511c + ", targetPkgName=" + this.f3513e + ", urlOpenType=" + this.f3514f + ", isForNewUser= " + this.f3515g + ", canCancel: " + this.f3518j + ", installBySys: " + this.f3520l + ", failInstallByWeb: " + this.f3521m + ", popGrantWin: " + this.f3522n;
                            Logger.d("InAppMessage", str2);
                        }
                        i10 = 0;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    i9 = i10;
                }
            }
            return i10;
        } catch (Throwable th4) {
            th = th4;
            i9 = 1302;
        }
    }

    public boolean k() {
        return this.L;
    }

    public int l() {
        return this.f3509a;
    }

    public int m() {
        return this.f3528t;
    }

    public String n() {
        return this.f3533y;
    }

    public int o() {
        return this.C;
    }

    public boolean p() {
        return this.D != 0;
    }

    public int q() {
        return this.J * 1000;
    }

    public String r() {
        return this.M;
    }

    public String s() {
        return this.T;
    }

    public boolean t() {
        return this.K;
    }

    public String toString() {
        return "InAppMessage{appId='" + this.f3531w + "', senderId='" + this.f3532x + "', messageId='" + this.f3533y + "', inAppMsgTitle= '" + this.A + "', inAppMsgContentBody= '" + this.B + "', inAppMsgType= " + this.C + ", inAppMsgShowBackground= " + this.D + ", inAppMsgAllowIntercept= " + this.E + ", inAppMsgFilterMsg= " + this.F + ", inAppMsgCountLmt= " + this.G + ", inAppMsgGap= " + this.H + ", inAppMsgToUser= " + this.I + ", inAppMsgDelayDisplayTime= " + this.J + ", inAppWebPageUrl= '" + this.M + "', inAppProtocolVer= " + this.N + ", inAppSSPGap= " + this.O + ", inAppTplId= '" + this.R + "', inAppTplUrl= '" + this.S + "', inAppTplData= '" + this.T + "', webWidth=" + this.f3509a + ", deeplink= '" + this.f3510b + "', failedAction=" + this.f3511c + ", failedLink= '" + this.f3512d + "', targetPkgName= '" + this.f3513e + "', urlOpenType=" + this.f3514f + ", sspWxAppId= '" + this.f3523o + "', sspWmOriginId= '" + this.f3524p + "', sspWmType=" + this.f3525q + ", sspWxPath= '" + this.f3526r + "', isWmDeepLink=" + this.f3527s + ", actionType=" + this.f3528t + ", isForNewUser=" + this.f3515g + ", targetAppName=" + this.f3515g + ", targetAppIcon=" + this.f3515g + ", isCanCancel=" + this.f3518j + ", useRange=" + this.f3519k + ", installBySys=" + this.f3520l + ", failInstallByWeb=" + this.f3521m + ", isPopGrantWin=" + this.f3522n + '}';
    }

    public cn.jpush.android.d.d u() {
        return this.V;
    }

    public String v() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", this.f3531w);
            jSONObject.put("senderId", this.f3532x);
            jSONObject.put("messageId", this.f3533y);
            jSONObject.put("inAppMsgTitle", this.A);
            jSONObject.put("inAppMsgContentBody", this.B);
            jSONObject.put("inAppMsgType", this.C);
            jSONObject.put("inAppMsgShowBackground", this.D);
            jSONObject.put("inAppMsgAllowIntercept", this.E);
            jSONObject.put("inAppMsgFilterMsg", this.F);
            jSONObject.put("inAppMsgCountLmt", this.G);
            jSONObject.put("inAppMsgGap", this.H);
            jSONObject.put("inAppMsgToUser", this.I);
            jSONObject.put("inAppMsgDelayDisplayTime", this.J);
            jSONObject.put("isReportPageName", this.K);
            jSONObject.put("isUseSysAlert", this.L);
            jSONObject.put("inAppWebPageUrl", this.M);
            jSONObject.put("inAppProtocolVer", this.N);
            jSONObject.put("inAppSSPGap", this.N);
            jSONObject.put("inAppCheckIntent", this.P);
            jSONObject.put("inAppTplContent", this.Q);
            jSONObject.put("inAppTplId", this.R);
            jSONObject.put("inAppTplUrl", this.S);
            jSONObject.put("inAppTplData", this.T);
            jSONObject.put("inAppIntentActions", this.U);
            jSONObject.put("webWidth", this.f3509a);
            jSONObject.put("entity", this.V.c());
            jSONObject.put("deeplink", this.f3510b);
            jSONObject.put("failedAction", this.f3511c);
            jSONObject.put("failedLink", this.f3512d);
            jSONObject.put("targetPkgName", this.f3513e);
            jSONObject.put("urlOpenType", this.f3514f);
            jSONObject.put("isForNewUser", this.f3515g);
            jSONObject.put("targetAppName", this.f3516h);
            jSONObject.put("targetAppIcon", this.f3517i);
            jSONObject.put("isCanCancel", this.f3518j);
            jSONObject.put("useRange", this.f3519k);
            jSONObject.put("installBySys", this.f3520l);
            jSONObject.put("failInstallByWeb", this.f3521m);
            jSONObject.put("isPopGrantWin", this.f3522n);
            jSONObject.put("sspWxAppId", this.f3523o);
            jSONObject.put("sspWmOriginId", this.f3524p);
            jSONObject.put("sspWmType", this.f3525q);
            jSONObject.put("sspWxPath", this.f3526r);
            jSONObject.put("isWmDeepLink", this.f3527s);
            jSONObject.put("actionType", this.f3528t);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
