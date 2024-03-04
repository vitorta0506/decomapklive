package com.guochao.faceshow.aaspring.utils;

import android.os.Environment;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.Contants;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class AutoCleanManager {
    private static final long CLEAN_INTERVAL = 60000;
    private static final long TIME = 1200000;
    private static boolean sCleaning = false;
    private static long sCurrentTime;
    private static long sLastCleanTime;

    private static List<File> cacheFileList() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new File(baseApplication.getCacheDir(), "ugc_video"));
        arrayList.add(new File(baseApplication.getCacheDir(), "short_videos"));
        arrayList.add(new File(FilePathProvider.getApplicationCacheDir() + "/UnityAdsCache/"));
        arrayList.add(new File(FilePathProvider.getGlideCacheDirV2(BaseApplication.getInstance())));
        arrayList.add(new File(FilePathProvider.getApplicationCacheDir() + FilePathProvider.DEFAULT_MEDIA_PACK_FOLDER));
        arrayList.add(new File(FilePathProvider.getApplicationCacheDir() + "/TXUGC/"));
        if (ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            arrayList.add(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + FilePathProvider.DEFAULT_MEDIA_PACK_FOLDER));
        }
        return arrayList;
    }

    public static void cleanIfNeeded() {
        if (!sCleaning && System.currentTimeMillis() - sLastCleanTime >= 60000) {
            io.reactivex.k.just(1).map(new vh.o<Integer, Integer>() { // from class: com.guochao.faceshow.aaspring.utils.AutoCleanManager.2
                @Override // vh.o
                public Integer apply(Integer num) throws Exception {
                    boolean unused = AutoCleanManager.sCleaning = true;
                    long unused2 = AutoCleanManager.sCurrentTime = System.currentTimeMillis();
                    AutoCleanManager.clearCache();
                    long unused3 = AutoCleanManager.sLastCleanTime = System.currentTimeMillis();
                    return 1;
                }
            }).subscribeOn(di.a.b()).observeOn(di.a.b()).subscribe(new SimpleObserver<Integer>() { // from class: com.guochao.faceshow.aaspring.utils.AutoCleanManager.1
                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onNext(Integer num) {
                    boolean unused = AutoCleanManager.sCleaning = false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearCache() {
        List<File> cacheFileList = cacheFileList();
        for (int i9 = 0; i9 < cacheFileList.size(); i9++) {
            deleteDir(cacheFileList.get(i9));
        }
        deleteIMDir(new File(FilePathProvider.getIMRootPath(), SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID)));
    }

    public static void deleteDir(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str : list) {
                deleteDir(new File(file, str));
            }
        }
        if (file != null) {
            if (sCurrentTime - file.lastModified() > TIME) {
                file.delete();
            }
        }
    }

    public static void deleteIMDir(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str : list) {
                if (!file.getAbsolutePath().contains("translate")) {
                    deleteIMDir(new File(file, str));
                }
            }
        }
        if (file == null || file.isDirectory()) {
            return;
        }
        if (sCurrentTime - file.lastModified() > TIME) {
            file.delete();
        }
    }
}
