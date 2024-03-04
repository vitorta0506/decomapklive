package org.light.utils;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import androidx.annotation.Nullable;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.UByte;
import org.light.device.LightDeviceUtils;
/* loaded from: classes7.dex */
public class FileUtils {
    public static final String MD5_SALT = "aekit";
    public static final String PIC_POSTFIX_JPEG = ".jpg";
    public static final String PIC_POSTFIX_MP4 = ".mp4";
    public static final String PIC_POSTFIX_PNG = ".png";
    public static final String PIC_POSTFIX_WEBP = ".webp";
    public static final String RES_POSTFIX_ENCRYPTED_GLB = ".dat";
    public static final String RES_POSTFIX_ENCRYPTED_GLTF = ".datf";
    public static final String RES_POSTFIX_GLB = ".glb";
    public static final String RES_POSTFIX_GLTF = ".gltf";
    public static final String RES_PREFIX_ASSETS = "assets://";
    public static final String RES_PREFIX_HTTP = "http://";
    public static final String RES_PREFIX_HTTPS = "https://";
    public static final String RES_PREFIX_STORAGE = "/";
    public static final AssetFileComparator SIMPLE_ASSET_COMPARATOR = new AssetFileComparator() { // from class: org.light.utils.FileUtils.2
        @Override // org.light.utils.FileUtils.AssetFileComparator
        public boolean equals(Context context, String str, File file) {
            long assetLength = FileUtils.getAssetLength(context, str);
            return assetLength != -1 && assetLength == file.length();
        }
    };
    public static final AssetFileComparator SIMPLE_ASSET_MD5_COMPARATOR = new AssetFileComparator() { // from class: org.light.utils.FileUtils.3
        @Override // org.light.utils.FileUtils.AssetFileComparator
        public boolean equals(Context context, String str, File file) {
            String assetsMD5 = FileUtils.getAssetsMD5(context, str, FileUtils.MD5_SALT);
            String md5 = FileUtils.getMD5(file.getAbsolutePath(), FileUtils.MD5_SALT);
            if (TextUtils.isEmpty(assetsMD5) || TextUtils.isEmpty(md5)) {
                return false;
            }
            return assetsMD5.equals(md5);
        }
    };
    public static final FileComparator SIMPLE_FILE_COMPARATOR = new FileComparator() { // from class: org.light.utils.FileUtils.4
        @Override // org.light.utils.FileUtils.FileComparator
        public boolean equals(String str, File file) {
            long fileLength = FileUtils.getFileLength(str);
            return fileLength != -1 && fileLength == file.length();
        }
    };
    private static final String TAG = "FileUtils";

    /* loaded from: classes7.dex */
    public interface AssetFileComparator {
        boolean equals(Context context, String str, File file);
    }

    /* loaded from: classes7.dex */
    public interface FileComparator {
        boolean equals(String str, File file);
    }

    /* loaded from: classes7.dex */
    static class FileCopyTask extends AsyncTask<String, String, Boolean> {
        String mDestPath;
        OnFileCopyListener mListener;
        InputStream mSrcInputStream;

        FileCopyTask(InputStream inputStream, String str) {
            this.mSrcInputStream = inputStream;
            this.mDestPath = str;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            OnFileCopyListener onFileCopyListener = this.mListener;
            if (onFileCopyListener != null) {
                onFileCopyListener.onCopyStart();
            }
        }

        public void setOnFileCopyListener(OnFileCopyListener onFileCopyListener) {
            this.mListener = onFileCopyListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... strArr) {
            return Boolean.valueOf(FileUtils.copyFile(this.mSrcInputStream, this.mDestPath));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            super.onPostExecute((FileCopyTask) bool);
            if (this.mListener != null) {
                if (bool.booleanValue()) {
                    this.mListener.onCopySuccess();
                } else {
                    this.mListener.onCopyFailed();
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface OnFileCopyListener {
        void onCopyFailed();

        void onCopyStart();

        void onCopySuccess();
    }

    public static void CopyAssetsMaterialToExternalStorage(Context context, String str) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                new File(context.getExternalFilesDir(null).getAbsolutePath() + File.separator + str).mkdirs();
                for (String str2 : list) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    String str3 = File.separator;
                    sb2.append(str3);
                    sb2.append(str2);
                    String sb3 = sb2.toString();
                    CopyAssetsMaterialToExternalStorage(context, sb3);
                    str = sb3.substring(0, sb3.lastIndexOf(str3));
                }
                return;
            }
            copyAssets(context, str, context.getExternalFilesDir(null).getAbsolutePath() + File.separator + str);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static boolean assetAndPathExist(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith("assets")) {
            AssetManager assets = context.getAssets();
            try {
                String substring = str.substring(str.lastIndexOf(RES_PREFIX_STORAGE) + 1);
                String[] list = assets.list(str.substring(0, str.lastIndexOf(RES_PREFIX_STORAGE)).replace(RES_PREFIX_ASSETS, ""));
                if (list != null) {
                    for (String str2 : list) {
                        if (TextUtils.equals(str2.substring(str2.lastIndexOf(RES_PREFIX_STORAGE) + 1), substring)) {
                            return true;
                        }
                    }
                }
            } catch (IOException unused) {
            }
            return false;
        }
        return new File(str).exists();
    }

    public static void asyncCopyFile(InputStream inputStream, String str, OnFileCopyListener onFileCopyListener) {
        FileCopyTask fileCopyTask = new FileCopyTask(inputStream, str);
        fileCopyTask.setOnFileCopyListener(onFileCopyListener);
        fileCopyTask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new String[0]);
    }

    public static String checkAssetsPhoto(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        AssetManager assets = context.getAssets();
        try {
            IOUtils.closeQuietly(assets.open(str));
            return str;
        } catch (IOException unused) {
            IOUtils.closeQuietly((InputStream) null);
            if (str.lastIndexOf(".") != -1) {
                String str2 = str.substring(0, str.lastIndexOf(46) + 1) + "webp";
                try {
                    IOUtils.closeQuietly(assets.open(str2));
                    return str2;
                } catch (IOException unused2) {
                    return null;
                } finally {
                }
            }
            String str3 = str + PIC_POSTFIX_JPEG;
            try {
                IOUtils.closeQuietly(assets.open(str3));
                return str3;
            } catch (IOException unused3) {
                IOUtils.closeQuietly((InputStream) null);
                String str4 = str + PIC_POSTFIX_WEBP;
                try {
                    IOUtils.closeQuietly(assets.open(str4));
                    return str4;
                } catch (IOException unused4) {
                    IOUtils.closeQuietly((InputStream) null);
                    String str5 = str + PIC_POSTFIX_PNG;
                    try {
                        IOUtils.closeQuietly(assets.open(str5));
                        return str5;
                    } catch (IOException unused5) {
                        return null;
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static String checkPhoto(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!new File(str).exists() && str.substring(str.lastIndexOf(RES_PREFIX_STORAGE)).lastIndexOf(".") == -1) {
            String str2 = str + PIC_POSTFIX_JPEG;
            if (new File(str2).exists()) {
                return str2;
            }
            String str3 = str + PIC_POSTFIX_PNG;
            if (new File(str3).exists()) {
                return str3;
            }
        }
        return str;
    }

    public static void clearDir(File file) {
        File[] listFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                clearDir(file2);
            } else {
                file2.delete();
            }
        }
        file.delete();
    }

    public static void clearDirs(File[] fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            clearDir(file);
        }
    }

    private static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean copyAssets(Context context, String str, String str2) {
        return copyAssets(context, str, str2, SIMPLE_ASSET_MD5_COMPARATOR);
    }

    public static void copyAssetsToSDCard(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                new File(str2 + File.separator + str).mkdirs();
                for (String str3 : list) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    String str4 = File.separator;
                    sb2.append(str4);
                    sb2.append(str3);
                    String sb3 = sb2.toString();
                    copyAssetsToSDCard(context, sb3, str2);
                    str = sb3.substring(0, sb3.lastIndexOf(str4));
                }
                return;
            }
            copyAssets(context, str, str2 + File.separator + str);
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static void copyDir(File file, String str) {
        if (file == null || !file.exists() || TextUtils.isEmpty(str)) {
            return;
        }
        File file2 = new File(str + File.separator + file.getName());
        if (file2.exists()) {
            delete(file2);
        }
        File parentFile = file2.getParentFile();
        if (parentFile.isFile()) {
            delete(parentFile);
        }
        if (parentFile.exists() || parentFile.mkdirs()) {
            if (file.isFile()) {
                copyFile(file, parentFile);
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file3 : listFiles) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    String str2 = File.separator;
                    sb2.append(str2);
                    sb2.append(file.getName());
                    sb2.append(str2);
                    sb2.append(file3.getName());
                    copyDir(file3, sb2.toString());
                }
            }
        }
    }

    public static boolean copyFile(String str, String str2) {
        return copyFile(str, str2, SIMPLE_FILE_COMPARATOR);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0063 -> B:31:0x0066). Please submit an issue!!! */
    public static void copyRawSafe(Context context, int i9, String str) {
        FileOutputStream fileOutputStream;
        Exception e10;
        File file;
        InputStream openRawResource = context.getResources().openRawResource(i9);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    try {
                        file = new File(str);
                        fileOutputStream = new FileOutputStream(str);
                    } catch (Throwable th2) {
                        FileOutputStream fileOutputStream3 = fileOutputStream2;
                        th = th2;
                        try {
                            openRawResource.close();
                            if (fileOutputStream3 != null) {
                                fileOutputStream3.flush();
                                fileOutputStream3.close();
                            }
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    while (true) {
                        e12.printStackTrace();
                        return;
                    }
                }
            } catch (Exception e13) {
                fileOutputStream = null;
                e10 = e13;
            } catch (OutOfMemoryError unused) {
            }
            try {
                byte[] byteArray = IOUtils.toByteArray(openRawResource);
                if (file.length() != byteArray.length) {
                    IOUtils.write(byteArray, fileOutputStream);
                    fileOutputStream.flush();
                }
                openRawResource.close();
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (Exception e14) {
                e10 = e14;
                e10.printStackTrace();
                openRawResource.close();
                if (fileOutputStream != null) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            } catch (OutOfMemoryError unused2) {
                fileOutputStream2 = fileOutputStream;
                try {
                    openRawResource.reset();
                    copyFile(openRawResource, fileOutputStream2);
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
                openRawResource.close();
                if (fileOutputStream2 != null) {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static File createFile(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            if (file.getParentFile() != null && !file.getParentFile().exists()) {
                if (file.getParentFile().mkdirs()) {
                    file.createNewFile();
                }
            } else {
                file.createNewFile();
            }
        }
        return file;
    }

    public static void delete(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        delete(new File(str));
    }

    public static void deleteAllFilesOfDir(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    deleteAllFilesOfDir(file2);
                }
            }
            file.delete();
        }
    }

    public static void deleteDir(String str) {
        deleteDirWihtFile(new File(str));
    }

    public static void deleteDirWihtFile(File file) {
        File[] listFiles;
        if (file != null && file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    file2.delete();
                } else if (file2.isDirectory()) {
                    deleteDirWihtFile(file2);
                }
            }
            file.delete();
        }
    }

    public static void deleteFiles(String str, final String str2) {
        File[] listFiles;
        if (TextUtils.isEmpty(str) || (listFiles = new File(str).listFiles(new FilenameFilter() { // from class: org.light.utils.FileUtils.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str3) {
                if (TextUtils.isEmpty(str2)) {
                    return true;
                }
                return str3.endsWith(str2);
            }
        })) == null) {
            return;
        }
        for (File file : listFiles) {
            file.delete();
        }
    }

    public static boolean exists(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.indexOf("assets") >= 0 || new File(str).exists();
    }

    public static String genSeperateFileDir(String str) {
        if (str != null) {
            String str2 = File.separator;
            if (str.endsWith(str2)) {
                return str;
            }
            return str + str2;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAssetLength(Context context, String str) {
        AssetFileDescriptor assetFileDescriptor;
        AssetManager assets = context.getAssets();
        AssetFileDescriptor assetFileDescriptor2 = null;
        r0 = null;
        InputStream inputStream = null;
        try {
            assetFileDescriptor = assets.openFd(str);
            try {
                long length = assetFileDescriptor.getLength();
                try {
                    assetFileDescriptor.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return length;
            } catch (IOException unused) {
                if (assetFileDescriptor != null) {
                    try {
                        assetFileDescriptor.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                }
                try {
                    inputStream = assets.open(str);
                    long available = inputStream.available();
                    closeSilently(inputStream);
                    return available;
                } catch (IOException unused2) {
                    closeSilently(inputStream);
                    return -1L;
                } catch (Throwable th2) {
                    closeSilently(inputStream);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                assetFileDescriptor2 = assetFileDescriptor;
                if (assetFileDescriptor2 != null) {
                    try {
                        assetFileDescriptor2.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException unused3) {
            assetFileDescriptor = null;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getAssetsMD5(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            r0 = 0
            if (r5 == 0) goto L99
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 != 0) goto L99
            if (r7 != 0) goto Ld
            goto L99
        Ld:
            android.content.res.AssetManager r5 = r5.getAssets()
            java.io.InputStream r5 = r5.open(r6)     // Catch: java.lang.Throwable -> L7c java.lang.Exception -> L7e
            int r6 = r5.available()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            if (r6 > 0) goto L24
            r5.close()     // Catch: java.lang.Exception -> L1f
            goto L23
        L1f:
            r5 = move-exception
            org.light.utils.LightLogUtil.e(r5)
        L23:
            return r0
        L24:
            java.lang.String r6 = "MD5"
            java.security.MessageDigest r6 = java.security.MessageDigest.getInstance(r6)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r1 = 4096(0x1000, float:5.74E-42)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
        L2e:
            int r2 = r5.read(r1)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r3 = 0
            if (r2 <= 0) goto L39
            r6.update(r1, r3, r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            goto L2e
        L39:
            byte[] r7 = r7.getBytes()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r6.update(r7)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r7.<init>()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            byte[] r6 = r6.digest()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            int r1 = r6.length     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
        L4a:
            if (r3 >= r1) goto L6a
            r2 = r6[r3]     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = 16
            if (r2 >= r4) goto L57
            java.lang.String r4 = "0"
            goto L59
        L57:
            java.lang.String r4 = ""
        L59:
            r7.append(r4)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            java.lang.String r2 = java.lang.Integer.toHexString(r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            java.lang.String r2 = r2.toLowerCase()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r7.append(r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            int r3 = r3 + 1
            goto L4a
        L6a:
            java.lang.String r6 = r7.toString()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L7a
            r5.close()     // Catch: java.lang.Exception -> L72
            goto L76
        L72:
            r5 = move-exception
            org.light.utils.LightLogUtil.e(r5)
        L76:
            return r6
        L77:
            r6 = move-exception
            r0 = r5
            goto L8e
        L7a:
            r6 = move-exception
            goto L80
        L7c:
            r6 = move-exception
            goto L8e
        L7e:
            r6 = move-exception
            r5 = r0
        L80:
            org.light.utils.LightLogUtil.e(r6)     // Catch: java.lang.Throwable -> L77
            if (r5 == 0) goto L8d
            r5.close()     // Catch: java.lang.Exception -> L89
            goto L8d
        L89:
            r5 = move-exception
            org.light.utils.LightLogUtil.e(r5)
        L8d:
            return r0
        L8e:
            if (r0 == 0) goto L98
            r0.close()     // Catch: java.lang.Exception -> L94
            goto L98
        L94:
            r5 = move-exception
            org.light.utils.LightLogUtil.e(r5)
        L98:
            throw r6
        L99:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.utils.FileUtils.getAssetsMD5(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getFileLength(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.length();
        }
        return -1L;
    }

    public static String getFileName(String str) {
        String str2;
        String str3 = TAG;
        LightLogUtil.v(str3, "[getFileName] path = " + str);
        if (!TextUtils.isEmpty(str)) {
            int lastIndexOf = str.lastIndexOf(".");
            int lastIndexOf2 = str.lastIndexOf(RES_PREFIX_STORAGE);
            if (lastIndexOf2 >= 0 && lastIndexOf > lastIndexOf2) {
                str2 = str.substring(lastIndexOf2 + 1, lastIndexOf);
                LightLogUtil.v(str3, "[getFileName] return title = " + str2);
                return str2;
            }
        }
        str2 = null;
        LightLogUtil.v(str3, "[getFileName] return title = " + str2);
        return str2;
    }

    public static String getFileNameFromUrl(String str) {
        int lastIndexOf;
        if (str == null || (lastIndexOf = str.lastIndexOf(RES_PREFIX_STORAGE)) == -1 || lastIndexOf == str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    public static String getFileNameWithSuffixByPath(String str) {
        String str2 = TAG;
        LightLogUtil.v(str2, "[getFileNameWithSuffixByPath] path = " + str);
        String substring = !TextUtils.isEmpty(str) ? str.substring(str.lastIndexOf(RES_PREFIX_STORAGE) + 1) : null;
        LightLogUtil.v(str2, "[getFileNameWithSuffixByPath] return title = " + substring);
        return substring;
    }

    public static String getFileSuffixFromUrl(String str) {
        int lastIndexOf;
        if (str == null || (lastIndexOf = str.lastIndexOf(".")) == -1 || lastIndexOf == str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    public static String getFinalVideoName() {
        return String.format("selfiee_%s.mp4", new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
    }

    public static long getFolderSize(File file) {
        long length;
        long j10 = 0;
        try {
            File[] listFiles = file.listFiles();
            for (int i9 = 0; i9 < listFiles.length; i9++) {
                if (listFiles[i9].isDirectory()) {
                    length = getFolderSize(listFiles[i9]);
                } else {
                    length = listFiles[i9].length();
                }
                j10 += length;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return j10;
    }

    public static String getMD5(String str, String str2) {
        int i9;
        if (new File(str).exists()) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(str);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                messageDigest.update(str2.getBytes());
                fileInputStream.close();
                StringBuilder sb2 = new StringBuilder();
                for (byte b10 : messageDigest.digest()) {
                    int i10 = b10 & UByte.MAX_VALUE;
                    sb2.append(i10 < 16 ? "0" : "");
                    sb2.append(Integer.toHexString(i10).toLowerCase());
                }
                return sb2.toString();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getPostfix(String str) {
        return str.substring(str.lastIndexOf("."));
    }

    public static String getRealDirPath(String str) {
        return getRealPath(str.substring(0, str.lastIndexOf(File.separator)));
    }

    public static String getRealPath(String str) {
        return (!TextUtils.isEmpty(str) && str.startsWith(RES_PREFIX_ASSETS)) ? str.substring(9) : str;
    }

    public static String getSHA1(String str) {
        int i9;
        if (new File(str).exists()) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                FileInputStream fileInputStream = new FileInputStream(str);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                fileInputStream.close();
                StringBuilder sb2 = new StringBuilder();
                for (byte b10 : messageDigest.digest()) {
                    int i10 = b10 & UByte.MAX_VALUE;
                    sb2.append(i10 < 16 ? "0" : "");
                    sb2.append(Integer.toHexString(i10).toLowerCase());
                }
                return sb2.toString();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String getWritableDir(String... strArr) {
        for (String str : strArr) {
            if (LightDeviceUtils.canWriteFile(str, false)) {
                return str;
            }
        }
        return "";
    }

    public static boolean hasFiles(String str) {
        if (exists(str)) {
            File file = new File(str);
            if (file.isDirectory()) {
                String[] list = file.list();
                return list != null && list.length > 0;
            }
            return true;
        }
        return false;
    }

    public static boolean isDirectoryWritable(String str) {
        File file = new File(str);
        if (!file.exists() || file.isDirectory()) {
            if (!file.exists()) {
                file.mkdirs();
            }
            if (file.isDirectory()) {
                try {
                    return file.canWrite();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return false;
        }
        return false;
    }

    public static boolean isFileExist(String str) {
        return new File(str).exists();
    }

    public static String load(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        if (str.startsWith(RES_PREFIX_ASSETS)) {
            return loadAssetsString(context, getRealPath(str) + File.separator + str2);
        }
        return loadSdCardFileString(str + File.separator + str2);
    }

    public static byte[] loadAssetsByteArray(Context context, String str) {
        byte[] bArr = null;
        try {
            InputStream open = context.getAssets().open(str);
            bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            return bArr;
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return bArr;
        }
    }

    public static String loadAssetsString(Context context, String str) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        IOException e10;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            inputStream = context.getAssets().open(str);
        } catch (IOException e11) {
            bufferedReader = null;
            e10 = e11;
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            while (true) {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb2.append(readLine);
                        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                    } catch (IOException e12) {
                        e10 = e12;
                        e10.printStackTrace();
                        IOUtils.closeQuietly(bufferedReader);
                        IOUtils.closeQuietly(inputStream);
                        return sb2.toString();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader2 = bufferedReader;
                    IOUtils.closeQuietly(bufferedReader2);
                    IOUtils.closeQuietly(inputStream);
                    throw th;
                }
            }
        } catch (IOException e13) {
            e10 = e13;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            IOUtils.closeQuietly(bufferedReader2);
            IOUtils.closeQuietly(inputStream);
            throw th;
        }
        IOUtils.closeQuietly(bufferedReader);
        IOUtils.closeQuietly(inputStream);
        return sb2.toString();
    }

    public static byte[] loadByteArray(Context context, String str) {
        InputStream fileInputStream;
        byte[] bArr = new byte[0];
        InputStream inputStream = null;
        try {
            try {
                if (str.startsWith(RES_PREFIX_ASSETS)) {
                    fileInputStream = context.getAssets().open(getRealPath(str));
                } else {
                    fileInputStream = new FileInputStream(str);
                }
                inputStream = fileInputStream;
                bArr = loadByteArray(inputStream);
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return bArr;
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }

    public static String loadRawResourceString(Context context, int i9) {
        InputStreamReader inputStreamReader = new InputStreamReader(context.getResources().openRawResource(i9));
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                    sb2.append('\n');
                } else {
                    IOUtils.closeQuietly(inputStreamReader);
                    IOUtils.closeQuietly(bufferedReader);
                    return sb2.toString();
                }
            } catch (IOException unused) {
                IOUtils.closeQuietly(inputStreamReader);
                IOUtils.closeQuietly(bufferedReader);
                return null;
            } catch (Throwable th2) {
                IOUtils.closeQuietly(inputStreamReader);
                IOUtils.closeQuietly(bufferedReader);
                throw th2;
            }
        }
    }

    public static String loadSdCardFileString(String str) {
        FileInputStream fileInputStream;
        IOException e10;
        BufferedReader bufferedReader;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, "UTF-8"));
                while (true) {
                    try {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(readLine);
                            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                        } catch (IOException e11) {
                            e10 = e11;
                            LightLogUtil.i(TAG, e10.getMessage());
                            IOUtils.closeQuietly(bufferedReader);
                            IOUtils.closeQuietly(fileInputStream);
                            return sb2.toString();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader2 = bufferedReader;
                        IOUtils.closeQuietly(bufferedReader2);
                        IOUtils.closeQuietly(fileInputStream);
                        throw th;
                    }
                }
            } catch (IOException e12) {
                e10 = e12;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                IOUtils.closeQuietly(bufferedReader2);
                IOUtils.closeQuietly(fileInputStream);
                throw th;
            }
        } catch (IOException e13) {
            fileInputStream = null;
            e10 = e13;
            bufferedReader = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
        IOUtils.closeQuietly(bufferedReader);
        IOUtils.closeQuietly(fileInputStream);
        return sb2.toString();
    }

    public static String md5ForBase64Data(String str) {
        char[] cArr = {'r', 'D', 'z', 'o', 'i', 'e', '5', 'e', '3', 'o', 'n', 'g', 'f', 'z', '1', 'l'};
        StringBuffer stringBuffer = new StringBuffer(str);
        for (int i9 = 0; i9 < 16; i9++) {
            stringBuffer.append(cArr[i9]);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(stringBuffer.toString().getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer2 = new StringBuffer();
            int length = digest.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer2.append(String.format("%02x", Integer.valueOf(digest[i10] & UByte.MAX_VALUE)));
            }
            return stringBuffer2.toString();
        } catch (NoSuchAlgorithmException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static void merge(List<String> list, File file) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[1024];
        for (String str : list) {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                }
            }
            fileOutputStream.flush();
            fileInputStream.close();
        }
        fileOutputStream.close();
    }

    public static boolean move(File file, String str) {
        return file.renameTo(new File(new File(str), file.getName()));
    }

    public static void moveDir(File file, String str) {
        if (file == null || !file.exists() || TextUtils.isEmpty(str)) {
            return;
        }
        File file2 = new File(str);
        if (file2.exists()) {
            delete(file2);
        }
        File parentFile = file2.getParentFile();
        if (parentFile.isFile()) {
            delete(parentFile);
        }
        if (parentFile.exists() || parentFile.mkdirs()) {
            if (file.isFile()) {
                file.renameTo(file2);
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file3 : listFiles) {
                    moveDir(file3, str + File.separator + file3.getName());
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.io.OutputStream, java.io.BufferedOutputStream] */
    private static boolean performCopyAssetsFile(Context context, String str, String str2, AssetFileComparator assetFileComparator) {
        Closeable closeable;
        File parentFile;
        boolean z10 = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            AssetManager assets = context.getAssets();
            File file = new File(str2);
            InputStream inputStream = null;
            try {
                if (file.exists()) {
                    if (assetFileComparator != null && assetFileComparator.equals(context, str, file)) {
                        LightLogUtil.i(TAG, "comparator != null && comparator.equals(context, assetPath, dstFile)");
                        closeSilently(null);
                        closeSilently(null);
                        return true;
                    } else if (file.isDirectory()) {
                        delete(file);
                    }
                }
                parentFile = file.getParentFile();
                if (parentFile.isFile()) {
                    delete(parentFile);
                }
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
            }
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                LightLogUtil.e(TAG, "!parent.exists() && !parent.mkdirs(), parent dir = " + parentFile.getAbsolutePath());
                closeSilently(null);
                closeSilently(null);
                return false;
            }
            InputStream open = assets.open(str);
            try {
                if (open.available() > 0) {
                    ?? bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = open.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        inputStream = bufferedOutputStream;
                        z10 = true;
                    } catch (Throwable th3) {
                        inputStream = open;
                        th = th3;
                        closeable = bufferedOutputStream;
                        try {
                            LightLogUtil.e(TAG, String.format("performCopyAssetsFile exception catched, info = %s", th.toString()));
                            delete(file);
                            return z10;
                        } finally {
                            closeSilently(inputStream);
                            closeSilently(closeable);
                        }
                    }
                }
                closeSilently(open);
                closeSilently(inputStream);
            } catch (Throwable th4) {
                inputStream = open;
                th = th4;
                closeable = null;
            }
            return z10;
        }
        LightLogUtil.e(TAG, "TextUtils.isEmpty(assetPath) || TextUtils.isEmpty(dstPath)");
        return false;
    }

    public static byte[] readBytes(InputStream inputStream, int i9) {
        byte[] bArr = new byte[i9];
        int i10 = 0;
        while (i10 < i9) {
            try {
                int read = inputStream.read(bArr, i10, i9 - i10);
                if (read == -1) {
                    break;
                }
                i10 += read;
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0090 A[Catch: IOException -> 0x008c, TRY_LEAVE, TryCatch #8 {IOException -> 0x008c, blocks: (B:42:0x0088, B:46:0x0090), top: B:56:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0088 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.light.utils.ByteArrayPool] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] readFile(java.lang.String r7) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.io.File r0 = new java.io.File
            r0.<init>(r7)
            boolean r7 = r0.exists()
            if (r7 != 0) goto L14
            return r1
        L14:
            long r2 = r0.length()     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L73
            int r7 = (int) r2     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L73
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L73
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L70 java.lang.Exception -> L73
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6d
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L6d
            r0 = 0
            r4 = 4096(0x1000, float:5.74E-42)
            if (r7 >= r4) goto L31
            org.light.utils.ByteArrayPool r5 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Exception -> L3d java.lang.OutOfMemoryError -> L3f java.lang.Throwable -> L84
            byte[] r4 = r5.getBuf(r4)     // Catch: java.lang.Exception -> L3d java.lang.OutOfMemoryError -> L3f java.lang.Throwable -> L84
            goto L3b
        L31:
            org.light.utils.ByteArrayPool r5 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Exception -> L3d java.lang.OutOfMemoryError -> L3f java.lang.Throwable -> L84
            r6 = 12288(0x3000, float:1.7219E-41)
            byte[] r4 = r5.getBuf(r6)     // Catch: java.lang.Exception -> L3d java.lang.OutOfMemoryError -> L3f java.lang.Throwable -> L84
        L3b:
            r5 = 0
            goto L48
        L3d:
            r7 = move-exception
            goto L76
        L3f:
            org.light.utils.ByteArrayPool r5 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            byte[] r4 = r5.getBuf(r4)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            goto L3b
        L48:
            if (r5 >= r7) goto L53
            int r6 = r3.read(r4)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            r2.write(r4, r0, r6)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            int r5 = r5 + r6
            goto L48
        L53:
            org.light.utils.ByteArrayPool r7 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            r7.returnBuf(r4)     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            byte[] r1 = r2.toByteArray()     // Catch: java.lang.Exception -> L3d java.lang.Throwable -> L84
            r2.close()     // Catch: java.io.IOException -> L65
            r3.close()     // Catch: java.io.IOException -> L65
            goto L83
        L65:
            r7 = move-exception
            org.light.utils.LightLogUtil.e(r7)
            goto L83
        L6a:
            r7 = move-exception
            r3 = r1
            goto L85
        L6d:
            r7 = move-exception
            r3 = r1
            goto L76
        L70:
            r7 = move-exception
            r3 = r1
            goto L86
        L73:
            r7 = move-exception
            r2 = r1
            r3 = r2
        L76:
            org.light.utils.LightLogUtil.e(r7)     // Catch: java.lang.Throwable -> L84
            if (r2 == 0) goto L7e
            r2.close()     // Catch: java.io.IOException -> L65
        L7e:
            if (r3 == 0) goto L83
            r3.close()     // Catch: java.io.IOException -> L65
        L83:
            return r1
        L84:
            r7 = move-exception
        L85:
            r1 = r2
        L86:
            if (r1 == 0) goto L8e
            r1.close()     // Catch: java.io.IOException -> L8c
            goto L8e
        L8c:
            r0 = move-exception
            goto L94
        L8e:
            if (r3 == 0) goto L97
            r3.close()     // Catch: java.io.IOException -> L8c
            goto L97
        L94:
            org.light.utils.LightLogUtil.e(r0)
        L97:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.utils.FileUtils.readFile(java.lang.String):byte[]");
    }

    public static String readTextFileFromRaw(Context context, int i9) {
        InputStream openRawResource = context.getResources().openRawResource(i9);
        InputStreamReader inputStreamReader = new InputStreamReader(openRawResource);
        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                    sb2.append('\n');
                } else {
                    IOUtils.closeQuietly(openRawResource);
                    IOUtils.closeQuietly(inputStreamReader);
                    IOUtils.closeQuietly(bufferedReader);
                    return sb2.toString();
                }
            } catch (IOException unused) {
                IOUtils.closeQuietly(openRawResource);
                IOUtils.closeQuietly(inputStreamReader);
                IOUtils.closeQuietly(bufferedReader);
                return null;
            } catch (Throwable th2) {
                IOUtils.closeQuietly(openRawResource);
                IOUtils.closeQuietly(inputStreamReader);
                IOUtils.closeQuietly(bufferedReader);
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x00b0 -> B:82:0x00b3). Please submit an issue!!! */
    public static String readTxtFile(Context context, String str) {
        BufferedReader bufferedReader;
        IOException e10;
        BufferedReader bufferedReader2 = 0;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            try {
                try {
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader2 = str;
            }
        } catch (IOException e12) {
            e12.printStackTrace();
        }
        if (str.startsWith(RES_PREFIX_ASSETS)) {
            try {
                context = context.getAssets().open(str.substring(9));
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(context));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                sb2.append(readLine);
                            } else {
                                try {
                                    break;
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                        } catch (IOException e14) {
                            e10 = e14;
                            e10.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e15) {
                                    e15.printStackTrace();
                                }
                            }
                            if (context != 0) {
                                context.close();
                            }
                            return sb2.toString();
                        }
                    }
                    bufferedReader.close();
                } catch (IOException e16) {
                    e10 = e16;
                    bufferedReader = null;
                } catch (Throwable th4) {
                    th = th4;
                    if (bufferedReader2 != 0) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e17) {
                            e17.printStackTrace();
                        }
                    }
                    if (context != 0) {
                        try {
                            context.close();
                        } catch (IOException e18) {
                            e18.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e19) {
                bufferedReader = null;
                e10 = e19;
                context = 0;
            } catch (Throwable th5) {
                th = th5;
                context = 0;
            }
            if (context != 0) {
                context.close();
            }
            return sb2.toString();
        }
        try {
            BufferedReader bufferedReader3 = new BufferedReader(new FileReader(str));
            while (true) {
                try {
                    String readLine2 = bufferedReader3.readLine();
                    if (readLine2 == null) {
                        break;
                    }
                    sb2.append(readLine2);
                } catch (IOException e20) {
                    e = e20;
                    bufferedReader2 = bufferedReader3;
                    e.printStackTrace();
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    return sb2.toString();
                } catch (Throwable th6) {
                    th = th6;
                    bufferedReader2 = bufferedReader3;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e21) {
                            e21.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            bufferedReader3.close();
        } catch (IOException e22) {
            e = e22;
        }
        return sb2.toString();
    }

    public static void save(File file, String str) {
        BufferedWriter bufferedWriter;
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream2, "UTF-8"));
                try {
                    bufferedWriter.write(str);
                    IOUtils.closeQuietly(fileOutputStream2);
                } catch (Exception e10) {
                    e = e10;
                    fileOutputStream = fileOutputStream2;
                    try {
                        LightLogUtil.e(e);
                        IOUtils.closeQuietly(fileOutputStream);
                        IOUtils.closeQuietly(bufferedWriter);
                    } catch (Throwable th2) {
                        th = th2;
                        IOUtils.closeQuietly(fileOutputStream);
                        IOUtils.closeQuietly(bufferedWriter);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = fileOutputStream2;
                    IOUtils.closeQuietly(fileOutputStream);
                    IOUtils.closeQuietly(bufferedWriter);
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
                bufferedWriter = null;
            } catch (Throwable th4) {
                th = th4;
                bufferedWriter = null;
            }
        } catch (Exception e12) {
            e = e12;
            bufferedWriter = null;
        } catch (Throwable th5) {
            th = th5;
            bufferedWriter = null;
        }
        IOUtils.closeQuietly(bufferedWriter);
    }

    public static void saveFile(String str, String str2) {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(str));
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedWriter.write(str2);
            IOUtils.closeQuietly(bufferedWriter);
        } catch (IOException e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            LightLogUtil.e(e);
            IOUtils.closeQuietly(bufferedWriter2);
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            IOUtils.closeQuietly(bufferedWriter2);
            throw th;
        }
    }

    public static String toBase64(String str) {
        String str2 = null;
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 2);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read >= 0) {
                    base64OutputStream.write(bArr, 0, read);
                } else {
                    base64OutputStream.flush();
                    base64OutputStream.close();
                    String str3 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                    try {
                        byteArrayOutputStream.close();
                        fileInputStream.close();
                        return str3;
                    } catch (Exception unused) {
                        str2 = str3;
                        return str2;
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static boolean copyAssets(Context context, String str, String str2, AssetFileComparator assetFileComparator) {
        return performCopyAssetsFile(context, str, str2, assetFileComparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10, types: [java.io.OutputStream, java.io.BufferedOutputStream] */
    private static boolean copyFile(String str, String str2, FileComparator fileComparator) {
        Closeable closeable;
        File parentFile;
        FileInputStream fileInputStream;
        boolean z10 = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str2);
            FileInputStream fileInputStream2 = null;
            try {
                if (file.exists()) {
                    if (fileComparator != null && fileComparator.equals(str, file)) {
                        LightLogUtil.i(TAG, "comparator != null && comparator.equals(context, assetPath, dstFile)");
                        closeSilently(null);
                        closeSilently(null);
                        return true;
                    } else if (file.isDirectory()) {
                        delete(file);
                    }
                }
                parentFile = file.getParentFile();
                if (parentFile.isFile()) {
                    delete(parentFile);
                }
            } catch (Throwable th2) {
                th = th2;
                closeable = null;
            }
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                LightLogUtil.e(TAG, "!parent.exists() && !parent.mkdirs(), parent dir = " + parentFile.getAbsolutePath());
                closeSilently(null);
                closeSilently(null);
                return false;
            }
            FileInputStream fileInputStream3 = new FileInputStream(str);
            try {
                if (fileInputStream3.available() > 0) {
                    ?? bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream3.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            bufferedOutputStream.write(bArr, 0, read);
                        }
                        z10 = true;
                        fileInputStream2 = bufferedOutputStream;
                    } catch (Throwable th3) {
                        fileInputStream = fileInputStream3;
                        closeable = bufferedOutputStream;
                        th = th3;
                        fileInputStream2 = fileInputStream;
                        try {
                            LightLogUtil.e(TAG, String.format("performCopyFile exception catched, info = %s", th.toString()));
                            delete(file);
                            return z10;
                        } finally {
                            closeSilently(fileInputStream2);
                            closeSilently(closeable);
                        }
                    }
                }
                closeSilently(fileInputStream3);
                closeSilently(fileInputStream2);
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = fileInputStream3;
                closeable = null;
            }
            return z10;
        }
        LightLogUtil.e(TAG, "TextUtils.isEmpty(assetPath) || TextUtils.isEmpty(dstPath)");
        return false;
    }

    public static void delete(@Nullable File file) {
        if (file == null) {
            return;
        }
        if (file.isFile()) {
            file.delete();
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    delete(file2);
                }
                file.delete();
                return;
            }
            file.delete();
        }
    }

    public static String load(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.startsWith(RES_PREFIX_ASSETS)) {
            return loadAssetsString(context, getRealPath(str));
        }
        return loadSdCardFileString(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    public static byte[] loadByteArray(InputStream inputStream) {
        int read;
        byte[] bArr = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                byte[] bArr2 = new byte[1024];
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                while (true) {
                    try {
                        read = inputStream.read(bArr2);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream3.write(bArr2, 0, read);
                    } catch (IOException e10) {
                        e = e10;
                        byteArrayOutputStream2 = byteArrayOutputStream3;
                        e.printStackTrace();
                        IOUtils.closeQuietly(byteArrayOutputStream2);
                        byteArrayOutputStream = byteArrayOutputStream2;
                        return bArr;
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream3;
                        IOUtils.closeQuietly(byteArrayOutputStream);
                        throw th;
                    }
                }
                byteArrayOutputStream3.flush();
                bArr = byteArrayOutputStream3.toByteArray();
                IOUtils.closeQuietly(byteArrayOutputStream3);
                byteArrayOutputStream = read;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e11) {
            e = e11;
        }
        return bArr;
    }

    public static void delete(File file, boolean z10) {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            file.delete();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            delete(file2, z10);
        }
        if (z10) {
            return;
        }
        file.delete();
    }

    public static boolean copyFile(InputStream inputStream, OutputStream outputStream) {
        if (inputStream == null || outputStream == null) {
            return false;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read > 0) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.flush();
                    return true;
                }
            }
        } catch (Exception e10) {
            LightLogUtil.e(e10);
            return true;
        }
    }

    public static boolean copyFile(InputStream inputStream, String str) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        fileOutputStream2.write(bArr, 0, read);
                    } else {
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly(fileOutputStream2);
                        return true;
                    }
                }
            } catch (Exception unused) {
                fileOutputStream = fileOutputStream2;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly(fileOutputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0064, code lost:
        if (r5 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x006f, code lost:
        if (r5 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean copyFile(java.io.File r4, java.io.File r5) {
        /*
            r0 = 0
            r1 = 0
            boolean r2 = r5.exists()     // Catch: java.lang.Throwable -> L4d java.lang.OutOfMemoryError -> L5c java.io.IOException -> L67
            if (r2 == 0) goto Lb
            r5.delete()     // Catch: java.lang.Throwable -> L4d java.lang.OutOfMemoryError -> L5c java.io.IOException -> L67
        Lb:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4d java.lang.OutOfMemoryError -> L5c java.io.IOException -> L67
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L4d java.lang.OutOfMemoryError -> L5c java.io.IOException -> L67
            java.io.BufferedInputStream r5 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L43 java.lang.OutOfMemoryError -> L47 java.io.IOException -> L4a
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L43 java.lang.OutOfMemoryError -> L47 java.io.IOException -> L4a
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L43 java.lang.OutOfMemoryError -> L47 java.io.IOException -> L4a
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L43 java.lang.OutOfMemoryError -> L47 java.io.IOException -> L4a
            org.light.utils.ByteArrayPool r4 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            r1 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = r4.getBuf(r1)     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
        L24:
            int r1 = r5.read(r4)     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            r3 = -1
            if (r1 == r3) goto L32
            r2.write(r4, r0, r1)     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            r2.flush()     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            goto L24
        L32:
            org.light.utils.ByteArrayPool r1 = org.light.utils.ByteArrayPool.getGenericInstance()     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            r1.returnBuf(r4)     // Catch: java.lang.Throwable -> L41 java.lang.OutOfMemoryError -> L48 java.io.IOException -> L4b
            r0 = 1
            r2.close()     // Catch: java.io.IOException -> L3d
        L3d:
            r5.close()     // Catch: java.io.IOException -> L72
            goto L72
        L41:
            r4 = move-exception
            goto L45
        L43:
            r4 = move-exception
            r5 = r1
        L45:
            r1 = r2
            goto L4f
        L47:
            r5 = r1
        L48:
            r1 = r2
            goto L5d
        L4a:
            r5 = r1
        L4b:
            r1 = r2
            goto L68
        L4d:
            r4 = move-exception
            r5 = r1
        L4f:
            if (r1 == 0) goto L56
            r1.close()     // Catch: java.io.IOException -> L55
            goto L56
        L55:
        L56:
            if (r5 == 0) goto L5b
            r5.close()     // Catch: java.io.IOException -> L5b
        L5b:
            throw r4
        L5c:
            r5 = r1
        L5d:
            if (r1 == 0) goto L64
            r1.close()     // Catch: java.io.IOException -> L63
            goto L64
        L63:
        L64:
            if (r5 == 0) goto L72
            goto L3d
        L67:
            r5 = r1
        L68:
            if (r1 == 0) goto L6f
            r1.close()     // Catch: java.io.IOException -> L6e
            goto L6f
        L6e:
        L6f:
            if (r5 == 0) goto L72
            goto L3d
        L72:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.light.utils.FileUtils.copyFile(java.io.File, java.io.File):boolean");
    }
}
