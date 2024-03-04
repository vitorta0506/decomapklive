package com.guochao.faceshow.utils;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.tencent.imsdk.v2.V2TIMConversation;
import io.reactivex.k;
import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.light.utils.FileUtils;
import vh.o;
/* loaded from: classes4.dex */
public class DataCleanManager {

    /* loaded from: classes4.dex */
    public interface ClearCallBack {
        void onSucceed();
    }

    static /* synthetic */ List access$100() {
        return getAllCacheFileList();
    }

    public static void clearAllCache(final ClearCallBack clearCallBack) {
        k.just(1).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new o<Integer, Integer>() { // from class: com.guochao.faceshow.utils.DataCleanManager.4
            @Override // vh.o
            public Integer apply(Integer num) throws Exception {
                List access$100 = DataCleanManager.access$100();
                for (int i9 = 0; i9 < access$100.size(); i9++) {
                    DataCleanManager.deleteDir((File) access$100.get(i9));
                }
                return 1;
            }
        }).subscribe(new SimpleObserver<Integer>() { // from class: com.guochao.faceshow.utils.DataCleanManager.3
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(Integer num) {
                super.onNext((AnonymousClass3) num);
                ClearCallBack.this.onSucceed();
            }
        });
    }

    public static void clearAllTencentLogs(Context context) {
        File[] listFiles;
        File externalFilesDir = context.getExternalFilesDir("log");
        if (externalFilesDir == null || (listFiles = externalFilesDir.listFiles()) == null || listFiles.length == 0) {
            return;
        }
        deleteFiles(externalFilesDir);
    }

    public static void clearIMCache(Context context, V2TIMConversation v2TIMConversation) {
        if (v2TIMConversation == null) {
            return;
        }
        File file = new File(new File(FilePathProvider.getPrivateRootPathV2("im_files")), SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID));
        if (TextUtils.isEmpty(v2TIMConversation.getGroupID())) {
            file = new File(file, "c2c");
        }
        File file2 = new File(file, v2TIMConversation.getConversationID());
        if (!file2.exists()) {
            file2.mkdirs();
        }
        deleteDir(file2);
    }

    public static void clearIMFiles(final ClearCallBack clearCallBack) {
        k.just(1).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new o<Integer, Integer>() { // from class: com.guochao.faceshow.utils.DataCleanManager.2
            @Override // vh.o
            public Integer apply(Integer num) throws Exception {
                DataCleanManager.deleteIMFiles(new File(FilePathProvider.getIMRootPath()));
                DataCleanManager.deleteUgcFiles(new File(FilePathProvider.getPrivateRootPathV2() + "/ugc_files/"));
                return 1;
            }
        }).subscribe(new SimpleObserver<Integer>() { // from class: com.guochao.faceshow.utils.DataCleanManager.1
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            public void onNext(Integer num) {
                super.onNext((AnonymousClass1) num);
                ClearCallBack.this.onSucceed();
            }
        });
    }

    public static void clearThirdPartyDir() {
        if (ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(BaseApplication.getInstance(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            k.just(1).map(new o() { // from class: com.guochao.faceshow.utils.a
                @Override // vh.o
                public final Object apply(Object obj) {
                    Integer lambda$clearThirdPartyDir$0;
                    lambda$clearThirdPartyDir$0 = DataCleanManager.lambda$clearThirdPartyDir$0((Integer) obj);
                    return lambda$clearThirdPartyDir$0;
                }
            }).subscribeOn(di.a.b()).subscribe();
        }
    }

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

    private static void deleteFiles(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null && listFiles.length != 0) {
                for (File file2 : listFiles) {
                    deleteFiles(file2);
                }
                return;
            }
            file.delete();
        } else if (file.getName().endsWith(".xlog")) {
            file.delete();
        }
    }

    public static void deleteIMFiles(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (String str : list) {
                File file2 = new File(file, str);
                if (!file2.getAbsolutePath().contains("translate")) {
                    deleteIMFiles(file2);
                }
            }
        }
        if (file.isDirectory()) {
            return;
        }
        file.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteUgcFiles(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return;
            }
            for (int i9 = 0; i9 < list.length; i9++) {
                File file2 = new File(list[i9]);
                if (!file2.isDirectory() || !file2.getName().contains("to_publish")) {
                    deleteDir(new File(file, list[i9]));
                }
            }
        }
        file.delete();
    }

    private static List<File> getAllCacheFileList() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new File(baseApplication.getCacheDir(), "ugc_video"));
        arrayList.add(new File(baseApplication.getCacheDir(), "short_videos"));
        arrayList.add(new File(FilePathProvider.getNXShowPath("parster")));
        arrayList.add(new File(FilePathProvider.getApplicationCacheDir() + "/UnityAdsCache/"));
        arrayList.add(new File(FilePathProvider.getNXPathV2() + "/effect/"));
        arrayList.add(new File(FilePathProvider.getGlideCacheDirV2(BaseApplication.getInstance())));
        arrayList.add(new File(FilePathProvider.getCachePath("/crop/")));
        arrayList.add(new File(FilePathProvider.getCachePath("/banner_image/")));
        arrayList.add(new File(FilePathProvider.getCardVideoThumbDir(baseApplication)));
        return arrayList;
    }

    public static long getFolderSize(File file) {
        long length;
        long j10 = 0;
        if (file == null) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        try {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        length = getFolderSize(file2);
                    } else {
                        length = file2.length();
                    }
                    j10 += length;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return j10;
    }

    public static String getFormatSize(double d10) {
        double d11 = d10 / 1024.0d;
        if (d11 < 1.0d) {
            return "0KB";
        }
        double d12 = d11 / 1024.0d;
        if (d12 < 1.0d) {
            return String.format(Locale.US, "%dKB", Integer.valueOf(new BigDecimal(Double.toString(d11)).setScale(2, 4).intValue()));
        }
        double d13 = d12 / 1024.0d;
        if (d13 < 1.0d) {
            return String.format(Locale.US, "%dMB", Integer.valueOf(new BigDecimal(Double.toString(d12)).setScale(2, 4).intValue()));
        }
        double d14 = d13 / 1024.0d;
        if (d14 < 1.0d) {
            return String.format(Locale.US, "%dGB", Integer.valueOf(new BigDecimal(Double.toString(d13)).setScale(2, 4).intValue()));
        }
        return String.format(Locale.US, "%dTB", Integer.valueOf(new BigDecimal(d14).setScale(2, 4).intValue()));
    }

    public static long getIMFolderSize(File file) {
        long length;
        if (!file.isDirectory()) {
            return file.length();
        }
        long j10 = 0;
        try {
            File[] listFiles = file.listFiles();
            for (int i9 = 0; i9 < listFiles.length; i9++) {
                if (listFiles[i9].isDirectory()) {
                    if (!listFiles[i9].getAbsolutePath().contains("translate")) {
                        length = getIMFolderSize(listFiles[i9]);
                    }
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

    public static String getIMTotalCacheSize() {
        long length;
        long j10 = 0;
        try {
            File[] listFiles = new File(FilePathProvider.getIMRootPath()).listFiles();
            for (int i9 = 0; i9 < listFiles.length; i9++) {
                if (listFiles[i9].isDirectory()) {
                    length = getIMFolderSize(listFiles[i9]);
                } else {
                    length = listFiles[i9].length();
                }
                j10 += length;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return getFormatSize(j10 + getUgcFileSize());
    }

    public static String getTotalCacheSize() {
        List<File> allCacheFileList = getAllCacheFileList();
        long j10 = 0;
        for (int i9 = 0; i9 < allCacheFileList.size(); i9++) {
            j10 += getFolderSize(allCacheFileList.get(i9));
        }
        return getFormatSize(j10);
    }

    private static long getUgcFileSize() {
        String[] list = new File(FilePathProvider.getUgcRootPath()).list();
        long j10 = 0;
        if (list == null) {
            return 0L;
        }
        for (String str : list) {
            File file = new File(str);
            if (!file.isDirectory() || !file.getName().contains("to_publish")) {
                j10 += getFolderSize(file);
            }
        }
        return j10;
    }

    private static boolean ifDontDeleteThisFile(File file) {
        return file.isDirectory() && (file.getName().contains("thumb") || file.getName().contains("voice"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer lambda$clearThirdPartyDir$0(Integer num) throws Exception {
        deleteDir(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/mob/"));
        deleteDir(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + FilePathProvider.DEFAULT_MEDIA_PACK_FOLDER), FileUtils.PIC_POSTFIX_MP4);
        deleteDir(new File(Environment.getExternalStorageDirectory().getAbsolutePath() + FilePathProvider.TX_UGC));
        deleteDir(new File(BaseApplication.getInstance().getExternalCacheDir(), "/NXShow/gift"));
        deleteDir(new File(BaseApplication.getInstance().getExternalCacheDir(), "/NXShow/gift_v2"), ".svga");
        return 1;
    }

    public static boolean deleteDir(File file) {
        return deleteDir(file, null);
    }
}
