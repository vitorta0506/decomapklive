package cn.jpush.android.d;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.jpush.android.aa.e;
import cn.jpush.android.api.CustomMessage;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.facebook.bolts.AppLinks;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.tencent.rtmp.TXLiveConstants;
import java.io.LineNumberReader;
import java.io.StringReader;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {
    public static CustomMessage a(Intent intent) {
        CustomMessage customMessage = null;
        try {
            String stringExtra = intent.getStringExtra("msgid");
            CustomMessage customMessage2 = new CustomMessage();
            try {
                customMessage2.messageId = stringExtra;
                customMessage2.appId = intent.getStringExtra("appId");
                customMessage2.senderId = intent.getStringExtra("senderId");
                String stringExtra2 = intent.getStringExtra("data");
                if (stringExtra2 != null) {
                    JSONObject jSONObject = new JSONObject(stringExtra2);
                    customMessage2.message = jSONObject.optString("message", "");
                    customMessage2.contentType = jSONObject.optString(EventTrackingUtils.CONTENT_TYPE, "");
                    customMessage2.title = jSONObject.optString("title", "");
                    customMessage2.extra = jSONObject.optString(AppLinks.KEY_NAME_EXTRAS, "");
                }
                if (JPushConstants.SDK_VERSION_CODE >= 387) {
                    customMessage2.platform = intent.getByteExtra("platform", (byte) 0);
                }
                d.b(stringExtra, intent.getStringExtra("_j_data_"));
                return customMessage2;
            } catch (Throwable th2) {
                th = th2;
                customMessage = customMessage2;
                Logger.w("MessageHelper", "processMessage failed:" + th.getMessage());
                return customMessage;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static cn.jpush.android.b.b a(d dVar) {
        try {
            cn.jpush.android.b.b a10 = cn.jpush.android.b.b.a(new JSONObject(dVar.f3022h).optJSONObject("geofence"));
            if (a10 != null) {
                a10.f2971t = dVar;
                return a10;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void a(Context context, int i9, long j10, long j11, String str) {
        JCoreHelper.sendData(context, JPushConstants.SDK_TYPE, 4, 3, j11, cn.jpush.android.ac.c.a(0, (byte) i9, j10, str));
    }

    public static void a(Context context, int i9, String str, String str2, String str3, long j10, byte b10) {
        if (!str2.equals(context.getPackageName())) {
            Logger.e("MessageHelper", "msg appId is not mine pkgname,appid:" + str2 + ",pkgname:" + context.getPackageName());
            return;
        }
        Logger.d("MessageHelper", "action:receivedPushMessage msgId = " + j10);
        d b11 = d.b(str, str2, str3, j10);
        if (b11 == null || c.a(context, b11.a()) || e.a(context, b11.f3017c, b11.f3021g)) {
            return;
        }
        b11.f2996ae = b10;
        cn.jpush.android.b.b a10 = a(b11);
        d a11 = d.a(context, b11);
        if (a10 != null && !TextUtils.isEmpty(a10.f2952a)) {
            cn.jpush.android.b.d.a(context).a(a10);
        } else if (a11 == null) {
            a(context, b11);
        } else {
            a11.bn = 201;
            a11.av = i9;
            cn.jpush.android.p.a.a().a(context, a11);
        }
    }

    public static void a(Context context, cn.jpush.android.ac.d dVar) {
        String d10 = d.d(dVar.c());
        a(context, dVar.a(), dVar.b(), dVar.getRid(), d10);
        long b10 = dVar.b();
        int a10 = dVar.a();
        String c10 = dVar.c();
        Logger.d("MessageHelper", "msgType = " + a10 + ", msgId = " + b10 + ", jdata = " + d10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("msgContent: \n");
        sb2.append(c10);
        Logger.v("MessageHelper", sb2.toString());
        Logger.d("MessageHelper", "msgContent size:" + c10.getBytes().length);
        LineNumberReader lineNumberReader = new LineNumberReader(new StringReader(c10));
        try {
            String readLine = lineNumberReader.readLine();
            String readLine2 = lineNumberReader.readLine();
            if (readLine == null) {
                Logger.e("MessageHelper", "NO appId");
            } else if (readLine2 == null) {
                Logger.e("MessageHelper", "NO senderId");
            } else {
                int length = readLine.length() + readLine2.length() + 2;
                if (c10.length() <= length + 1) {
                    Logger.d("MessageHelper", "No msgContent");
                    return;
                }
                String substring = c10.substring(length);
                if (!readLine2.equals(JCoreHelper.getAppKey(context))) {
                    Logger.e("MessageHelper", "msg senderId is not mine appkey,senderId:" + readLine2 + ",appkey:" + JCoreHelper.getAppKey(context));
                    return;
                }
                Logger.v("MessageHelper", "Message Fields - appId:" + readLine + ", senderId:" + readLine2 + ", msgContent:" + substring + ", contentLen: " + substring.length());
                if (a10 != 0 && a10 != 2) {
                    if (a10 == 20) {
                        cn.jpush.android.ad.a.a(context, substring, 0, -1L);
                        return;
                    }
                    switch (a10) {
                        case 100:
                        case 101:
                        case 103:
                        case 104:
                            break;
                        case 102:
                            a(context, substring, readLine, readLine2, b10, (byte) 0);
                            return;
                        default:
                            Logger.ww("MessageHelper", "unkown msg type");
                            return;
                    }
                }
                a(context, a10, substring, readLine, readLine2, b10, (byte) 0);
            }
        } catch (Throwable th2) {
            Logger.e("MessageHelper", "Parse msgContent failed", th2);
        }
    }

    public static void a(Context context, d dVar) {
        Logger.d("MessageHelper", "processBasicEntity type:" + dVar.f3019e);
        int i9 = dVar.f3024j ? dVar.f3023i == 4 ? 3 : 1 : 2;
        dVar.f3019e = i9;
        if ((i9 & 2) != 0) {
            Logger.d("MessageHelper", "processBasicEntity user-defined message.");
            if (TextUtils.isEmpty(dVar.f3027m) && TextUtils.isEmpty(dVar.f3030p)) {
                Logger.ww("MessageHelper", "no message or extra send to user");
            } else {
                b(context, dVar);
            }
        }
        if ((dVar.f3019e & 1) != 0) {
            Logger.d("MessageHelper", "processBasicEntity notification");
            if (cn.jpush.android.cache.a.d(context)) {
                Logger.i("MessageHelper", "Service is stoped, give up all the message");
                return;
            }
            dVar.a(context);
            if (cn.jpush.android.aa.c.b(context)) {
                e.b(context, dVar.f3017c);
                cn.jpush.android.aa.c.a(context, dVar);
                return;
            }
            cn.jpush.android.helper.c.a(dVar.f3017c, 986, context);
            Logger.ii("MessageHelper", "push is invalidPushTime，Intercept the message");
        }
    }

    private static void a(Context context, String str, String str2, String str3, long j10, byte b10) {
        try {
            Logger.d("MessageHelper", "[processInAppMessage] received in-app message, msgId = " + j10 + ", appId: " + str2 + ", appKey: " + str3);
            d a10 = d.a(str, str2, str3, j10);
            if (a10 == null) {
                return;
            }
            if (!str2.equals(context.getPackageName())) {
                Logger.e("MessageHelper", "[processInAppMessage] msg appId is not mine pkgname,appid:" + str2 + ",pkgname:" + context.getPackageName());
                cn.jpush.android.helper.c.a(a10.f3017c, 1282, context);
            } else if (c.a(context, a10.a())) {
                cn.jpush.android.helper.c.a(a10.f3017c, 1309, context);
            } else if (cn.jpush.android.cache.a.d(context)) {
                Logger.i("MessageHelper", "Service is stopped, give up all the message");
                cn.jpush.android.helper.c.a(a10.f3017c, 1265, context);
            } else {
                a10.bn = 200;
                cn.jpush.android.p.a.a().a(context, a10);
            }
        } catch (Throwable th2) {
            Logger.ww("MessageHelper", "[processInAppMessage] process in app message failed, error: " + th2.getMessage());
        }
    }

    public static void b(Context context, d dVar) {
        try {
            String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
            if (TextUtils.isEmpty(messageReceiverClass)) {
                Logger.dd("MessageHelper", "not found user push message,use old action to user");
                Intent intent = new Intent(JPushInterface.ACTION_MESSAGE_RECEIVED);
                intent.putExtra(JPushInterface.EXTRA_APP_KEY, dVar.f3004b);
                intent.putExtra(JPushInterface.EXTRA_MESSAGE, dVar.f3027m);
                intent.putExtra(JPushInterface.EXTRA_CONTENT_TYPE, dVar.f3028n);
                intent.putExtra(JPushInterface.EXTRA_TITLE, dVar.f3029o);
                intent.putExtra(JPushInterface.EXTRA_EXTRA, dVar.f3030p);
                intent.putExtra(JPushInterface.EXTRA_MSG_ID, dVar.f3017c);
                if (JPushConstants.SDK_VERSION_CODE >= 387) {
                    intent.putExtra(JPushInterface.EXTRA_TYPE_PLATFORM, dVar.f2996ae);
                }
                intent.addCategory(dVar.f2991a);
                intent.setPackage(context.getPackageName());
                Locale locale = Locale.ENGLISH;
                context.sendBroadcast(intent, String.format(locale, "%s.permission.JPUSH_MESSAGE", dVar.f2991a));
                Logger.i("MessageHelper", "Send broadcast to app: " + String.format(locale, "%s.permission.JPUSH_MESSAGE", dVar.f2991a));
            } else {
                Intent intent2 = new Intent(context, Class.forName(messageReceiverClass));
                intent2.setAction(cn.jpush.android.af.a.f(context, "custom_msg"));
                intent2.putExtra("data", dVar.f3022h);
                intent2.putExtra("msgid", dVar.f3017c);
                intent2.putExtra("appId", dVar.f2991a);
                intent2.putExtra("senderId", dVar.f3004b);
                intent2.putExtra("platform", dVar.f2996ae);
                intent2.putExtra("_j_data_", dVar.f3020f);
                if (JPushConstants.getPushMessageReceiver(context) != null) {
                    JPushConstants.getPushMessageReceiver(context).onMessage(context, a(intent2));
                } else {
                    context.sendBroadcast(intent2);
                }
            }
            byte b10 = dVar.f2996ae;
            if (b10 != 0) {
                cn.jpush.android.helper.c.a(dVar.f3017c, "", b10, TXLiveConstants.PUSH_WARNING_VIDEO_ENCODE_BITRATE_OVERFLOW, context);
            } else {
                cn.jpush.android.helper.c.a(dVar.f3017c, TXLiveConstants.PUSH_WARNING_VIDEO_ENCODE_BITRATE_OVERFLOW, context);
            }
        } catch (Throwable th2) {
            Logger.e("MessageHelper", "sendBroadcastToApp error:" + th2.getMessage());
        }
    }
}
