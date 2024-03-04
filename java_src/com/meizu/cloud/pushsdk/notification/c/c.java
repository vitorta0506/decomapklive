package com.meizu.cloud.pushsdk.notification.c;

import android.content.Context;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
/* loaded from: classes4.dex */
public class c {
    public static int a(Context context) {
        return d.a(context).a(context, "push_expandable_big_image_notification", "layout");
    }

    public static int b(Context context) {
        return d.a(context).a(context, "push_expandable_big_text_notification", "layout");
    }

    public static int c(Context context) {
        String str;
        d a10 = d.a(context);
        int flymeVersion = MzSystemUtils.getFlymeVersion();
        if (flymeVersion > 0 && flymeVersion <= 6) {
            str = "push_pure_pic_notification_f6";
        } else if (flymeVersion == 7) {
            str = "push_pure_pic_notification_f7";
        } else if (flymeVersion == 8) {
            str = "push_pure_pic_notification_f8";
        } else {
            String valueOf = String.valueOf(context.getResources().getDisplayMetrics().density);
            str = ("2.0".equals(valueOf) || "3.0".equals(valueOf) || "4.0".equals(valueOf) || "6.0".equals(valueOf)) ? "push_pure_pic_notification_f9" : "push_pure_pic_notification_f9_275";
        }
        return a10.a(context, str, "layout");
    }

    public static int d(Context context) {
        return d.a(context).a(context, "push_big_notification_title", "id");
    }

    public static int e(Context context) {
        return d.a(context).a(context, "push_big_notification_content", "id");
    }

    public static int f(Context context) {
        return d.a(context).a(context, "push_big_notification_date", "id");
    }

    public static int g(Context context) {
        return d.a(context).a(context, "push_big_bigview_defaultView", "id");
    }

    public static int h(Context context) {
        return d.a(context).a(context, "push_big_bigtext_defaultView", "id");
    }

    public static int i(Context context) {
        return d.a(context).a(context, "push_pure_bigview_banner", "id");
    }

    public static int j(Context context) {
        return d.a(context).a(context, "push_pure_bigview_expanded", "id");
    }

    public static int k(Context context) {
        return d.a(context).a(context, "push_big_notification_icon", "id");
    }

    public static int l(Context context) {
        return d.a(context).a(context, "stat_sys_third_app_notify", "drawable");
    }

    public static int m(Context context) {
        return d.a(context).a(context, "push_pure_close", "id");
    }
}
