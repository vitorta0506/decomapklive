package com.guochao.faceshow.aaspring.utils;

import android.content.ContentUris;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
/* loaded from: classes3.dex */
public class UriUtils {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r8 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0033, code lost:
        if (r8 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
        return null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003d  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r8 == 0) goto L29
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L39
            if (r9 == 0) goto L29
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L39
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L39
            r8.close()
            return r9
        L27:
            r9 = move-exception
            goto L30
        L29:
            if (r8 == 0) goto L38
            goto L35
        L2c:
            r9 = move-exception
            goto L3b
        L2e:
            r9 = move-exception
            r8 = r7
        L30:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L39
            if (r8 == 0) goto L38
        L35:
            r8.close()
        L38:
            return r7
        L39:
            r9 = move-exception
            r7 = r8
        L3b:
            if (r7 == 0) goto L40
            r7.close()
        L40:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.UriUtils.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    @Nullable
    public static File uriToFile(Context context, Uri uri) {
        Uri uri2;
        if (context == null || uri == null || ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                if ("primary".equalsIgnoreCase(split[0])) {
                    return new File(Environment.getExternalStorageDirectory() + org.light.utils.FileUtils.RES_PREFIX_STORAGE + split[1]);
                }
            } else if (isDownloadsDocument(uri)) {
                try {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    if (documentId.startsWith("raw:")) {
                        documentId.replaceFirst("raw:", "");
                    }
                    String dataColumn = getDataColumn(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId)), null, null);
                    if (!TextUtils.isEmpty(dataColumn)) {
                        return new File(dataColumn);
                    }
                } catch (Exception unused) {
                    return null;
                }
            } else if (isMediaDocument(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                String str = split2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else {
                    uri2 = "audio".equals(str) ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : null;
                }
                String dataColumn2 = getDataColumn(context, uri2, "_id=?", new String[]{split2[1]});
                if (!TextUtils.isEmpty(dataColumn2)) {
                    return new File(dataColumn2);
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            String dataColumn3 = getDataColumn(context, uri, null, null);
            if (!TextUtils.isEmpty(dataColumn3)) {
                return new File(dataColumn3);
            }
        } else if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
            return new File(uri.getPath());
        }
        return null;
    }
}
