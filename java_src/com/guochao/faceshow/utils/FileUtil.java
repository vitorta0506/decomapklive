package com.guochao.faceshow.utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class FileUtil {
    private static final String TAG = "FileUtil";
    private static final byte[] gSyncCode = new byte[0];

    private FileUtil() {
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    private static void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void copyDir(String str, String str2) throws IOException {
        String[] list = new File(str).list();
        if (list == null) {
            return;
        }
        if (!new File(str2).exists()) {
            new File(str2).mkdirs();
        }
        for (int i9 = 0; i9 < list.length; i9++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            String str3 = File.separator;
            sb2.append(str3);
            sb2.append(list[i9]);
            if (new File(sb2.toString()).isDirectory()) {
                copyDir(str + str3 + list[i9], str2 + str3 + list[i9]);
            }
            if (new File(str + str3 + list[i9]).isFile()) {
                copyFile(str + str3 + list[i9], str2 + str3 + list[i9]);
            }
        }
    }

    public static boolean copyFile(String str, String str2) {
        try {
            return writeFile(str2, new FileInputStream(str));
        } catch (FileNotFoundException e10) {
            LogUtils.e(TAG, "FileNotFoundException occurred", e10);
            return false;
        }
    }

    public static void copyUriToFile(Context context, Uri uri, File file) {
        BufferedOutputStream bufferedOutputStream;
        InputStream openInputStream;
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return;
        }
        BufferedInputStream bufferedInputStream = null;
        try {
            openInputStream = contentResolver.openInputStream(uri);
        } catch (IOException e10) {
            e = e10;
            bufferedOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream = null;
        }
        if (openInputStream == null) {
            close(null);
            close(null);
            return;
        }
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(openInputStream);
        try {
            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        } catch (IOException e11) {
            e = e11;
            bufferedOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream2.read(bArr);
                if (read <= 0) {
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
            }
            bufferedOutputStream.flush();
            close(bufferedInputStream2);
        } catch (IOException e12) {
            e = e12;
            bufferedInputStream = bufferedInputStream2;
            try {
                e.printStackTrace();
                close(bufferedInputStream);
                close(bufferedOutputStream);
            } catch (Throwable th4) {
                th = th4;
                close(bufferedInputStream);
                close(bufferedOutputStream);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedInputStream = bufferedInputStream2;
            close(bufferedInputStream);
            close(bufferedOutputStream);
            throw th;
        }
        close(bufferedOutputStream);
    }

    public static boolean deleteFile(String str) {
        synchronized (gSyncCode) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            File file = new File(str);
            if (file.exists()) {
                if (file.isFile()) {
                    return file.delete();
                }
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null) {
                        for (File file2 : listFiles) {
                            if (file2.isFile()) {
                                file2.delete();
                            } else if (file2.isDirectory()) {
                                deleteFile(file2.getAbsolutePath());
                            }
                        }
                    }
                    return file.delete();
                }
                return false;
            }
            return true;
        }
    }

    public static boolean fileIsExists(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
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
    private static java.lang.String getDataColumn(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.utils.FileUtil.getDataColumn(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    public static String getFilePath(Context context, Uri uri) {
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
            return getDataColumn(context, uri, null, null);
        } else {
            if (ShareInternalUtility.STAGING_PARAM.equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static String getFolderName(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isFileExist(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean makeDirs(String str) {
        String folderName = getFolderName(str);
        if (TextUtils.isEmpty(folderName)) {
            return false;
        }
        File file = new File(folderName);
        if (file.exists() && file.isDirectory()) {
            return true;
        }
        return file.mkdirs();
    }

    public static boolean makeFolders(String str) {
        return makeDirs(str);
    }

    public static void saveBitmap(String str, Drawable drawable, od.b<Drawable> bVar) {
        FileOutputStream fileOutputStream;
        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
        FileOutputStream fileOutputStream2 = null;
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                try {
                    try {
                        fileOutputStream = new FileOutputStream(new File(str));
                    } catch (Exception e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    bitmapDrawable.getBitmap().compress(Bitmap.CompressFormat.PNG, 90, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    if (bVar != null) {
                        bVar.onResponse(drawable);
                    }
                    fileOutputStream2 = fileOutputStream;
                } catch (Exception e11) {
                    e = e11;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
    }

    public static void scanCameraFile(Context context, String str) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(new File(str)));
        context.sendBroadcast(intent);
    }

    public static boolean writeFile(String str, InputStream inputStream) {
        return writeFile(str, inputStream, false);
    }

    public static boolean writeFile(String str, InputStream inputStream, boolean z10) {
        return writeFile(str != null ? new File(str) : null, inputStream, z10);
    }

    public static boolean writeFile(File file, InputStream inputStream, boolean z10) {
        FileOutputStream fileOutputStream;
        if (file == null || inputStream == null) {
            return false;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    makeDirs(file.getAbsolutePath());
                    fileOutputStream = new FileOutputStream(file, z10);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e10) {
                e = e10;
            } catch (IOException e11) {
                e = e11;
            }
        } catch (IOException e12) {
            LogUtils.e(TAG, "IOException occurred", e12);
        }
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileOutputStream.flush();
            try {
                fileOutputStream.close();
                inputStream.close();
            } catch (IOException e13) {
                LogUtils.e(TAG, "IOException occurred", e13);
            }
            return true;
        } catch (FileNotFoundException e14) {
            e = e14;
            fileOutputStream2 = fileOutputStream;
            LogUtils.e(TAG, "FileNotFoundException occurred. ", e);
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
                inputStream.close();
            }
            return false;
        } catch (IOException e15) {
            e = e15;
            fileOutputStream2 = fileOutputStream;
            LogUtils.e(TAG, "IOException occurred", e);
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
                inputStream.close();
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                    inputStream.close();
                } catch (IOException e16) {
                    LogUtils.e(TAG, "IOException occurred", e16);
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void saveBitmap(String str, Bitmap bitmap) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(new File(str));
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e10) {
                e = e10;
            }
            try {
                Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
                bitmap.compress(compressFormat, 90, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                fileOutputStream.close();
                fileOutputStream2 = compressFormat;
            } catch (Exception e11) {
                e = e11;
                fileOutputStream2 = fileOutputStream;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                    fileOutputStream2 = fileOutputStream2;
                }
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        }
    }
}
