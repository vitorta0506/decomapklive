package va;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.context.GCApplication;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class d {
    private static String a(Bitmap bitmap, String str) {
        File file = new File(FilePathProvider.getNXShowPath("guild") + FileUtils.RES_PREFIX_STORAGE + str + FileUtils.PIC_POSTFIX_JPEG);
        if (file.exists()) {
            file.delete();
        }
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return file.getAbsolutePath();
        } catch (IOException unused) {
            return null;
        }
    }

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
    public static java.lang.String b(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: va.d.b(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static long c(Uri uri) throws Exception {
        String scheme = uri.getScheme();
        scheme.hashCode();
        if (scheme.equals(ShareInternalUtility.STAGING_PARAM)) {
            String e10 = e(GCApplication.app(), uri);
            if (e10 == null) {
                return 0L;
            }
            return d(new File(e10));
        } else if (scheme.equals("content")) {
            Cursor query = GCApplication.app().getContentResolver().query(uri, null, null, null, null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return 0L;
            }
            long length = new File(query.getString(query.getColumnIndex("_data"))).length();
            query.close();
            return (length / 1024) / 1024;
        } else {
            return 0L;
        }
    }

    public static long d(File file) throws Exception {
        long j10;
        if (file.exists()) {
            j10 = new FileInputStream(file).available();
        } else {
            file.createNewFile();
            j10 = 0;
        }
        return j10 / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    public static String e(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (h(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + FileUtils.RES_PREFIX_STORAGE + split[1];
                }
            } else if (g(uri)) {
                return b(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
            } else {
                if (j(uri)) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return b(context, uri2, "_id=?", new String[]{split2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if (i(uri)) {
                return uri.getLastPathSegment();
            }
            return b(context, uri, null, null);
        } else if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    public static String f(Uri uri, String str) {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(GCApplication.app(), uri);
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
        try {
            mediaMetadataRetriever.release();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return a(frameAtTime, str);
    }

    public static boolean g(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean h(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean i(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean j(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static File k(Context context, Uri uri) {
        Uri uri2;
        if (context == null || uri == null || ContextCompat.checkSelfPermission(context, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return null;
        }
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (h(uri)) {
                String[] split = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                if ("primary".equalsIgnoreCase(split[0])) {
                    return new File(Environment.getExternalStorageDirectory() + FileUtils.RES_PREFIX_STORAGE + split[1]);
                }
            } else if (g(uri)) {
                try {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    if (documentId.startsWith("raw:")) {
                        documentId.replaceFirst("raw:", "");
                    }
                    String b10 = b(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId)), null, null);
                    if (!TextUtils.isEmpty(b10)) {
                        return new File(b10);
                    }
                } catch (Exception unused) {
                    return null;
                }
            } else if (j(uri)) {
                String[] split2 = DocumentsContract.getDocumentId(uri).split(CertificateUtil.DELIMITER);
                String str = split2[0];
                if ("image".equals(str)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if (AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO.equals(str)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else {
                    uri2 = "audio".equals(str) ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : null;
                }
                String b11 = b(context, uri2, "_id=?", new String[]{split2[1]});
                if (!TextUtils.isEmpty(b11)) {
                    return new File(b11);
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            String b12 = b(context, uri, null, null);
            if (!TextUtils.isEmpty(b12)) {
                return new File(b12);
            }
        } else if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
            return new File(uri.getPath());
        }
        return null;
    }
}
