package ea;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import org.light.utils.FileUtils;
/* loaded from: classes3.dex */
public class f {
    public static String a(Context context, Uri uri, String str, String[] strArr) {
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

    public static String b(Context context, Uri uri) {
        Uri uri2 = null;
        if (context != null && uri != null) {
            if (DocumentsContract.isDocumentUri(context, uri)) {
                if (d(uri)) {
                    String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                    if ("primary".equalsIgnoreCase(split[0])) {
                        return Environment.getExternalStorageDirectory() + FileUtils.RES_PREFIX_STORAGE + split[1];
                    }
                } else if (c(uri)) {
                    return a(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                } else {
                    if (f(uri)) {
                        String[] split2 = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                        String str = split2[0];
                        if ("image".equals(str)) {
                            uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                        } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(str)) {
                            uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                        } else if ("audio".equals(str)) {
                            uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                        }
                        return a(context, uri2, "_id=?", new String[]{split2[1]});
                    }
                }
            } else if ("content".equalsIgnoreCase(uri.getScheme())) {
                if (e(uri)) {
                    return uri.getLastPathSegment();
                }
                return a(context, uri, null, null);
            } else if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static boolean c(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean d(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean e(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean f(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }
}
