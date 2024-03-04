package com.twitter.sdk.android.tweetcomposer;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
/* loaded from: classes4.dex */
class f {
    static String a(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(".");
        return lastIndexOf < 0 ? "" : str.substring(lastIndexOf + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(File file) {
        String a10 = a(file.getName());
        return !TextUtils.isEmpty(a10) ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(a10) : "application/octet-stream";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Context context, Uri uri) {
        if (f(uri)) {
            String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
            if ("image".equals(split[0])) {
                return g(context, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_id=?", new String[]{split[1]});
            }
            return null;
        } else if (d(uri)) {
            return g(context, uri, null, null);
        } else {
            if (e(uri)) {
                return uri.getPath();
            }
            return null;
        }
    }

    static boolean d(Uri uri) {
        return "content".equalsIgnoreCase(uri.getScheme());
    }

    static boolean e(Uri uri) {
        return ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme());
    }

    static boolean f(Uri uri) {
        return "com.android.providers.media.documents".equalsIgnoreCase(uri.getAuthority());
    }

    static String g(Context context, Uri uri, String str, String[] strArr) {
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
}
