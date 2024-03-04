package v9;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import java.io.File;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class h {
    public static void a(Activity activity, File file, String str) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(3);
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.TEXT", str);
        Iterator<ResolveInfo> it = BaseApplication.getInstance().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                resolveInfo = null;
                break;
            }
            resolveInfo = it.next();
            if (SharePlatformBean.WhatsAppPackage.equals(resolveInfo.activityInfo.packageName)) {
                break;
            }
        }
        if (resolveInfo == null) {
            return;
        }
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        intent.setClassName(SharePlatformBean.WhatsAppPackage, resolveInfo.activityInfo.name);
        activity.startActivity(intent);
    }

    public static void b(Activity activity, File file, String str) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(3);
        intent.setType("video/*");
        intent.putExtra("android.intent.extra.TEXT", str);
        Iterator<ResolveInfo> it = BaseApplication.getInstance().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                resolveInfo = null;
                break;
            }
            resolveInfo = it.next();
            if (SharePlatformBean.WhatsAppPackage.equals(resolveInfo.activityInfo.packageName)) {
                break;
            }
        }
        if (resolveInfo == null) {
            return;
        }
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        intent.setClassName(SharePlatformBean.WhatsAppPackage, resolveInfo.activityInfo.name);
        activity.startActivity(intent);
    }
}
