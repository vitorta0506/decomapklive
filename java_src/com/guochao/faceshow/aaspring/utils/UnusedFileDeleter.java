package com.guochao.faceshow.aaspring.utils;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.DataCleanManager;
import java.io.File;
import java.io.IOException;
/* loaded from: classes3.dex */
public class UnusedFileDeleter {
    private static final String TAG = "UnusedFileDeleter";

    public static void delete() {
        io.reactivex.k.just(1).map(new vh.o<Integer, Integer>() { // from class: com.guochao.faceshow.aaspring.utils.UnusedFileDeleter.1
            @Override // vh.o
            public Integer apply(Integer num) throws Exception {
                try {
                    FilePathProvider.deleteLogsPath();
                    TXLogsManager.deleteLogs(FilePathProvider.getLogsPathV2());
                    DataCleanManager.clearAllTencentLogs(BaseApplication.getInstance());
                } catch (Exception e10) {
                    LogUtils.e(UnusedFileDeleter.TAG, "error when deleting Tencent logs", e10);
                }
                try {
                    DataCleanManager.deleteDir(new File(FilePathProvider.getGlideCacheDir(BaseApplication.getInstance())));
                    DataCleanManager.deleteDir(new File(FilePathProvider.getLogsPath()));
                    DataCleanManager.deleteDir(new File(FilePathProvider.getNXShowPath("gift_mp4_v2")));
                } catch (Exception e11) {
                    LogUtils.e(UnusedFileDeleter.TAG, "error when deleting old Glide caches", e11);
                }
                UnusedFileDeleter.moveFaceShowFile();
                DataCleanManager.deleteDir(new File(FilePathProvider.getNXPath()));
                DataCleanManager.deleteDir(new File(FilePathProvider.getNXPathV2(), "gift"));
                return 1;
            }
        }).subscribeOn(di.a.b()).subscribe();
    }

    private static void moveDirs(File file, File file2) {
        if (file.exists()) {
            try {
                try {
                    ni.a.n(file, file2.getParentFile(), true);
                } catch (IOException e10) {
                    LogUtils.e(TAG, String.format("error when moving directory \r\nold directory is %s\r\n new directory is %s", file.getAbsoluteFile(), file2.getAbsoluteFile()), e10);
                }
            } finally {
                DataCleanManager.deleteDir(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void moveFaceShowFile() {
        moveDirs(new File(FilePathProvider.getOldApplicationCacheDir() + org.light.utils.FileUtils.RES_PREFIX_STORAGE + FilePathProvider.PRIVATE_FACE_SHOW_NEW + org.light.utils.FileUtils.RES_PREFIX_STORAGE), new File(FilePathProvider.getPrivateRootPathV2()));
    }
}
