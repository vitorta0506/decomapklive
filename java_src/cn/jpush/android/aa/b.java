package cn.jpush.android.aa;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.huawei.hms.push.constant.RemoteMessageConst;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {
    public static PendingIntent a(Context context, int i9, String str, String str2, cn.jpush.android.d.d dVar) {
        Intent intent;
        try {
            String o10 = cn.jpush.android.af.a.o(context);
            if (TextUtils.isEmpty(o10)) {
                Logger.w("NotificationFeedBackHelper", "not found commonServiceClass");
                intent = null;
            } else {
                Logger.i("NotificationFeedBackHelper", "found commonServiceClass（JCommonService), " + o10 + ", action: " + str);
                intent = new Intent();
                intent.setClass(context, Class.forName(o10));
                intent.setAction("a3");
                Bundle bundle = new Bundle();
                bundle.putString(HianalyticsBaseData.SDK_TYPE, JPushConstants.SDK_TYPE);
                bundle.putString("internal_action", "ssp_neg_fb");
                bundle.putString("ssp_fb_action_type", str);
                bundle.putInt("notification_id", i9);
                bundle.putString("message_data", dVar.f3022h);
                bundle.putString("feedback_name", str2);
                intent.putExtras(bundle);
                intent.setData(Uri.parse(str));
            }
            if (intent != null) {
                return PendingIntent.getService(context, i9, intent, 201326592);
            }
        } catch (Throwable th2) {
            Logger.w("NotificationFeedBackHelper", "[NotificationFeedBackHelper] getServiceIntent error:" + th2);
        }
        return null;
    }

    private static void a(Context context, int i9, String str) {
        if (context != null) {
            try {
                cn.jpush.android.d.d b10 = cn.jpush.android.d.d.b(str, context.getPackageName(), JCoreHelper.getAppKey(context), 0L);
                b10.a(context);
                c.d(context, b10);
            } catch (Throwable th2) {
                Logger.w("NotificationFeedBackHelper", "[handleNotLikeCancelAction] failed, " + th2.getMessage());
            }
        }
    }

    private static void a(Context context, int i9, String str, int i10, String str2) {
        if (context != null) {
            try {
                cn.jpush.android.d.d b10 = cn.jpush.android.d.d.b(str, context.getPackageName(), JCoreHelper.getAppKey(context), 0L);
                b10.a(context);
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("fbName", str2);
                }
                cn.jpush.android.helper.c.a(b10.f3017c, i10, jSONObject.toString(), context);
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
                if (notificationManager != null) {
                    notificationManager.cancel(i9);
                }
            } catch (Throwable th2) {
                Logger.w("NotificationFeedBackHelper", "[handleNotLikeReportAction] failed, " + th2.getMessage());
            }
        }
    }

    public static void a(Context context, Bundle bundle) {
        if (bundle == null || context == null) {
            return;
        }
        try {
            String string = bundle.getString("ssp_fb_action_type");
            int i9 = bundle.getInt("notification_id", 0);
            String string2 = bundle.getString("feedback_name");
            String string3 = bundle.getString("message_data");
            Logger.d("NotificationFeedBackHelper", "handleNotifyFbAction action: " + string + ", notification_id: " + i9 + ", fbName: " + string2 + ", subStr: " + string3);
            if ("cn.jpush.android.action.fb_no_like".equals(string)) {
                b(context, i9, string3);
            } else if ("cn.jpush.android.action.fb_no_like_cancle".equals(string)) {
                a(context, i9, string3);
            } else if ("cn.jpush.android.action.fb_no_like_01".equals(string)) {
                a(context, i9, string3, 1090, string2);
            } else if ("cn.jpush.android.action.fb_no_like_02".equals(string)) {
                a(context, i9, string3, 1091, string2);
            } else if ("cn.jpush.android.action.fb_no_like_03".equals(string)) {
                a(context, i9, string3, 1092, string2);
            } else if ("cn.jpush.android.action.fb_no_like_04".equals(string)) {
                a(context, i9, string3, 1093, string2);
            }
        } catch (Throwable th2) {
            Logger.w("NotificationFeedBackHelper", "handle notify fb action failed, " + th2.getMessage());
        }
    }

    private static void b(Context context, int i9, String str) {
        Logger.d("NotificationFeedBackHelper", "user click not like this notification,originmsg : " + str);
        if (context != null) {
            try {
                cn.jpush.android.d.d b10 = cn.jpush.android.d.d.b(str, context.getPackageName(), JCoreHelper.getAppKey(context), 0L);
                b10.a(context);
                c.c(context, b10);
                cn.jpush.android.helper.c.a(b10.f3017c, 1094, context);
            } catch (Throwable th2) {
                Logger.w("NotificationFeedBackHelper", "[handleNotLikeAction] failed, " + th2.getMessage());
            }
        }
    }
}
