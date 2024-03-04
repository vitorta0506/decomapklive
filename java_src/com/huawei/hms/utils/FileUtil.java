package com.huawei.hms.utils;

import android.content.Context;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public abstract class FileUtil {
    public static final String LOCAL_REPORT_FILE = "hms/HwMobileServiceReport.txt";
    public static final String LOCAL_REPORT_FILE_CONFIG = "hms/config.txt";
    public static final long LOCAL_REPORT_FILE_MAX_SIZE = 10240;

    /* renamed from: a  reason: collision with root package name */
    public static boolean f27847a = false;

    /* renamed from: b  reason: collision with root package name */
    public static ScheduledExecutorService f27848b = Executors.newSingleThreadScheduledExecutor();

    /* loaded from: classes4.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ File f27849a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ long f27850b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f27851c;

        public a(File file, long j10, String str) {
            this.f27849a = file;
            this.f27850b = j10;
            this.f27851c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            File file = this.f27849a;
            if (file == null) {
                HMSLog.e("FileUtil", "In writeFile Failed to get local file.");
                return;
            }
            File parentFile = file.getParentFile();
            if (parentFile != null && (parentFile.mkdirs() || parentFile.isDirectory())) {
                RandomAccessFile randomAccessFile = null;
                try {
                    try {
                        long length = this.f27849a.length();
                        if (length > this.f27850b) {
                            String canonicalPath = this.f27849a.getCanonicalPath();
                            if (!this.f27849a.delete()) {
                                HMSLog.e("FileUtil", "last file delete failed.");
                            }
                            randomAccessFile = new RandomAccessFile(new File(canonicalPath), "rw");
                        } else {
                            RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.f27849a, "rw");
                            try {
                                randomAccessFile2.seek(length);
                                randomAccessFile = randomAccessFile2;
                            } catch (IOException e10) {
                                e = e10;
                                randomAccessFile = randomAccessFile2;
                                HMSLog.e("FileUtil", "writeFile exception:", e);
                                IOUtils.closeQuietly(randomAccessFile);
                                return;
                            } catch (Throwable th2) {
                                th = th2;
                                randomAccessFile = randomAccessFile2;
                                IOUtils.closeQuietly(randomAccessFile);
                                throw th;
                            }
                        }
                        randomAccessFile.writeBytes(this.f27851c + System.getProperty("line.separator"));
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e11) {
                    e = e11;
                }
                IOUtils.closeQuietly(randomAccessFile);
                return;
            }
            HMSLog.e("FileUtil", "In writeFile, Failed to create directory.");
        }
    }

    public static boolean verifyHash(String str, File file) {
        byte[] digest = SHA256.digest(file);
        return digest != null && HEX.encodeHexString(digest, true).equalsIgnoreCase(str);
    }

    public static void writeFile(File file, String str, long j10) {
        f27848b.execute(new a(file, j10, str));
    }

    public static void writeFileReport(Context context, File file, File file2, String str, long j10, int i9) {
        if (file != null && file.isFile() && file.exists()) {
            if (!f27847a) {
                if (file2 != null && file2.exists() && !file2.delete()) {
                    HMSLog.e("FileUtil", "file delete failed.");
                }
                f27847a = true;
            }
            writeFile(file2, str + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + j10 + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + i9, LOCAL_REPORT_FILE_MAX_SIZE);
        }
    }
}
