package cn.jiguang.f;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static String f2582a;

    private static Uri a(Context context, String str, boolean z10) {
        Uri uri;
        Cursor cursor = null;
        r1 = null;
        r1 = null;
        Uri uri2 = null;
        try {
            Cursor query = context.getApplicationContext().getContentResolver().query(MediaStore.Downloads.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_display_name=?", new String[]{str + ".txt"}, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        uri2 = Uri.withAppendedPath(MediaStore.Downloads.EXTERNAL_CONTENT_URI, String.valueOf(query.getInt(query.getColumnIndex("_id"))));
                        cn.jiguang.as.d.c("MediaStoreUtils", "getUriByDownloadsMediaStore uri is " + uri2.toString());
                    } else if (z10) {
                        uri2 = d(context, str);
                    }
                } catch (Throwable unused) {
                    uri = uri2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return uri;
                }
            }
            if (query != null) {
                query.close();
                return uri2;
            }
            return uri2;
        } catch (Throwable unused2) {
            uri = null;
        }
    }

    public static String a(Context context, String str) {
        Uri uri;
        InputStream inputStream;
        String str2 = "";
        if (context == null || TextUtils.isEmpty(str)) {
            cn.jiguang.as.d.c("MediaStoreUtils", "context or fileName or content is null");
            return "";
        }
        a(context);
        String b10 = b(context, str);
        try {
            uri = (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) ? e(context, b10) : f(context, b10);
            try {
            } catch (Throwable unused) {
                inputStream = null;
            }
        } catch (Throwable unused2) {
            uri = null;
            inputStream = null;
        }
        if (uri != null) {
            inputStream = context.getApplicationContext().getContentResolver().openInputStream(uri);
            try {
            } catch (Throwable unused3) {
                if (uri != null) {
                    try {
                        cn.jiguang.as.d.c("MediaStoreUtils", "readContentByMediaStore delete uri result is " + context.getApplicationContext().getContentResolver().delete(uri, null, null));
                    } finally {
                        i.a((Closeable) inputStream);
                    }
                }
                return str2;
            }
            if (inputStream != null) {
                str2 = c.a(inputStream);
                cn.jiguang.as.d.c("MediaStoreUtils", "readContentByMediaStore data is " + str2);
                return str2;
            }
            throw new IOException("Failed to get input stream.");
        }
        throw new IOException("Failed to read a MediaStore record.");
    }

    private static String a(String str) {
        try {
            File file = new File(f2582a + File.separator + str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            return file.getAbsolutePath();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void a(Context context) {
        StringBuilder sb2;
        String str;
        if (context == null) {
            cn.jiguang.as.d.c("MediaStoreUtils", "context is null");
        } else if (TextUtils.isEmpty(f2582a)) {
            if (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
                sb2 = new StringBuilder();
                sb2.append(Environment.getExternalStorageDirectory().getAbsolutePath());
                sb2.append(File.separator);
                str = ".jpush";
            } else {
                sb2 = new StringBuilder();
                sb2.append(Environment.DIRECTORY_DOWNLOADS);
                sb2.append(File.separator);
                str = "jpush";
            }
            sb2.append(str);
            f2582a = sb2.toString();
        }
    }

    private static void a(Context context, Uri uri) {
        cn.jiguang.as.d.c("MediaStoreUtils", "updatePending uri is " + uri.toString());
        try {
            ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_pending", (Integer) 0);
            contentResolver.update(uri, contentValues, null, null);
        } catch (Throwable unused) {
        }
    }

    public static boolean a(Context context, String str, String str2) {
        Uri uri;
        OutputStream outputStream;
        int i9;
        boolean z10 = false;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            cn.jiguang.as.d.c("MediaStoreUtils", "context or fileName or content is null");
            return false;
        }
        a(context);
        String b10 = b(context, str);
        try {
            i9 = Build.VERSION.SDK_INT;
            uri = (i9 < 29 || context.getApplicationInfo().targetSdkVersion < 29) ? e(context, b10) : f(context, b10);
            try {
            } catch (Throwable unused) {
                outputStream = null;
            }
        } catch (Throwable unused2) {
            uri = null;
            outputStream = null;
        }
        if (uri != null) {
            outputStream = context.getApplicationContext().getContentResolver().openOutputStream(uri);
            try {
            } catch (Throwable unused3) {
                if (uri != null) {
                    try {
                        cn.jiguang.as.d.c("MediaStoreUtils", "saveFile delete uri result is " + context.getApplicationContext().getContentResolver().delete(uri, null, null));
                    } finally {
                        i.a(outputStream);
                    }
                }
                return z10;
            }
            if (outputStream != null) {
                outputStream.write(str2.getBytes());
                outputStream.flush();
                cn.jiguang.as.d.c("MediaStoreUtils", "saveFile file is " + b10 + " success!");
                z10 = true;
                if (i9 >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
                    a(context, uri);
                }
                return z10;
            }
            throw new IOException("Failed to get output stream.");
        }
        throw new IOException("Failed to create new MediaStore record.");
    }

    private static String b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            cn.jiguang.as.d.c("MediaStoreUtils", "context or fileName is null");
            return "";
        } else if (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return "." + str + ".bat";
        } else {
            return str;
        }
    }

    private static Uri c(Context context, String str) {
        Uri uri = null;
        try {
            String a10 = a(str);
            ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str);
            contentValues.put("_data", a10);
            contentValues.put("mime_type", AssetHelper.DEFAULT_MIME_TYPE);
            uri = contentResolver.insert(MediaStore.Files.getContentUri("external"), contentValues);
            cn.jiguang.as.d.c("MediaStoreUtils", "createFileByMediaFile uri is " + uri.toString());
            return uri;
        } catch (Throwable unused) {
            return uri;
        }
    }

    private static Uri d(Context context, String str) {
        Uri uri = null;
        try {
            ContentResolver contentResolver = context.getApplicationContext().getContentResolver();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str);
            contentValues.put("mime_type", AssetHelper.DEFAULT_MIME_TYPE);
            contentValues.put("relative_path", f2582a);
            contentValues.put("is_pending", (Integer) 1);
            uri = contentResolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, contentValues);
            cn.jiguang.as.d.c("MediaStoreUtils", "createDownloadFileByMediaStore uri is " + uri.toString());
            return uri;
        } catch (Throwable unused) {
            return uri;
        }
    }

    private static Uri e(Context context, String str) {
        Uri uri;
        Cursor cursor = null;
        r1 = null;
        Uri uri2 = null;
        try {
            Cursor query = context.getApplicationContext().getContentResolver().query(MediaStore.Files.getContentUri("external"), null, "_display_name=?", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        uri2 = Uri.withAppendedPath(MediaStore.Files.getContentUri("external"), String.valueOf(query.getInt(query.getColumnIndex("_id"))));
                        cn.jiguang.as.d.c("MediaStoreUtils", "getUriByFileMediaStore uri is " + uri2.toString());
                    } else {
                        uri2 = c(context, str);
                    }
                } catch (Throwable unused) {
                    uri = uri2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return uri;
                }
            }
            if (query != null) {
                query.close();
                return uri2;
            }
            return uri2;
        } catch (Throwable unused2) {
            uri = null;
        }
    }

    private static Uri f(Context context, String str) {
        return a(context, str, true);
    }
}
