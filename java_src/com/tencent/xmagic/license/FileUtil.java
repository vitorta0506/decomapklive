package com.tencent.xmagic.license;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
/* loaded from: classes4.dex */
public class FileUtil {
    private static final String TAG = "FileUtil";

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void copyAssetFile(android.content.Context r2, java.lang.String r3, java.lang.String r4) {
        /*
            android.content.res.AssetManager r2 = r2.getAssets()
            r0 = 0
            java.io.InputStream r2 = r2.open(r3)     // Catch: java.lang.Throwable -> L27 java.io.IOException -> L2a
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L23
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L23
            copyFile(r2, r3)     // Catch: java.lang.Throwable -> L1b java.io.IOException -> L1d
            closeQuietly(r2)
        L14:
            r3.flush()     // Catch: java.io.IOException -> L39
            r3.close()     // Catch: java.io.IOException -> L39
            goto L39
        L1b:
            r4 = move-exception
            goto L21
        L1d:
            r4 = move-exception
            goto L25
        L1f:
            r4 = move-exception
            r3 = r0
        L21:
            r0 = r2
            goto L3b
        L23:
            r4 = move-exception
            r3 = r0
        L25:
            r0 = r2
            goto L2c
        L27:
            r4 = move-exception
            r3 = r0
            goto L3b
        L2a:
            r4 = move-exception
            r3 = r0
        L2c:
            java.lang.String r2 = "FileUtil"
            java.lang.String r1 = "copy asset file failed."
            android.util.Log.e(r2, r1, r4)     // Catch: java.lang.Throwable -> L3a
            closeQuietly(r0)
            if (r3 == 0) goto L39
            goto L14
        L39:
            return
        L3a:
            r4 = move-exception
        L3b:
            closeQuietly(r0)
            if (r3 == 0) goto L46
            r3.flush()     // Catch: java.io.IOException -> L46
            r3.close()     // Catch: java.io.IOException -> L46
        L46:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.xmagic.license.FileUtil.copyAssetFile(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static void copyFile(InputStream inputStream, String str) throws IOException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            copyFile(inputStream, fileOutputStream);
            closeQuietly(fileOutputStream);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            closeQuietly(fileOutputStream2);
            throw th;
        }
    }

    public static File getExternalFilesDir(Context context, String str) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return null;
        }
        String absolutePath = externalFilesDir.getAbsolutePath();
        File file = new File(absolutePath + File.separator + str);
        try {
            if (file.exists() && file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception e10) {
            Log.e(TAG, "mkdirs failed.", e10);
        }
        return file;
    }

    public static long getFolderSize(File file) {
        return getFolderSize(file, 5);
    }

    public static boolean isAssetFileExists(Context context, String str) {
        try {
            for (String str2 : context.getAssets().list("")) {
                if (str2.equals(str.trim())) {
                    Log.i("isAssetFileExists", str + " exist");
                    return true;
                }
            }
            Log.i("isAssetFileExists", str + " not exist");
            return false;
        } catch (IOException unused) {
            Log.i("isAssetFileExists", str + " not exist");
            return false;
        }
    }

    public static boolean isExternalStorageSpaceEnough(long j10) {
        return true;
    }

    public static boolean isFileExist(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnectedOrConnecting()) ? false : true;
    }

    public static String readAssetFile(Context context, String str) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = context.getAssets().open(str);
                byte[] bArr = new byte[inputStream.available()];
                if (inputStream.read(bArr) <= 0) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                    return "";
                }
                inputStream.close();
                String str2 = new String(bArr, "utf-8");
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
                return str2;
            } catch (IOException e10) {
                Log.e(TAG, "read asset file failed.", e10);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return "";
            }
        } catch (Throwable th2) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th2;
        }
    }

    public static String readFile(String str) {
        File file = new File(str);
        StringBuilder sb2 = new StringBuilder("");
        BufferedReader bufferedReader = null;
        if (!file.isFile()) {
            return null;
        }
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            sb2.append(readLine);
                        } else {
                            bufferedReader2.close();
                            String sb3 = sb2.toString();
                            try {
                                bufferedReader2.close();
                                return sb3;
                            } catch (IOException e10) {
                                throw new RuntimeException("IOException occurred. ", e10);
                            }
                        }
                    } catch (IOException e11) {
                        e = e11;
                        bufferedReader = bufferedReader2;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e12) {
                                throw new RuntimeException("IOException occurred. ", e12);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e13) {
                e = e13;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void writeFile(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(str));
                try {
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    } catch (Exception e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception unused) {
                return;
            }
        } catch (Exception e11) {
            e = e11;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
        try {
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.close();
        } catch (Exception e12) {
            e = e12;
            bufferedOutputStream2 = bufferedOutputStream;
            Log.e(TAG, "write file failed.", e);
            if (bufferedOutputStream2 != null) {
                bufferedOutputStream2.close();
            }
            if (fileOutputStream == null) {
                return;
            }
            fileOutputStream.close();
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused2) {
                    throw th;
                }
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
        fileOutputStream.close();
    }

    public static long getFolderSize(File file, int i9) {
        File[] listFiles;
        long length;
        long j10 = 0;
        if (i9 <= 0) {
            return 0L;
        }
        try {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = getFolderSize(file2, i9 - 1);
                } else {
                    length = file2.length();
                }
                j10 += length;
            }
        } catch (Exception e10) {
            Log.i(TAG, "getFolderSize exception " + e10.toString());
        }
        return j10;
    }

    public static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }
}
