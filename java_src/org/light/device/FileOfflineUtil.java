package org.light.device;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class FileOfflineUtil {
    private static final String DIR_NAME = "offlinepkg";
    private static final String OFFELINE_DIR;
    private static final String TAG = "FileOfflineUtil";
    private static String sCachePath;

    static {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("tencent");
        String str = File.separator;
        sb2.append(str);
        sb2.append("com.tencent.ttpic");
        sb2.append(str);
        sb2.append(DIR_NAME);
        OFFELINE_DIR = sb2.toString();
    }

    private static void checkFileExit(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static String getCacheFilePath() {
        if (sCachePath != null) {
            File file = new File(sCachePath);
            if (file.exists()) {
                return file.getAbsolutePath() + File.separator + DIR_NAME;
            }
            return null;
        }
        return null;
    }

    public static String getOfflineDirPath(Context context) {
        String cacheFilePath = getCacheFilePath();
        if (cacheFilePath == null) {
            cacheFilePath = getSDCardPath(context);
        }
        checkFileExit(cacheFilePath);
        LightLogUtil.i("Offline", "getOffPath:" + cacheFilePath);
        return cacheFilePath;
    }

    public static String getSDCardPath(Context context) {
        try {
            File externalFilesDir = context.getExternalFilesDir(null);
            return externalFilesDir.getAbsolutePath() + File.separator + OFFELINE_DIR;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "/sdcard" + File.separator + OFFELINE_DIR;
        }
    }

    public static String getStringFromStream(InputStream inputStream) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb2 = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                } else {
                    bufferedReader.close();
                    inputStreamReader.close();
                    return sb2.toString();
                }
            }
        } catch (FileNotFoundException unused) {
            LightLogUtil.e(TAG, "FileNotFoundException");
            return null;
        } catch (UnsupportedEncodingException unused2) {
            LightLogUtil.e(TAG, "UnsupportedEncodingException");
            return null;
        } catch (IOException unused3) {
            LightLogUtil.e(TAG, "IOException");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readJsonStringFromFile(java.lang.String r7) {
        /*
            java.lang.String r0 = "readStringFromAssetsPath|IO close Exception:"
            java.lang.String r1 = "FileOfflineUtil"
            r2 = 0
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f java.io.FileNotFoundException -> L7a
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f java.io.FileNotFoundException -> L7a
            boolean r7 = r3.exists()     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f java.io.FileNotFoundException -> L7a
            if (r7 != 0) goto L13
            java.lang.String r7 = ""
            return r7
        L13:
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f java.io.FileNotFoundException -> L7a
            r7.<init>(r3)     // Catch: java.lang.Throwable -> L3d java.lang.Exception -> L3f java.io.FileNotFoundException -> L7a
            java.lang.String r2 = getStringFromStream(r7)     // Catch: java.lang.Exception -> L38 java.io.FileNotFoundException -> L7b java.lang.Throwable -> L9e
            r7.close()     // Catch: java.io.IOException -> L20
            goto L37
        L20:
            r7 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r7 = r7.getMessage()
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            org.light.utils.LightLogUtil.e(r1, r7)
        L37:
            return r2
        L38:
            r3 = move-exception
            r6 = r3
            r3 = r7
            r7 = r6
            goto L41
        L3d:
            r7 = move-exception
            goto La2
        L3f:
            r7 = move-exception
            r3 = r2
        L41:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            r4.<init>()     // Catch: java.lang.Throwable -> L77
            java.lang.String r5 = "readStringFromAssetsPath|Exception:"
            r4.append(r5)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> L77
            r4.append(r7)     // Catch: java.lang.Throwable -> L77
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L77
            org.light.utils.LightLogUtil.e(r1, r7)     // Catch: java.lang.Throwable -> L77
            if (r3 == 0) goto L76
            r3.close()     // Catch: java.io.IOException -> L5f
            goto L76
        L5f:
            r7 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r7 = r7.getMessage()
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            org.light.utils.LightLogUtil.e(r1, r7)
        L76:
            return r2
        L77:
            r7 = move-exception
            r2 = r3
            goto La2
        L7a:
            r7 = r2
        L7b:
            java.lang.String r3 = "readStringFromAssetsPath|FileNotFoundException"
            org.light.utils.LightLogUtil.e(r1, r3)     // Catch: java.lang.Throwable -> L9e
            if (r7 == 0) goto L9d
            r7.close()     // Catch: java.io.IOException -> L86
            goto L9d
        L86:
            r7 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r7 = r7.getMessage()
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            org.light.utils.LightLogUtil.e(r1, r7)
        L9d:
            return r2
        L9e:
            r2 = move-exception
            r6 = r2
            r2 = r7
            r7 = r6
        La2:
            if (r2 == 0) goto Lbf
            r2.close()     // Catch: java.io.IOException -> La8
            goto Lbf
        La8:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r0 = r2.getMessage()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            org.light.utils.LightLogUtil.e(r1, r0)
        Lbf:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.device.FileOfflineUtil.readJsonStringFromFile(java.lang.String):java.lang.String");
    }

    public static String readStringFromAssets(Context context, String str) {
        try {
            return getStringFromStream(context.getAssets().open(str));
        } catch (FileNotFoundException unused) {
            LightLogUtil.e(TAG, "getStringFromAssets|FileNotFoundException");
            return null;
        } catch (IOException unused2) {
            LightLogUtil.e(TAG, "getStringFromAssets|IOException");
            return null;
        } catch (Exception e10) {
            LightLogUtil.e(TAG, "getStringFromAssets|Exception:" + e10.getMessage());
            return null;
        }
    }

    public static void setCachePath(String str) {
        LightLogUtil.i("Offline", "cachePath:" + str);
        sCachePath = str;
    }
}
