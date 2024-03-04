package cn.jpush.android.d;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.af.j;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.facebook.bolts.AppLinks;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.LineNumberReader;
import java.io.Serializable;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d implements Serializable {
    private static HashMap<String, String> bv = new HashMap<>();
    private static HashMap<String, String> bw = new HashMap<>();
    private static final long serialVersionUID = 8407025843324043625L;
    public int A;
    public String B;
    public String C;
    public String F;
    public String G;
    public String H;
    public String I;
    public String J;
    public String K;
    public int L;
    public String M;
    public String N;
    public int P;
    public String Q;
    public String R;
    public int S;
    public String V;
    public String W;
    public String X;
    public int Y;

    /* renamed from: a  reason: collision with root package name */
    public String f2991a;

    /* renamed from: aa  reason: collision with root package name */
    public int f2992aa;

    /* renamed from: af  reason: collision with root package name */
    public Integer f2997af;

    /* renamed from: ag  reason: collision with root package name */
    public String f2998ag;

    /* renamed from: ah  reason: collision with root package name */
    public long f2999ah;

    /* renamed from: ai  reason: collision with root package name */
    public String f3000ai;

    /* renamed from: aj  reason: collision with root package name */
    public boolean f3001aj;

    /* renamed from: ak  reason: collision with root package name */
    public boolean f3002ak;

    /* renamed from: al  reason: collision with root package name */
    public long f3003al;
    public String ao;
    public String ap;
    public String aq;
    public String ar;
    public String as;
    public String at;
    public int au;
    public int av;

    /* renamed from: b  reason: collision with root package name */
    public String f3004b;

    /* renamed from: bb  reason: collision with root package name */
    public String f3006bb;
    public int bn;
    public int bo;
    public boolean bp;
    public boolean bq;
    public String br;
    public String bs;
    public String bt;
    public String bu;

    /* renamed from: c  reason: collision with root package name */
    public String f3017c;

    /* renamed from: d  reason: collision with root package name */
    public int f3018d;

    /* renamed from: e  reason: collision with root package name */
    public int f3019e;

    /* renamed from: f  reason: collision with root package name */
    public String f3020f;

    /* renamed from: g  reason: collision with root package name */
    public String f3021g;

    /* renamed from: h  reason: collision with root package name */
    public String f3022h;

    /* renamed from: i  reason: collision with root package name */
    public int f3023i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3024j;

    /* renamed from: k  reason: collision with root package name */
    public int f3025k;

    /* renamed from: m  reason: collision with root package name */
    public String f3027m;

    /* renamed from: n  reason: collision with root package name */
    public String f3028n;

    /* renamed from: o  reason: collision with root package name */
    public String f3029o;

    /* renamed from: p  reason: collision with root package name */
    public String f3030p;

    /* renamed from: q  reason: collision with root package name */
    public int f3031q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f3032r;

    /* renamed from: s  reason: collision with root package name */
    public int f3033s;

    /* renamed from: t  reason: collision with root package name */
    public String f3034t;

    /* renamed from: u  reason: collision with root package name */
    public String f3035u;

    /* renamed from: v  reason: collision with root package name */
    public String f3036v;

    /* renamed from: w  reason: collision with root package name */
    public int f3037w;

    /* renamed from: x  reason: collision with root package name */
    public String f3038x;

    /* renamed from: y  reason: collision with root package name */
    public String f3039y;

    /* renamed from: z  reason: collision with root package name */
    public String f3040z;

    /* renamed from: l  reason: collision with root package name */
    public int f3026l = 0;
    public int D = -1;
    public String E = "";
    public int O = 0;
    public boolean T = false;
    public boolean U = false;
    public int Z = 0;

    /* renamed from: ab  reason: collision with root package name */
    public ArrayList<String> f2993ab = new ArrayList<>();

    /* renamed from: ac  reason: collision with root package name */
    public String f2994ac = "";

    /* renamed from: ad  reason: collision with root package name */
    public String f2995ad = "";

    /* renamed from: ae  reason: collision with root package name */
    public byte f2996ae = 0;
    public double am = 200.0d;
    public double an = 200.0d;
    public String aw = "";
    public String ax = "";
    public String ay = "";
    public String az = "";
    public int aA = 1;
    public int aB = 2;
    public int aC = 0;
    public int aD = 0;
    public int aE = 0;
    public int aF = 0;
    public int aG = 1;
    public int aH = 0;
    public String aI = "";
    public int aJ = 0;
    public long aK = 0;
    public int aL = 0;
    public int aM = 10;
    public int aN = 0;
    public int aO = 1;
    public String aP = "#FFFFFFFF";
    public String aQ = "#FF000000";
    public String aR = "#FF000000";
    public int aS = 14;
    public int aT = 14;
    public int aU = 9;
    public int aV = 5;
    public float aW = 0.5f;
    public float aX = 0.5f;
    public String aY = "";
    public int aZ = 2;

    /* renamed from: ba  reason: collision with root package name */
    public int f3005ba = 2;

    /* renamed from: bc  reason: collision with root package name */
    public String f3007bc = "";

    /* renamed from: bd  reason: collision with root package name */
    public String f3008bd = "";

    /* renamed from: be  reason: collision with root package name */
    public float f3009be = 0.6f;

    /* renamed from: bf  reason: collision with root package name */
    public String f3010bf = "";

    /* renamed from: bg  reason: collision with root package name */
    public String f3011bg = "";

    /* renamed from: bh  reason: collision with root package name */
    public ArrayList<String> f3012bh = new ArrayList<>();

    /* renamed from: bi  reason: collision with root package name */
    public int f3013bi = 0;

    /* renamed from: bj  reason: collision with root package name */
    public int f3014bj = 180;

    /* renamed from: bk  reason: collision with root package name */
    public int f3015bk = 0;

    /* renamed from: bl  reason: collision with root package name */
    public int f3016bl = 0;
    public String bm = "";

    public static d a(Context context, d dVar) {
        try {
            JSONObject optJSONObject = new JSONObject(dVar.f3022h).optJSONObject("inapp");
            if (optJSONObject == null) {
                return null;
            }
            dVar.a(context);
            dVar.ay = dVar.f3034t;
            dVar.az = dVar.f3036v;
            dVar.aM = optJSONObject.optInt("inapp_delay_display_time", 10);
            dVar.f3008bd = optJSONObject.optString("inapp_h5_tpl_url", "");
            dVar.bo = optJSONObject.optInt("inapp_priority", 2);
            dVar.bp = optJSONObject.optInt("inapp_display_direct", 0) == 1;
            dVar.aC = optJSONObject.optInt("inapp_show_pos", 0);
            dVar.aV = optJSONObject.optInt("inapp_show_threshold_time", 5);
            String str = dVar.I;
            if (!TextUtils.isEmpty(str)) {
                dVar.f3012bh.add(str);
            }
            dVar.at = optJSONObject.optString("inapp_end_time", "");
            dVar.au = optJSONObject.optInt("inapp_max_cache_numb", 10);
            dVar.aL = optJSONObject.optInt("inapp_msg_to_user", 1);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("in_title", dVar.ay);
            jSONObject.put("in_body_content", dVar.az);
            jSONObject.put("in_pic_path1", str);
            dVar.f3010bf = jSONObject.toString();
            return dVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static d a(Context context, String str, String str2) {
        String str3;
        d dVar = new d();
        byte b10 = 0;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("_jmsgid_");
            dVar.f3017c = optString;
            if (optString.isEmpty()) {
                dVar.f3017c = jSONObject.optString(JThirdPlatFormInterface.KEY_MSG_ID);
            }
            dVar.f3020f = b(dVar.f3017c, jSONObject);
            dVar.f2996ae = (byte) jSONObject.optInt("rom_type");
            int optInt = jSONObject.optInt("show_type", -1);
            JSONObject optJSONObject = jSONObject.optJSONObject("m_content");
            if (optJSONObject != null) {
                dVar.f3036v = optJSONObject.optString("n_content");
                dVar.f3034t = optJSONObject.optString("n_title");
                dVar.C = optJSONObject.optString("n_extras");
                dVar.E = optJSONObject.optString("n_channel_id");
                dVar.F = optJSONObject.optString("n_display_foreground");
                dVar.D = optJSONObject.optInt("n_alert_type");
                dVar.A = optJSONObject.optInt("n_priority");
                dVar.F = optJSONObject.optString("n_display_foreground");
                dVar.aq = optJSONObject.optString("n_sound");
                dVar.f3033s = optJSONObject.optInt("n_flag", 1);
                JSONObject optJSONObject2 = optJSONObject.optJSONObject("rich_content");
                if (optJSONObject2 != null) {
                    dVar.U = true;
                    dVar.a(optJSONObject2);
                    dVar.f3023i = 3;
                } else {
                    dVar.f3023i = 4;
                    dVar.Z = -1;
                }
            } else {
                dVar.f3036v = jSONObject.optString("n_content");
                dVar.f3034t = jSONObject.optString("n_title");
                dVar.C = jSONObject.optString("n_extras");
                dVar.E = jSONObject.optString("n_channel_id");
                dVar.F = jSONObject.optString("n_display_foreground");
                dVar.D = jSONObject.optInt("n_alert_type");
                dVar.A = jSONObject.optInt("n_priority");
                dVar.F = jSONObject.optString("n_display_foreground");
                dVar.f2996ae = (byte) jSONObject.optInt("rom_type");
                dVar.aq = jSONObject.optString("n_sound");
            }
            if (optInt != -1) {
                dVar.f3023i = optInt;
            }
            dVar.f3031q = 0;
            dVar.f3032r = true;
            dVar.f2991a = context.getPackageName();
            return dVar;
        } catch (Throwable th2) {
            Logger.e("PushEntity", "parseContent error:" + th2);
            if (TextUtils.isEmpty(dVar.f3017c)) {
                str3 = "NO MSGID";
            } else {
                str3 = dVar.f3017c;
                b10 = dVar.f2996ae;
            }
            cn.jpush.android.helper.c.a(str3, str2, b10, 996, context);
            return null;
        }
    }

    public static d a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            d dVar = new d();
            dVar.f2991a = jSONObject.optString("appId");
            dVar.f3004b = jSONObject.optString("senderId");
            String optString = jSONObject.optString("messageId");
            dVar.f3017c = optString;
            dVar.f3020f = b(optString, jSONObject);
            dVar.f3018d = jSONObject.optInt("notificationId");
            dVar.f3019e = jSONObject.optInt("messageType");
            dVar.f3021g = jSONObject.optString("overrideMessageId");
            dVar.f3023i = jSONObject.optInt("messageVersion");
            dVar.f3024j = jSONObject.optBoolean("notificationOnly");
            dVar.f3025k = jSONObject.optInt("notificationBuilderId");
            dVar.f3026l = jSONObject.optInt("notificationType");
            dVar.f3027m = jSONObject.optString("message");
            dVar.f3028n = jSONObject.optString("contentType");
            dVar.f3029o = jSONObject.optString("title");
            dVar.f3030p = jSONObject.optString(AppLinks.KEY_NAME_EXTRAS);
            dVar.f3031q = jSONObject.optInt("type");
            dVar.f3032r = jSONObject.optBoolean("isFullScreen");
            dVar.f3033s = jSONObject.optInt("notificationRemoveMode");
            dVar.f3034t = jSONObject.optString("notificationTitle");
            dVar.f3035u = jSONObject.optString("notificationAppName");
            dVar.f3036v = jSONObject.optString("notificationContent");
            dVar.f3037w = jSONObject.optInt("notificationStyle");
            dVar.f3038x = jSONObject.optString("notificationBigText");
            dVar.f3039y = jSONObject.optString("notificationBigPicPath");
            dVar.f3040z = jSONObject.optString("notificationInbox");
            dVar.A = jSONObject.optInt("notificationPriority");
            dVar.B = jSONObject.optString("notificationCategory");
            dVar.C = jSONObject.optString("notificationExtra");
            dVar.D = jSONObject.optInt("notificationAlertType");
            dVar.E = jSONObject.optString("notificationChannelId");
            dVar.F = jSONObject.optString("displayForeground");
            dVar.G = jSONObject.optString(ShareConstants.FEED_SOURCE_PARAM);
            dVar.H = jSONObject.optString("smallIcon");
            dVar.I = jSONObject.optString("largeIcon");
            dVar.J = jSONObject.optString("normalSmallIcon");
            dVar.K = jSONObject.optString("deeplink");
            dVar.L = jSONObject.optInt("failedAction");
            dVar.M = jSONObject.optString("failedLink");
            dVar.N = jSONObject.optString("targetPkgName");
            dVar.P = jSONObject.optInt("deeplinkBuilderId");
            dVar.U = jSONObject.optBoolean("isRichPush");
            dVar.V = jSONObject.optString("showUrl");
            dVar.W = jSONObject.optString("showTitle");
            dVar.X = jSONObject.optString("_webPagePath");
            dVar.Y = jSONObject.optInt("jumpMode");
            dVar.Z = jSONObject.optInt("richType");
            dVar.f2992aa = jSONObject.optInt("showMode");
            String optString2 = jSONObject.optString("showResourceList");
            if (!TextUtils.isEmpty(optString2)) {
                dVar.f2993ab = new ArrayList<>(Arrays.asList(optString2.split(",")));
            }
            dVar.f2994ac = jSONObject.optString("fromNum");
            dVar.f2995ad = jSONObject.optString("toNum");
            dVar.f2996ae = (byte) jSONObject.optInt("platform");
            if (jSONObject.has("badgeAddNum")) {
                dVar.f2997af = Integer.valueOf(jSONObject.optInt("badgeAddNum"));
            }
            dVar.f2998ag = jSONObject.optString("geofenceid");
            dVar.f2999ah = jSONObject.optLong("radius");
            dVar.f3000ai = jSONObject.optString("status");
            dVar.f3001aj = jSONObject.optBoolean("repeat");
            dVar.f3002ak = jSONObject.optBoolean("hasShow");
            dVar.f3003al = jSONObject.optLong("expiration");
            dVar.am = jSONObject.optDouble("longitude");
            dVar.an = jSONObject.optDouble("latitude");
            dVar.ao = jSONObject.optString("lastGeoStatus");
            dVar.ap = jSONObject.optString("developerArg0");
            dVar.aq = jSONObject.optString(RemoteMessageConst.Notification.SOUND);
            dVar.ar = jSONObject.optString("showBeginTime");
            dVar.as = jSONObject.optString("showEndTime");
            dVar.T = jSONObject.optBoolean("isWmDeepLink");
            dVar.Q = jSONObject.optString("wxAppId");
            dVar.R = jSONObject.optString("miniOriginid");
            dVar.S = jSONObject.optInt("miniType");
            dVar.ax = jSONObject.optString("inAppMsgContent");
            dVar.aw = jSONObject.optString("inAppIntent");
            dVar.ay = jSONObject.optString("inAppMsgTitle");
            dVar.az = jSONObject.optString("inAppMsgContentBody");
            dVar.aA = jSONObject.optInt("inAppMsgType");
            dVar.aB = jSONObject.optInt("inAppMsgShowType");
            dVar.aC = jSONObject.optInt("inAppMsgShowPos");
            dVar.aD = jSONObject.optInt("inAppMsgShowAniAction");
            dVar.f3015bk = jSONObject.optInt("inSupportNotifyAni");
            dVar.f3016bl = jSONObject.optInt("inSupportVibration");
            dVar.bm = jSONObject.optString("inAppIcon");
            dVar.aE = jSONObject.optInt("inAppMsgDismissAniAction");
            dVar.aF = jSONObject.optInt("inAppMsgShowBackground");
            dVar.aG = jSONObject.optInt("inAppMsgAllowIntercept");
            dVar.aH = jSONObject.optInt("inAppMsgFilterMsg");
            dVar.aI = jSONObject.optString("inAppMsgPicPath");
            dVar.aJ = jSONObject.optInt("inAppMsgCountLmt");
            dVar.aK = jSONObject.optInt("inAppMsgGap");
            dVar.aL = jSONObject.optInt("inAppMsgToUser");
            dVar.aM = jSONObject.optInt("inAppMsgDelayDisplayTime");
            dVar.aN = jSONObject.optInt("inAppMsgReportPageName");
            dVar.aO = jSONObject.optInt("inAppUseSysAlert");
            dVar.aP = jSONObject.optString("inAppMsgBackgroundColor");
            dVar.aQ = jSONObject.optString("inAppMsgTitleColor");
            dVar.aR = jSONObject.optString("inAppMsgContentColor");
            dVar.aS = jSONObject.optInt("inAppMsgTitleSize");
            dVar.aT = jSONObject.optInt("inAppMsgContentSize");
            dVar.aU = jSONObject.optInt("inAppMsgCircularSize");
            dVar.aV = jSONObject.optInt("inAppMsgShowTime");
            dVar.aW = (float) jSONObject.optDouble("inAppMsgShowElapseTime");
            dVar.aX = (float) jSONObject.optDouble("inAppMsgDismissElapseTime");
            dVar.aY = jSONObject.optString("inAppWebPageUrl");
            dVar.aZ = jSONObject.optInt("inAppProtocolVer");
            dVar.f3014bj = jSONObject.optInt("inAppSSPGap");
            dVar.f3005ba = jSONObject.optInt("inAppCheckIntent");
            dVar.f3006bb = jSONObject.optString("inAppTplContent");
            dVar.f3007bc = jSONObject.optString("inAppTplId");
            dVar.f3008bd = jSONObject.optString("inAppTplUrl");
            dVar.f3009be = (float) jSONObject.optDouble("inAppMarginY");
            dVar.f3010bf = jSONObject.optString("inAppTplData");
            dVar.f3011bg = jSONObject.optString("inAppIntentActions");
            dVar.bn = jSONObject.optInt("inAppType");
            dVar.at = jSONObject.optString("notifyInAppEndTime");
            dVar.au = jSONObject.optInt("notifyInAppCacheNumb");
            dVar.av = jSONObject.optInt("notifyInAppMsgType");
            dVar.bo = jSONObject.optInt("inAppPriority");
            dVar.bp = jSONObject.optBoolean("inAppIsDisplayDirect");
            dVar.br = jSONObject.optString("inAppBlackConf");
            dVar.bs = jSONObject.optString("inAppAnimatorConf");
            dVar.bt = jSONObject.optString("inAppAdPosition");
            dVar.bu = jSONObject.optString("inAppFragment");
            dVar.bq = jSONObject.optBoolean("inAppFixed");
            String optString3 = jSONObject.optString("inAppShowResList");
            if (!TextUtils.isEmpty(optString3)) {
                dVar.f3012bh = new ArrayList<>(Arrays.asList(optString3.split(",")));
            }
            return dVar;
        } catch (Throwable th2) {
            Logger.w("PushEntity", "parseJSONString e:" + th2);
            th2.printStackTrace();
            return null;
        }
    }

    public static d a(String str, String str2, String str3, long j10) {
        JSONObject optJSONObject;
        String str4 = "NO MSGID";
        d dVar = null;
        try {
            Logger.d("PushEntity", "parse in app message, data: " + str);
            JSONObject jSONObject = new JSONObject(str);
            d dVar2 = new d();
            String optString = jSONObject.optString(JThirdPlatFormInterface.KEY_MSG_ID, "");
            if (TextUtils.isEmpty(optString)) {
                optString = jSONObject.optString("ad_id", "");
            }
            if (TextUtils.isEmpty(optString)) {
                optString = jSONObject.optString("_jmsgid_", "");
            }
            if (TextUtils.isEmpty(optString)) {
                str4 = j10 + "";
            } else {
                str4 = optString;
            }
            dVar2.f3017c = str4;
            dVar2.f2991a = str2;
            dVar2.f3004b = str3;
            dVar2.f3020f = b(str4, jSONObject);
            dVar2.ax = jSONObject.optString("in_content");
            JSONObject jSONObject2 = new JSONObject(dVar2.ax);
            int i9 = 0;
            dVar2.aF = jSONObject2.optInt("in_show_background", 0);
            boolean z10 = true;
            dVar2.aG = jSONObject2.optInt("in_allow_intercept", 1);
            dVar2.aH = jSONObject2.optInt("in_filter_msg", 0);
            dVar2.aJ = jSONObject2.optInt("in_msgcount_limit", 5);
            dVar2.aK = jSONObject2.optLong("in_msg_gap", 1800L);
            dVar2.aL = jSONObject2.optInt("in_msg_to_user", 0);
            dVar2.aM = jSONObject2.optInt("in_delay_display_time", 10);
            dVar2.aN = jSONObject2.optInt("in_report_page_name", 0);
            dVar2.aO = jSONObject2.optInt("in_use_sys_alert", 1);
            dVar2.aZ = jSONObject2.optInt("in_protocol_ver", 0);
            dVar2.f3005ba = jSONObject2.optInt("in_check_intent_action", 0);
            dVar2.f3014bj = jSONObject2.optInt("in_ssp_gap", 180);
            dVar2.f3011bg = jSONObject2.optString("in_intent_actions", "");
            dVar2.f3006bb = jSONObject2.optString("in_template_content", "");
            dVar2.bo = jSONObject2.optInt("in_priority", 3);
            dVar2.bp = jSONObject2.optInt("in_display_direct", 0) == 1;
            JSONObject optJSONObject2 = jSONObject2.optJSONObject("in_template_content");
            if (optJSONObject2 != null) {
                dVar2.aV = optJSONObject2.optInt("ein_show_threshold_time", 5);
                dVar2.aW = (float) optJSONObject2.optDouble("ein_toshow_threshold_time", 0.5d);
                dVar2.aX = (float) optJSONObject2.optDouble("ein_todismiss_threshold_time", 0.5d);
                int optInt = optJSONObject2.optInt("in_message_type", 1);
                dVar2.aA = optInt;
                if (jSONObject2.optInt("in_msg_fixed", optInt == 1 ? 0 : 1) == 0) {
                    z10 = false;
                }
                dVar2.bq = z10;
                dVar2.f3015bk = optJSONObject2.optInt("in_support_notify_ani", 0);
                dVar2.f3016bl = optJSONObject2.optInt("in_support_vibration", 0);
                dVar2.aC = optJSONObject2.optInt("in_show_pos", 0);
                dVar2.aD = optJSONObject2.optInt("in_show_ani_action", 0);
                dVar2.aE = optJSONObject2.optInt("in_dismiss_ani_action", 0);
                dVar2.f3007bc = optJSONObject2.optString("in_h5_template_id", "");
                dVar2.f3008bd = optJSONObject2.optString("in_h5_template_url", "");
                dVar2.f3010bf = optJSONObject2.optString("in_h5_template_data", "");
                dVar2.f3009be = (float) optJSONObject2.optDouble("in_margin_y", 0.6000000238418579d);
                dVar2.aY = dVar2.f3008bd;
                dVar2.bu = optJSONObject2.optString("in_fragment", "");
                dVar2.bt = a(str4, optJSONObject2);
                if (!TextUtils.isEmpty(dVar2.f3010bf) && (optJSONObject = optJSONObject2.optJSONObject("in_h5_template_data")) != null) {
                    dVar2.ay = optJSONObject.optString("in_title", "");
                    dVar2.az = optJSONObject.optString("in_body_content", "");
                    dVar2.f3013bi = optJSONObject.optInt("in_pic_count", 0);
                    while (i9 < dVar2.f3013bi) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("in_pic_path");
                        i9++;
                        sb2.append(i9);
                        String optString2 = optJSONObject.optString(sb2.toString(), "");
                        if (!TextUtils.isEmpty(optString2)) {
                            dVar2.f3012bh.add(optString2);
                        }
                    }
                    dVar2.bm = optJSONObject.optString("in_app_icon", "");
                }
                dVar = dVar2;
            } else {
                Logger.w("PushEntity", "in-app message in_template_content json content is null");
                Logger.ww("PushEntity", "in-msg tpl content is null");
            }
        } catch (Throwable th2) {
            Logger.w("PushEntity", "parse in app message error, " + th2.getMessage());
            Logger.ww("PushEntity", "parse in-msg failed");
        }
        cn.jpush.android.helper.c.a(str4, dVar != null ? 1205 : 1279, JPushConstants.mApplicationContext);
        return dVar;
    }

    private static String a(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                String optString = jSONObject.optString("in_position", "");
                Logger.d("PushEntity", "parse ad_data:" + optString);
                a(str, optString);
                return optString;
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public static void a(String str, String str2) {
        if (bv == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        bv.put(str, str2);
    }

    private void a(JSONObject jSONObject) {
        this.U = true;
        this.V = jSONObject.optString("e_url", "").trim();
        this.W = jSONObject.optString("e_title", "").trim();
        if (!TextUtils.isEmpty(this.V) && !cn.jpush.android.af.a.c(this.V)) {
            this.V = "https://" + this.V;
            Logger.i("PushEntity", "Add http to non-prefix url: " + this.V);
        }
        this.Z = jSONObject.optInt("e_rich_type", 0);
        this.Y = jSONObject.optInt("e_jump_mode", 0);
        this.f2992aa = jSONObject.optInt("e_show", 0);
        int i9 = this.Z;
        if (3 == i9 || 2 == i9 || 1 == i9) {
            this.f2993ab = j.a(jSONObject.optJSONArray("e_eres"));
        }
        this.f2994ac = jSONObject.optString("from_num", "");
        this.f2995ad = jSONObject.optString("to_num", "");
    }

    public static d b(String str, String str2, String str3, long j10) {
        d dVar = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            d dVar2 = new d();
            try {
                String optString = jSONObject.optString(JThirdPlatFormInterface.KEY_MSG_ID, "");
                if (TextUtils.isEmpty(optString)) {
                    optString = jSONObject.optString("ad_id", "");
                }
                if (TextUtils.isEmpty(optString)) {
                    optString = jSONObject.optString("_jmsgid_", "");
                }
                if (TextUtils.isEmpty(optString)) {
                    optString = j10 + "";
                }
                Logger.d("PushEntity", "preParseOriginalMsgMessage msgId = " + optString);
                dVar2.f3017c = optString;
                dVar2.f2991a = str2;
                dVar2.f3004b = str3;
                dVar2.f3020f = b(optString, jSONObject);
                boolean z10 = true;
                if (jSONObject.optInt("n_only", 0) != 1) {
                    z10 = false;
                }
                int optInt = z10 ? jSONObject.optInt("n_builder_id", 0) : 0;
                dVar2.f3024j = z10;
                dVar2.f3025k = optInt;
                dVar2.f3022h = str;
                dVar2.f3023i = jSONObject.optInt("show_type", 3);
                dVar2.f3026l = jSONObject.optInt("notificaion_type", 0);
                dVar2.f3021g = jSONObject.optString("override_msg_id", "");
                dVar2.f3027m = jSONObject.optString("message", "");
                dVar2.f3028n = jSONObject.optString(EventTrackingUtils.CONTENT_TYPE, "");
                dVar2.f3029o = jSONObject.optString("title", "");
                dVar2.f3030p = jSONObject.optString(AppLinks.KEY_NAME_EXTRAS, "");
                return dVar2;
            } catch (Throwable th2) {
                th = th2;
                dVar = dVar2;
                Logger.w("PushEntity", "processMessage failed:" + th.getMessage());
                return dVar;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String b(String str) {
        HashMap<String, String> hashMap = bv;
        return hashMap != null ? hashMap.get(str) : "";
    }

    private static String b(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            try {
                String optString = jSONObject.optString("_j_data_", "");
                Logger.d("PushEntity", "parse jdata:" + optString);
                b(str, optString);
                return optString;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static void b(String str, String str2) {
        if (bw == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        bw.put(str, str2);
    }

    public static String c(String str) {
        HashMap<String, String> hashMap = bw;
        return hashMap != null ? hashMap.get(str) : "";
    }

    public static String d(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(str));
                String readLine = lineNumberReader.readLine();
                String readLine2 = lineNumberReader.readLine();
                if (readLine == null) {
                    Logger.e("PushEntity", "NO appId");
                    return null;
                } else if (readLine2 == null) {
                    Logger.e("PushEntity", "NO senderId");
                    return null;
                } else {
                    int length = readLine.length() + readLine2.length() + 2;
                    if (str.length() <= length + 1) {
                        Logger.d("PushEntity", "No msgContent");
                        return null;
                    }
                    String optString = new JSONObject(str.substring(length)).optString("_j_data_", "");
                    Logger.d("PushEntity", "get jdata from push msg:" + optString);
                    return optString;
                }
            } catch (Throwable th2) {
                Logger.d("PushEntity", "get jdata from push msg error:" + th2.getMessage());
                th2.printStackTrace();
            }
        }
        return null;
    }

    public a a() {
        return new a(this);
    }

    public void a(Context context) {
        try {
            JSONObject optJSONObject = new JSONObject(this.f3022h).optJSONObject("m_content");
            int optInt = optJSONObject.optInt("ad_t", 0);
            this.f3031q = optInt;
            if (optInt != 0) {
                return;
            }
            this.f3032r = optJSONObject.optInt("full_screen", 0) >= 1;
            this.f3033s = optJSONObject.optInt("n_flag", 1);
            this.f3034t = optJSONObject.optString("n_title", "");
            this.f3035u = optJSONObject.optString("n_app_name", "");
            this.f3036v = optJSONObject.optString("n_content", "");
            this.f3037w = optJSONObject.optInt("n_style", 0);
            this.f3038x = optJSONObject.optString("n_big_text", "");
            this.f3039y = optJSONObject.optString("n_big_pic_path", "");
            this.f3040z = optJSONObject.optString("n_inbox", "");
            this.C = optJSONObject.optString("n_extras", "");
            this.A = optJSONObject.optInt("n_priority", 0);
            this.B = optJSONObject.optString("n_category", "");
            this.D = optJSONObject.optInt("n_alert_type", -1);
            this.E = optJSONObject.optString("n_channel_id");
            this.F = optJSONObject.optString("n_display_foreground");
            this.H = optJSONObject.optString("n_small_icon", "");
            this.I = optJSONObject.optString("n_large_icon", "");
            this.G = optJSONObject.optString("n_source", "");
            this.J = optJSONObject.optString("n_small_icon_uri", "");
            this.aw = optJSONObject.optString("n_intent");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("n_intent");
            if (optJSONObject2 != null) {
                this.K = optJSONObject2.optString("n_url", "");
                this.L = optJSONObject2.optInt("n_fail_handle_type", 0);
                this.M = optJSONObject2.optString("n_fail_handle_url", "");
                this.N = optJSONObject2.optString("n_package_name", "");
                this.P = optJSONObject2.optInt("n_builder_id", 0);
                this.Q = optJSONObject2.optString("wx_app_id", "");
                this.R = optJSONObject2.optString("mini_originid", "");
                this.S = optJSONObject2.optInt("mini_type", 0);
            }
            if (TextUtils.isEmpty(this.f3034t)) {
                Logger.dd("PushEntity", "Not found notificaiton title for developer mode. Use the application name.");
                this.f3034t = cn.jpush.android.af.a.b(context);
            }
            JSONObject optJSONObject3 = optJSONObject.optJSONObject("ad_content");
            if (!optJSONObject.isNull("ad_content") && optJSONObject3 != null) {
                a(optJSONObject3);
            }
            if (optJSONObject.has("n_badge_add_num")) {
                this.f2997af = Integer.valueOf(optJSONObject.optInt("n_badge_add_num"));
            } else {
                this.f2997af = null;
            }
            this.aq = optJSONObject.optString("n_sound");
            this.ar = optJSONObject.optString("n_show_begin_time");
            this.as = optJSONObject.optString("n_show_end_time");
        } catch (Throwable th2) {
            Logger.ww("PushEntity", "parse notification failed:" + th2.getMessage());
        }
    }

    public NotificationMessage b() {
        NotificationMessage notificationMessage = new NotificationMessage();
        notificationMessage.appkey = this.f3004b;
        notificationMessage.msgId = this.f3017c;
        notificationMessage.notificationAlertType = this.D;
        notificationMessage.notificationBigPicPath = this.f3039y;
        notificationMessage.notificationBigText = this.f3038x;
        notificationMessage.notificationBuilderId = this.f3025k;
        notificationMessage.notificationCategory = this.B;
        notificationMessage.notificationContent = this.f3036v;
        notificationMessage.notificationExtras = this.C;
        notificationMessage.notificationId = this.f3018d;
        notificationMessage.notificationInbox = this.f3040z;
        notificationMessage.notificationLargeIcon = this.I;
        notificationMessage.notificationPriority = this.A;
        notificationMessage.notificationSmallIcon = this.H;
        notificationMessage.notificationStyle = this.f3037w;
        notificationMessage.notificationTitle = this.f3034t;
        notificationMessage.appId = this.f2991a;
        notificationMessage.notificationType = this.f3026l;
        notificationMessage.developerArg0 = this.ap;
        notificationMessage.notificationChannelId = this.E;
        notificationMessage.isRichPush = this.U;
        notificationMessage.richType = this.Z;
        notificationMessage._webPagePath = this.X;
        notificationMessage.showResourceList = this.f2993ab;
        notificationMessage.platform = this.f2996ae;
        try {
            notificationMessage.deeplink = this.K;
            notificationMessage.failedAction = this.L;
            notificationMessage.failedLink = this.M;
            notificationMessage.targetPkgName = this.N;
            notificationMessage.displayForeground = this.F;
            notificationMessage.sspWxAppId = this.Q;
            notificationMessage.sspWmOriginId = this.R;
            notificationMessage.sspWmType = this.S;
            notificationMessage.isWmDeepLink = this.T;
            notificationMessage.inAppMsgTitle = this.ay;
            notificationMessage.inAppMsgContentBody = this.az;
            notificationMessage.inAppMsgType = this.aA;
            notificationMessage.inAppMsgShowType = this.aB;
            notificationMessage.inAppMsgShowPos = this.aC;
            notificationMessage.inAppType = this.bn;
            if (JPushConstants.SDK_VERSION_CODE >= 408) {
                notificationMessage.notificationNormalSmallIcon = this.J;
            }
        } catch (Throwable th2) {
            Logger.w("PushEntity", "pushEntry toNotificationMessage error" + th2.getMessage());
        }
        return notificationMessage;
    }

    public String c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("appId", this.f2991a);
            jSONObject.put("senderId", this.f3004b);
            jSONObject.put("messageId", this.f3017c);
            jSONObject.put("_j_data_", this.f3020f);
            jSONObject.put("notificationId", this.f3018d);
            jSONObject.put("messageType", this.f3019e);
            jSONObject.put("overrideMessageId", this.f3021g);
            jSONObject.put("messageVersion", this.f3023i);
            jSONObject.put("notificationOnly", this.f3024j);
            jSONObject.put("notificationBuilderId", this.f3025k);
            jSONObject.put("notificationType", this.f3026l);
            jSONObject.put("message", this.f3027m);
            jSONObject.put("contentType", this.f3028n);
            jSONObject.put("title", this.f3029o);
            jSONObject.put(AppLinks.KEY_NAME_EXTRAS, this.f3030p);
            jSONObject.put("type", this.f3031q);
            jSONObject.put("isFullScreen", this.f3032r);
            jSONObject.put("notificationRemoveMode", this.f3033s);
            jSONObject.put("notificationTitle", this.f3034t);
            jSONObject.put("notificationAppName", this.f3035u);
            jSONObject.put("notificationContent", this.f3036v);
            jSONObject.put("notificationStyle", this.f3037w);
            jSONObject.put("notificationBigText", this.f3038x);
            jSONObject.put("notificationBigPicPath", this.f3039y);
            jSONObject.put("notificationInbox", this.f3040z);
            jSONObject.put("notificationPriority", this.A);
            jSONObject.put("notificationCategory", this.B);
            jSONObject.put("notificationExtra", this.C);
            jSONObject.put("notificationAlertType", this.D);
            jSONObject.put("notificationChannelId", this.E);
            jSONObject.put("displayForeground", this.F);
            jSONObject.put(ShareConstants.FEED_SOURCE_PARAM, this.G);
            jSONObject.put("smallIcon", this.H);
            jSONObject.put("largeIcon", this.I);
            jSONObject.put("normalSmallIcon", this.J);
            jSONObject.put("deeplink", this.K);
            jSONObject.put("failedAction", this.L);
            jSONObject.put("failedLink", this.M);
            jSONObject.put("targetPkgName", this.N);
            jSONObject.put("deeplinkBuilderId", this.P);
            jSONObject.put("isRichPush", this.U);
            jSONObject.put("showUrl", this.V);
            jSONObject.put("showTitle", this.W);
            jSONObject.put("_webPagePath", this.X);
            jSONObject.put("jumpMode", this.Y);
            jSONObject.put("richType", this.Z);
            jSONObject.put("showMode", this.f2992aa);
            jSONObject.put("showResourceList", j.a(this.f2993ab, ","));
            jSONObject.put("fromNum", this.f2994ac);
            jSONObject.put("toNum", this.f2995ad);
            jSONObject.put("platform", (int) this.f2996ae);
            jSONObject.put("badgeAddNum", this.f2997af);
            jSONObject.put("geofenceid", this.f2998ag);
            jSONObject.put("radius", this.f2999ah);
            jSONObject.put("status", this.f3000ai);
            jSONObject.put("repeat", this.f3001aj);
            jSONObject.put("hasShow", this.f3002ak);
            jSONObject.put("expiration", this.f3003al);
            jSONObject.put("longitude", this.am);
            jSONObject.put("latitude", this.an);
            jSONObject.put("lastGeoStatus", this.ao);
            jSONObject.put("developerArg0", this.ap);
            jSONObject.put(RemoteMessageConst.Notification.SOUND, this.aq);
            jSONObject.put("showBeginTime", this.ar);
            jSONObject.put("showEndTime", this.as);
            jSONObject.put("isWmDeepLink", this.T);
            jSONObject.put("wxAppId", this.Q);
            jSONObject.put("miniOriginid", this.R);
            jSONObject.put("miniType", this.S);
            jSONObject.put("inAppMsgContent", this.ax);
            jSONObject.put("inAppIntent", this.aw);
            jSONObject.put("inAppMsgTitle", this.ay);
            jSONObject.put("inAppMsgContentBody", this.az);
            jSONObject.put("inAppMsgType", this.aA);
            jSONObject.put("inAppMsgShowType", this.aB);
            jSONObject.put("inAppMsgShowPos", this.aC);
            jSONObject.put("inAppMsgShowAniAction", this.aD);
            jSONObject.put("inSupportNotifyAni", this.f3015bk);
            jSONObject.put("inSupportVibration", this.f3016bl);
            jSONObject.put("inAppIcon", this.bm);
            jSONObject.put("inAppMsgDismissAniAction", this.aE);
            jSONObject.put("inAppMsgShowBackground", this.aF);
            jSONObject.put("inAppMsgAllowIntercept", this.aG);
            jSONObject.put("inAppMsgFilterMsg", this.aH);
            jSONObject.put("inAppMsgPicPath", this.aI);
            jSONObject.put("inAppMsgCountLmt", this.aJ);
            jSONObject.put("inAppMsgGap", this.aK);
            jSONObject.put("inAppMsgToUser", this.aL);
            jSONObject.put("inAppMsgDelayDisplayTime", this.aM);
            jSONObject.put("inAppMsgReportPageName", this.aN);
            jSONObject.put("inAppUseSysAlert", this.aO);
            jSONObject.put("inAppMsgBackgroundColor", this.aP);
            jSONObject.put("inAppMsgTitleColor", this.aQ);
            jSONObject.put("inAppMsgContentColor", this.aR);
            jSONObject.put("inAppMsgTitleSize", this.aS);
            jSONObject.put("inAppMsgContentSize", this.aT);
            jSONObject.put("inAppMsgCircularSize", this.aU);
            jSONObject.put("inAppMsgShowTime", this.aV);
            jSONObject.put("inAppMsgShowElapseTime", this.aW);
            jSONObject.put("inAppMsgDismissElapseTime", this.aX);
            jSONObject.put("inAppWebPageUrl", this.aY);
            jSONObject.put("inAppProtocolVer", this.aZ);
            jSONObject.put("inAppSSPGap", this.f3014bj);
            jSONObject.put("inAppCheckIntent", this.f3005ba);
            jSONObject.put("inAppTplContent", this.f3006bb);
            jSONObject.put("inAppTplId", this.f3007bc);
            jSONObject.put("inAppTplUrl", this.f3008bd);
            jSONObject.put("inAppMarginY", this.f3009be);
            jSONObject.put("inAppTplData", this.f3010bf);
            jSONObject.put("inAppIntentActions", this.f3011bg);
            jSONObject.put("inAppShowResList", j.a(this.f3012bh, ","));
            jSONObject.put("inAppType", this.bn);
            jSONObject.put("notifyInAppEndTime", this.at);
            jSONObject.put("notifyInAppCacheNumb", this.au);
            jSONObject.put("notifyInAppMsgType", this.av);
            jSONObject.put("inAppPriority", this.bo);
            jSONObject.put("inAppIsDisplayDirect", this.bp);
            jSONObject.put("inAppFixed", this.bq);
            jSONObject.put("inAppBlackConf", this.br);
            jSONObject.put("inAppAnimatorConf", this.bs);
            jSONObject.put("inAppAdPosition", this.bt);
            jSONObject.put("inAppFragment", this.bu);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String toString() {
        return "PushEntity{appId='" + this.f2991a + "', senderId='" + this.f3004b + "', messageId='" + this.f3017c + "', jData='" + this.f3020f + "', notificationId=" + this.f3018d + ", messageType=" + this.f3019e + ", overrideMessageId='" + this.f3021g + "', originalMessage='" + this.f3022h + "', messageVersion=" + this.f3023i + ", notificationOnly=" + this.f3024j + ", notificationBuilderId=" + this.f3025k + ", notificationType=" + this.f3026l + ", message='" + this.f3027m + "', contentType='" + this.f3028n + "', title='" + this.f3029o + "', extras='" + this.f3030p + "', type=" + this.f3031q + ", isFullScreen=" + this.f3032r + ", notificationRemoveMode=" + this.f3033s + ", notificationTitle='" + this.f3034t + "', notificationAppName='" + this.f3035u + "', notificationContent='" + this.f3036v + "', notificationStyle=" + this.f3037w + ", notificationBigText='" + this.f3038x + "', notificationBigPicPath='" + this.f3039y + "', notificationInbox='" + this.f3040z + "', notificationPriority=" + this.A + ", notificationCategory='" + this.B + "', notificationExtra='" + this.C + "', notificationAlertType=" + this.D + ", notificationChannelId='" + this.E + "', displayForeground='" + this.F + "', source='" + this.G + "', smallIcon='" + this.H + "', largeIcon='" + this.I + "', normalSmallIcon='" + this.J + "', deeplink='" + this.K + "', failedAction=" + this.L + ", failedLink='" + this.M + "', targetPkgName='" + this.N + "', deeplinkBuilderId=" + this.P + ", isRichPush=" + this.U + ", showUrl='" + this.V + "', showTitle='" + this.W + "', _webPagePath='" + this.X + "', jumpMode=" + this.Y + ", richType=" + this.Z + ", showMode=" + this.f2992aa + ", showResourceList=" + this.f2993ab + ", fromNum='" + this.f2994ac + "', toNum='" + this.f2995ad + "', platform=" + ((int) this.f2996ae) + ", badgeAddNum=" + this.f2997af + ", geofenceid='" + this.f2998ag + "', radius=" + this.f2999ah + ", status='" + this.f3000ai + "', repeat=" + this.f3001aj + ", hasShow=" + this.f3002ak + ", expiration=" + this.f3003al + ", longitude=" + this.am + ", latitude=" + this.an + ", lastGeoStatus='" + this.ao + "', developerArg0='" + this.ap + "', sound='" + this.aq + "', showBeginTime='" + this.ar + "', showEndTime='" + this.as + "', inAppMsgContent='" + this.ax + "', inAppIntent='" + this.aw + ", inAppWebPageUrl = '" + this.aY + "', inAppProtocolVer = '" + this.aZ + "', inAppSSPGap = '" + this.f3014bj + "', inAppCheckIntent = '" + this.f3005ba + "', inAppTplContent = '" + this.f3006bb + "', inAppTplId = '" + this.f3007bc + "', inAppTplUrl = '" + this.f3008bd + "', inAppMarginY  = '" + this.f3009be + "', inAppTplData = '" + this.f3010bf + "', inAppIntentActions = '" + this.f3011bg + "', inAppType= '" + this.bn + "', notifyInAppEndTime= '" + this.at + "', notifyInAppEndTime= '" + this.au + "', notifyInAppMsgType= '" + this.av + "', inAppPriority= '" + this.bo + "', inAppIsDisplayDirect= '" + this.bp + "', inAppFixed= '" + this.bq + "', inAppBlackConf= '" + this.br + "', inAppAnimatorConf= '" + this.bs + "', inAppAdPosition= '" + this.bt + "', inAppFragment= '" + this.bu + "'}";
    }
}
