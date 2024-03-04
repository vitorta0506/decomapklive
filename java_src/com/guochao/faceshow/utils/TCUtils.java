package com.guochao.faceshow.utils;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.PermissionChecker;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.R;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.lang.ref.WeakReference;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TCUtils {
    public static final int FILTERTYPE_NONE = 0;
    public static final int FILTERTYPE_fennen = 4;
    public static final int FILTERTYPE_huaijiu = 5;
    public static final int FILTERTYPE_landiao = 6;
    public static final int FILTERTYPE_langman = 1;
    public static final int FILTERTYPE_qingliang = 7;
    public static final int FILTERTYPE_qingxin = 2;
    public static final int FILTERTYPE_rixi = 8;
    public static final int FILTERTYPE_weimei = 3;

    public static String asTwoDigit(long j10) {
        String str = j10 < 10 ? "0" : "";
        return str + String.valueOf(j10);
    }

    public static RectF calcViewScreenLocation(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    public static boolean checkPermission(@NonNull Context context, String str) {
        boolean z10 = false;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                if (context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion < 23 ? PermissionChecker.checkSelfPermission(context, str) == 0 : context.checkSelfPermission(str) == 0) {
                    z10 = true;
                }
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
        return z10;
    }

    public static Bitmap createCircleImage(Bitmap bitmap, int i9) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        if (i9 == 0) {
            i9 = bitmap.getHeight() > bitmap.getWidth() ? bitmap.getWidth() : bitmap.getHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(i9, i9, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        float f10 = i9 / 2;
        canvas.drawCircle(f10, f10, f10, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    private static Bitmap decodeResource(Resources resources, int i9) {
        TypedValue typedValue = new TypedValue();
        resources.openRawResource(i9, typedValue);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inTargetDensity = typedValue.density;
        return BitmapFactory.decodeResource(resources, i9, options);
    }

    public static int dp2pxConvertInt(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static String duration(long j10) {
        long j11 = j10 / 1000;
        long j12 = j11 / 3600;
        long j13 = 3600 * j12;
        long j14 = (j11 - j13) / 60;
        long j15 = j11 - (j13 + (60 * j14));
        if (j12 == 0) {
            return asTwoDigit(j14) + CertificateUtil.DELIMITER + asTwoDigit(j15);
        }
        return asTwoDigit(j12) + CertificateUtil.DELIMITER + asTwoDigit(j14) + CertificateUtil.DELIMITER + asTwoDigit(j15);
    }

    public static int filtNumber(int i9, int i10, int i11) {
        return i11 / (i10 / i9);
    }

    public static String formattedTime(long j10) {
        String str;
        String str2;
        String str3;
        long j11 = j10 / 3600;
        long j12 = j10 % 3600;
        long j13 = j12 / 60;
        long j14 = j12 % 60;
        if (j11 < 10) {
            str = "0" + j11;
        } else {
            str = "" + j11;
        }
        if (j13 < 10) {
            str2 = "0" + j13;
        } else {
            str2 = "" + j13;
        }
        if (j14 < 10) {
            str3 = "0" + j14;
        } else {
            str3 = "" + j14;
        }
        return str + CertificateUtil.DELIMITER + str2 + CertificateUtil.DELIMITER + str3;
    }

    public static int getCharacterNum(String str) {
        if (str == null || "".equals(str)) {
            return 0;
        }
        return str.length() + getChineseNum(str);
    }

    public static int getChineseNum(String str) {
        char[] charArray = str.toCharArray();
        int i9 = 0;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            if (((char) ((byte) charArray[i10])) != charArray[i10]) {
                i9++;
            }
        }
        return i9;
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) {
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_data"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static Bitmap getFilterBitmap(Resources resources, int i9) {
        switch (i9) {
            case 1:
                return decodeResource(resources, R.mipmap.filter_langman);
            case 2:
                return decodeResource(resources, R.mipmap.filter_qingxin);
            case 3:
                return decodeResource(resources, R.mipmap.filter_weimei);
            case 4:
                return decodeResource(resources, R.mipmap.filter_fennen);
            case 5:
                return decodeResource(resources, R.mipmap.filter_huaijiu);
            case 6:
                return decodeResource(resources, R.mipmap.filter_landiao);
            case 7:
                return decodeResource(resources, R.mipmap.filter_qingliang);
            case 8:
                return decodeResource(resources, R.mipmap.filter_rixi);
            default:
                return null;
        }
    }

    public static String getLimitString(String str, int i9) {
        if (str == null || str.length() <= i9) {
            return str;
        }
        return str.substring(0, i9) + "...";
    }

    public static String getLimitStringWithoutNode(String str, int i9) {
        return (str == null || str.length() <= i9) ? str : str.substring(0, i9);
    }

    public static String getPath(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + FileUtils.RES_PREFIX_STORAGE + split[1];
                }
            } else if (isDownloadsDocument(uri)) {
                return getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
            } else {
                if (isMediaDocument(uri)) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return getDataColumn(context, uri2, "_id=?", new String[]{split2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if (isGooglePhotosUri(uri)) {
                return uri.getLastPathSegment();
            }
            return getDataColumn(context, uri, null, null);
        } else if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    public static String getStreamIDByStreamUrl(String str) {
        String lowerCase;
        int indexOf;
        if (str == null || str.length() == 0 || (indexOf = (lowerCase = str.toLowerCase()).indexOf("/live/")) == -1) {
            return null;
        }
        String[] split = lowerCase.substring(indexOf + 6).split("[?.]");
        if (split.length > 0) {
            return split[0];
        }
        return null;
    }

    public static String getWellFormatMobile(String str, String str2) {
        return str + "-" + str2;
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED;
    }

    public static boolean isPasswordValid(String str) {
        return str.length() >= 8 && str.length() <= 16;
    }

    public static boolean isPhoneNumValid(String str) {
        return str.length() == 11 && str.matches("[0-9]{1,}");
    }

    public static boolean isUsernameVaild(String str) {
        return !str.matches("[0-9]+") && str.matches("^[a-z0-9_-]{4,24}$");
    }

    public static boolean isVerifyCodeValid(String str) {
        return str.length() > 3;
    }

    public static float sp2px(Context context, float f10) {
        return TypedValue.applyDimension(2, f10, context.getResources().getDisplayMetrics());
    }

    public static void startTimer(final WeakReference<TextView> weakReference, final String str, int i9, int i10) {
        weakReference.get().setEnabled(false);
        new CountDownTimer(i9 * 1000, (i10 * 1000) - 10) { // from class: com.guochao.faceshow.utils.TCUtils.1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (weakReference.get() == null) {
                    cancel();
                    return;
                }
                ((TextView) weakReference.get()).setEnabled(true);
                ((TextView) weakReference.get()).setText(str);
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j10) {
                if (weakReference.get() == null) {
                    cancel();
                    return;
                }
                ((TextView) weakReference.get()).setText("" + ((j10 + 15) / 1000) + NotifyType.SOUND);
            }
        }.start();
    }
}
