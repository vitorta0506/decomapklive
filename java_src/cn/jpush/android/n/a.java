package cn.jpush.android.n;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
/* loaded from: classes.dex */
public class a {
    public static void a(Context context, String str) {
        Logger.dd("GeoCallbackHelper", "onGeofenceReceived,geos:" + str);
        a(context, "cn.jpush.android.intent.GEO_RECEIVED", str, 0.0d, 0.0d);
    }

    public static void a(Context context, String str, double d10, double d11) {
        Logger.dd("GeoCallbackHelper", "onGeofenceRegion,geo:" + str + ",lat:" + d10 + ",lng:" + d11);
        a(context, "cn.jpush.android.intent.GEO_REGION", str, d10, d11);
    }

    public static void a(Context context, String str, String str2, double d10, double d11) {
        if (context == null) {
            return;
        }
        try {
            String messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
            if (TextUtils.isEmpty(messageReceiverClass)) {
                Logger.d("GeoCallbackHelper", "not found messageReceiver");
            } else {
                Intent intent = new Intent(context, Class.forName(messageReceiverClass));
                intent.setAction(str);
                intent.putExtra("geo", str2);
                intent.putExtra("geoLat", d10);
                intent.putExtra("geoLng", d11);
                context.sendBroadcast(intent);
            }
        } catch (Throwable th2) {
            Logger.ww("GeoCallbackHelper", "onResult error:" + th2);
        }
    }
}
