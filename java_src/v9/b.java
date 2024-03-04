package v9;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.utils.BaseConfig;
import java.io.File;
import java.net.URLConnection;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class b {
    public static void a(Activity activity, File file, String str) {
        ResolveInfo resolveInfo;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        intent.setFlags(3);
        intent.putExtra("android.intent.extra.TEXT", str);
        Iterator<ResolveInfo> it = BaseApplication.getInstance().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                resolveInfo = null;
                break;
            }
            resolveInfo = it.next();
            if (SharePlatformBean.InstagramPackage.equals(resolveInfo.activityInfo.packageName)) {
                break;
            }
        }
        if (resolveInfo == null) {
            return;
        }
        intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        intent.setClassName(SharePlatformBean.InstagramPackage, resolveInfo.activityInfo.name);
        activity.startActivity(intent);
    }

    public static void b(Activity activity, String str, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        String str3 = "video/*";
        intent.setType("video/*");
        intent.setPackage(SharePlatformBean.InstagramPackage);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("android.intent.extra.TEXT", str2);
        }
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 24) {
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(str)));
        } else {
            String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
            if ((contentTypeFor != null && contentTypeFor.length() > 0) || (!str.endsWith("mp4") && !str.endsWith("mkv"))) {
                str3 = contentTypeFor;
            }
            str3 = (str3 == null || str3.length() <= 0) ? "image/*" : "image/*";
            if (i9 >= 29) {
                File file = new File(str);
                try {
                    if (str3.contains("image")) {
                        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(BaseApplication.getInstance(), BaseConfig.APP_PACKAGE_FILE_PROVIDERE, file));
                    } else if (str3.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                        intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(BaseApplication.getInstance(), BaseConfig.APP_PACKAGE_FILE_PROVIDERE, file));
                    }
                } catch (Throwable unused) {
                }
            } else {
                intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(BaseApplication.getInstance(), BaseConfig.APP_PACKAGE_FILE_PROVIDERE, new File(str)));
            }
        }
        try {
            intent.addFlags(268435456);
            activity.startActivity(intent);
        } catch (Throwable unused2) {
        }
    }
}
