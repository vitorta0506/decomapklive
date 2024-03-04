package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.guochao.faceshow.context.GCApplication;
import java.io.File;
import java.io.IOException;
/* loaded from: classes3.dex */
public class FilePathProvider {
    public static final String DEFAULT_MEDIA_PACK_FOLDER = "/txrtmp/";
    public static final String DOWNLOADABLE_DIR = "/downloaded_resource/";
    public static final String PRIVATE_DELECT_LOG = "/Log/";
    public static final String PRIVATE_DELECT_LOG_NEW = "Log";
    public static final String PRIVATE_FACE_SHOW_NEW = "FaceShow";
    public static final String PRIVATE_LOG = "/Logs/";
    public static final String PRIVATE_LOG_NEW = "Logs";
    public static final String PRIVATE_NX_SHOW = "/NXShow/";
    public static final String PRIVATE_NX_SHOW_NEW = "NXShow";
    public static final String TX_UGC = "/txugc/";

    private static boolean deleteDir(File file, String str) {
        boolean z10 = !TextUtils.isEmpty(str);
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return true;
            }
            for (String str2 : list) {
                if (!deleteDir(new File(file, str2), str)) {
                    return false;
                }
            }
        }
        if (file != null) {
            if (z10) {
                if (file.getAbsolutePath().toLowerCase().endsWith(str.toLowerCase())) {
                    return file.delete();
                }
                return true;
            }
            return file.delete();
        }
        return false;
    }

    public static void deleteLogsPath() {
        File externalFilesDir = GCApplication.app().getExternalFilesDir(PRIVATE_DELECT_LOG);
        if (externalFilesDir == null) {
            externalFilesDir = GCApplication.app().getDir(PRIVATE_DELECT_LOG_NEW, 0);
        }
        if (externalFilesDir == null || !externalFilesDir.exists()) {
            return;
        }
        deleteDir(externalFilesDir);
    }

    public static String getApkPath() {
        String str = getPrivateRootPathV2() + File.separator + "APK";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        makeFileNoMedia(file);
        return str;
    }

    public static String getApplicationCacheDir() {
        File externalCacheDir = GCApplication.app().getExternalCacheDir();
        if (externalCacheDir == null) {
            externalCacheDir = GCApplication.app().getCacheDir();
        }
        return externalCacheDir.getAbsolutePath();
    }

    public static String getCachePath() {
        File externalCacheDir = GCApplication.app().getExternalCacheDir();
        if (externalCacheDir == null) {
            externalCacheDir = GCApplication.app().getCacheDir();
        }
        if (!externalCacheDir.exists()) {
            externalCacheDir.mkdirs();
        }
        return externalCacheDir.getAbsolutePath();
    }

    public static String getCameraPath() {
        String absolutePath = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath();
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(absolutePath);
        String str = File.separator;
        sb2.append(str);
        sb2.append("Camera");
        sb2.append(str);
        String sb3 = sb2.toString();
        File file2 = new File(sb3);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        return sb3;
    }

    public static String getCardVideoThumbDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            externalCacheDir = new File(externalCacheDir, "shortVideoImg");
        }
        if (externalCacheDir == null) {
            externalCacheDir = new File(context.getCacheDir(), "shortVideoImg");
        }
        if (!externalCacheDir.exists()) {
            externalCacheDir.mkdirs();
        }
        return externalCacheDir.getAbsolutePath();
    }

    public static String getDownloadableResourceDir() {
        File file = new File(GCApplication.app().getFilesDir(), DOWNLOADABLE_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static String getEditVideoClipDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            externalCacheDir = new File(externalCacheDir, "video_edit/editVideoClip");
        }
        if (externalCacheDir == null) {
            externalCacheDir = new File(context.getCacheDir(), "video_edit/editVideoClip");
        }
        if (!externalCacheDir.exists()) {
            externalCacheDir.mkdirs();
        }
        return externalCacheDir.getAbsolutePath();
    }

    public static String getGifCacheDir(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            externalCacheDir = new File(externalCacheDir, "gif");
        }
        if (externalCacheDir == null) {
            externalCacheDir = new File(context.getCacheDir(), "gif");
        }
        if (!externalCacheDir.exists()) {
            externalCacheDir.mkdirs();
        }
        return externalCacheDir.getAbsolutePath();
    }

    @Deprecated
    public static String getGlideCacheDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir("Glide_cache");
        if (externalFilesDir == null) {
            externalFilesDir = new File(context.getFilesDir(), "Glide_cache");
        }
        return externalFilesDir.getAbsolutePath();
    }

    public static String getGlideCacheDirV2(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir != null) {
            externalCacheDir = new File(externalCacheDir, "Glide_cache");
        }
        if (externalCacheDir == null) {
            externalCacheDir = new File(context.getCacheDir(), "Glide_cache");
        }
        return externalCacheDir.getAbsolutePath();
    }

    public static String getIMResourcePath(String str) {
        String iMRootPath = getIMRootPath();
        File file = new File(iMRootPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(iMRootPath, str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        makeFileNoMedia(file2);
        return file2.getAbsolutePath();
    }

    public static String getIMRootPath() {
        return getPrivateRootPathV2("im_files");
    }

    @Deprecated
    public static String getLogsPath() {
        File externalFilesDir = GCApplication.app().getExternalFilesDir(PRIVATE_LOG);
        if (externalFilesDir == null) {
            externalFilesDir = GCApplication.app().getDir(PRIVATE_LOG_NEW, 0);
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        makeFileNoMedia(externalFilesDir);
        return externalFilesDir.getPath();
    }

    public static String getLogsPathV2() {
        File file;
        File externalCacheDir = GCApplication.app().getExternalCacheDir();
        if (externalCacheDir == null) {
            file = new File(GCApplication.app().getCacheDir(), PRIVATE_LOG_NEW);
        } else {
            file = new File(externalCacheDir, PRIVATE_LOG_NEW);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        makeFileNoMedia(file);
        return file.getPath();
    }

    @Deprecated
    public static String getMMKVDir(Context context) {
        File file = new File(context.getCacheDir(), "mmkv");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static String getMMKVDirV2(Context context) {
        File file = new File(context.getFilesDir(), "mmkv");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static String getMusicPath(String str) {
        String str2 = getPrivateRootPathV2() + File.separator + str;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str2;
    }

    @Deprecated
    public static String getNXPath() {
        File externalFilesDir = GCApplication.app().getExternalFilesDir(PRIVATE_NX_SHOW);
        if (externalFilesDir == null) {
            externalFilesDir = GCApplication.app().getDir(PRIVATE_NX_SHOW_NEW, 0);
        }
        return externalFilesDir.getPath();
    }

    public static String getNXPathV2() {
        File file;
        if (GCApplication.app().getExternalCacheDir() == null) {
            file = new File(GCApplication.app().getCacheDir(), PRIVATE_NX_SHOW_NEW);
        } else {
            file = new File(GCApplication.app().getExternalCacheDir(), PRIVATE_NX_SHOW_NEW);
        }
        return file.getPath();
    }

    public static String getNXShowPath(String str) {
        String str2 = getNXPathV2() + File.separator + str;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        makeFileNoMedia(file);
        return str2;
    }

    public static String getOldApplicationCacheDir() {
        File filesDir;
        if (GCApplication.app().getExternalFilesDir(null) != null) {
            filesDir = GCApplication.app().getExternalFilesDir(null);
        } else {
            filesDir = GCApplication.app().getFilesDir();
        }
        if (filesDir != null) {
            return filesDir.getAbsolutePath();
        }
        return null;
    }

    public static String getPathPhoto(String str) {
        return getPhotoPath() + File.separator + str;
    }

    public static String getPhotoPath() {
        return getCameraPath();
    }

    @Deprecated
    public static String getPrivateRootPath() {
        File externalFilesDir = GCApplication.app().getExternalFilesDir(PRIVATE_FACE_SHOW_NEW);
        if (externalFilesDir == null) {
            externalFilesDir = GCApplication.app().getDir(PRIVATE_FACE_SHOW_NEW, 0);
        }
        return externalFilesDir.getAbsolutePath();
    }

    public static String getPrivateRootPathV2() {
        File file;
        File externalCacheDir = GCApplication.app().getExternalCacheDir();
        if (externalCacheDir == null) {
            file = new File(GCApplication.app().getCacheDir(), PRIVATE_FACE_SHOW_NEW);
        } else {
            file = new File(externalCacheDir, PRIVATE_FACE_SHOW_NEW);
        }
        return file.getAbsolutePath();
    }

    public static File getTxrtmpPath() {
        File file = new File(getPrivateRootPathV2(DEFAULT_MEDIA_PACK_FOLDER));
        if (!file.exists()) {
            file.mkdirs();
        }
        makeFileNoMedia(file);
        return file;
    }

    public static File getTxugcPath() {
        File file = new File(getPrivateRootPathV2(TX_UGC));
        if (!file.exists()) {
            file.mkdirs();
        }
        makeFileNoMedia(file);
        return file;
    }

    public static String getUgcRootPath() {
        return getPrivateRootPathV2("ugc_files");
    }

    public static void makeFileNoMedia(File file) {
        File file2 = new File(file, ".nomedia");
        if (file2.exists()) {
            return;
        }
        try {
            file2.createNewFile();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public static String getPrivateRootPathV2(String str) {
        File file = new File(getPrivateRootPathV2(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static String getCachePath(String str) {
        File file = new File(getCachePath(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static boolean deleteDir(File file) {
        return deleteDir(file, null);
    }
}
