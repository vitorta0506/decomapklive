package v9;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.content.FileProvider;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.utils.BaseConfig;
import java.io.File;
/* loaded from: classes3.dex */
public class e {
    private static Intent a(Context context, Uri uri, String str, int i9) {
        Intent intent = new Intent("android.intent.action.SEND");
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
        }
        intent.putExtra("android.intent.extra.TEXT", sb2.toString());
        intent.putExtra("android.intent.extra.STREAM", uri);
        intent.setFlags(3);
        if (i9 == 1) {
            intent.setType("video/*");
        } else {
            intent.setType("image/");
        }
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            if (resolveInfo.activityInfo.packageName.startsWith(SharePlatformBean.TwitterPackage)) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
                return intent;
            }
        }
        return null;
    }

    public static void b(Activity activity, String str, String str2, String str3, String str4) {
        Uri fromFile;
        try {
            DelayIniter.initTwitter();
            if (Build.VERSION.SDK_INT >= 24) {
                fromFile = FileProvider.getUriForFile(activity, BaseConfig.APP_PACKAGE_FILE_PROVIDERE, new File(str4));
            } else {
                fromFile = Uri.fromFile(new File(str4));
            }
            activity.startActivity(a(activity, fromFile, str2, 0));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void c(Activity activity, String str, String str2) {
        Uri fromFile;
        try {
            DelayIniter.initTwitter();
            if (Build.VERSION.SDK_INT >= 24) {
                fromFile = FileProvider.getUriForFile(activity, BaseConfig.APP_PACKAGE_FILE_PROVIDERE, new File(str2));
            } else {
                fromFile = Uri.fromFile(new File(str2));
            }
            activity.startActivity(a(activity, fromFile, str, 1));
        } catch (Exception unused) {
        }
    }
}
