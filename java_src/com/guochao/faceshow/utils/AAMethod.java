package com.guochao.faceshow.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.webkit.internal.AssetHelper;
import com.guochao.faceshow.context.GCApplication;
import java.io.File;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class AAMethod {
    private static final String[][] MIME_MapTable = {new String[]{FileUtils.PIC_POSTFIX_JPEG, "image/jpeg"}, new String[]{".txt", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".jpeg", "image/jpeg"}, new String[]{".pdf", "application/pdf"}, new String[]{FileUtils.PIC_POSTFIX_PNG, "image/png"}, new String[]{".doc", "application/msword"}, new String[]{".docx", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"}, new String[]{".pps", "application/vnd.ms-powerpoint"}, new String[]{".ppt", "application/vnd.ms-powerpoint"}, new String[]{".3gp", "video/3gpp"}, new String[]{".apk", "application/vnd.android.package-archive"}, new String[]{".asf", "video/x-ms-asf"}, new String[]{".avi", "video/x-msvideo"}, new String[]{".bin", "application/octet-stream"}, new String[]{".bmp", "image/bmp"}, new String[]{".c", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".class", "application/octet-stream"}, new String[]{".conf", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".cpp", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".xls", "application/vnd.ms-excel"}, new String[]{".xlsx", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"}, new String[]{".exe", "application/octet-stream"}, new String[]{".gif", "image/gif"}, new String[]{".gtar", "application/x-gtar"}, new String[]{".gz", "application/x-gzip"}, new String[]{".h", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".htm", "text/html"}, new String[]{".html", "text/html"}, new String[]{".jar", "application/java-archive"}, new String[]{".java", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".js", "application/x-javascript"}, new String[]{".log", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".m3u", "audio/x-mpegurl"}, new String[]{".m4a", "audio/mp4a-latm"}, new String[]{".m4b", "audio/mp4a-latm"}, new String[]{".m4p", "audio/mp4a-latm"}, new String[]{".m4u", "video/vnd.mpegurl"}, new String[]{".m4v", "video/x-m4v"}, new String[]{".mov", "video/quicktime"}, new String[]{".mp2", "audio/x-mpeg"}, new String[]{".mp3", "audio/x-mpeg"}, new String[]{FileUtils.PIC_POSTFIX_MP4, "video/mp4"}, new String[]{".mpc", "application/vnd.mpohun.certificate"}, new String[]{".mpe", "video/mpeg"}, new String[]{".mpeg", "video/mpeg"}, new String[]{".mpg", "video/mpeg"}, new String[]{".mpg4", "video/mp4"}, new String[]{".mpga", "audio/mpeg"}, new String[]{".msg", "application/vnd.ms-outlook"}, new String[]{".ogg", "audio/ogg"}, new String[]{".pptx", "application/vnd.openxmlformats-officedocument.presentationml.presentation"}, new String[]{".prop", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".rc", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".rmvb", "audio/x-pn-realaudio"}, new String[]{".rtf", "application/rtf"}, new String[]{".sh", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".tar", "application/x-tar"}, new String[]{".tgz", "application/x-compressed"}, new String[]{".wav", "audio/x-wav"}, new String[]{".wma", "audio/x-ms-wma"}, new String[]{".wmv", "audio/x-ms-wmv"}, new String[]{".wps", "application/vnd.ms-works"}, new String[]{".xml", AssetHelper.DEFAULT_MIME_TYPE}, new String[]{".z", "application/x-compress"}, new String[]{".zip", "application/x-zip-compressed"}, new String[]{"", "*/*"}};

    public static String getFullVersionName(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str = packageInfo.versionName;
            if (Build.VERSION.SDK_INT >= 28) {
                packageInfo.getLongVersionCode();
                return String.format("BuzzCast version %s", str);
            }
            return String.format("BuzzCast version %s", str);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getMIMEType(File file) {
        String lowerCase;
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf < 0 || (lowerCase = name.substring(lastIndexOf, name.length()).toLowerCase()) == "") {
            return "*/*";
        }
        int i9 = 0;
        while (true) {
            String[][] strArr = MIME_MapTable;
            if (i9 >= strArr.length) {
                return "*/*";
            }
            if (lowerCase.equals(strArr[i9][0])) {
                return strArr[i9][1];
            }
            i9++;
        }
    }

    public static int getRealHeight(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenHeight(Activity activity) {
        if (activity == null) {
            return GCApplication.app().getResources().getDisplayMetrics().heightPixels;
        }
        WindowManager windowManager = activity.getWindowManager();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenWidth(Activity activity) {
        if (activity == null) {
            return GCApplication.app().getResources().getDisplayMetrics().widthPixels;
        }
        WindowManager windowManager = activity.getWindowManager();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }
}
