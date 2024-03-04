package v9;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import java.io.File;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class i {
    private static int a(Activity activity, File file) {
        Cursor managedQuery = activity.managedQuery(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "title", "mime_type", "_display_name"}, "_data=?", new String[]{file.getAbsolutePath()}, null);
        int i9 = -1;
        if (managedQuery == null) {
            return -1;
        }
        if (managedQuery.moveToFirst()) {
            do {
                i9 = managedQuery.getInt(managedQuery.getColumnIndex("_id"));
            } while (managedQuery.moveToNext());
            return i9;
        }
        return i9;
    }

    private static Uri b(String str) {
        ContentValues contentValues = new ContentValues(4);
        contentValues.put("date_added", Long.valueOf(System.currentTimeMillis() / 1000));
        contentValues.put("mime_type", "video/*");
        contentValues.put("_data", str);
        return BaseApplication.getInstance().getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
    }

    private static Uri c(Activity activity, File file) {
        int a10 = a(activity, file);
        if (a10 == -1) {
            return null;
        }
        return Uri.withAppendedPath(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, String.valueOf(a10));
    }

    public static void d(Activity activity, File file, String str) {
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
            if (SharePlatformBean.YoutubePackage.equals(resolveInfo.activityInfo.packageName)) {
                break;
            }
        }
        if (resolveInfo == null) {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.youtube"));
            intent2.addFlags(268435456);
            activity.startActivity(intent2);
            return;
        }
        Uri c10 = c(activity, file);
        if (c10 == null) {
            c10 = b(file.getPath());
        }
        intent.putExtra("android.intent.extra.STREAM", c10);
        intent.setClassName(SharePlatformBean.YoutubePackage, resolveInfo.activityInfo.name);
        activity.startActivity(intent);
    }
}
