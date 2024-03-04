package com.guochao.faceshow.aaspring.utils;

import android.util.Log;
import com.guochao.faceshow.utils.HandlerGetter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import kotlin.jvm.functions.Function1;
/* loaded from: classes3.dex */
public class ZipUtils {
    public static final String TAG = "ZIP";

    /* renamed from: e  reason: collision with root package name */
    static final Executor f23416e = new ScheduledThreadPoolExecutor(1);

    public static List<File> GetFileList(String str, boolean z10, boolean z11) throws Exception {
        String parent = new File(str).getParent();
        ArrayList arrayList = new ArrayList();
        ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                String name = nextEntry.getName();
                if (nextEntry.isDirectory()) {
                    File file = new File(name.substring(0, name.length() - 1));
                    String canonicalPath = file.getCanonicalPath();
                    if (parent != null && !canonicalPath.startsWith(parent)) {
                        throw new FileNotFoundException("SecurityException");
                    }
                    if (z10) {
                        arrayList.add(file);
                    }
                } else {
                    File file2 = new File(name);
                    if (z11) {
                        arrayList.add(file2);
                    }
                }
            } else {
                zipInputStream.close();
                return arrayList;
            }
        }
    }

    public static void UnZipFolder(String str, String str2) {
        FileOutputStream fileOutputStream = null;
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(str));
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    if (nextEntry.isDirectory()) {
                        String substring = name.substring(0, name.length() - 1);
                        File file = new File(str2 + File.separator + substring);
                        String canonicalPath = file.getCanonicalPath();
                        if (str2 != null && !canonicalPath.startsWith(str2)) {
                            throw new FileNotFoundException("SecurityException");
                        }
                        file.mkdirs();
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str2);
                        String str3 = File.separator;
                        sb2.append(str3);
                        sb2.append(name);
                        Log.e(TAG, sb2.toString());
                        File file2 = new File(str2 + str3 + name);
                        if (!file2.exists()) {
                            Log.e(TAG, "Create the file:" + str2 + str3 + name);
                            file2.getParentFile().mkdirs();
                            file2.createNewFile();
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = zipInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, read);
                                fileOutputStream2.flush();
                            }
                            fileOutputStream2.close();
                            fileOutputStream = fileOutputStream2;
                        } catch (Exception unused) {
                            fileOutputStream = fileOutputStream2;
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            ma.c.a(fileOutputStream);
                            throw th;
                        }
                    }
                } else {
                    zipInputStream.close();
                    break;
                }
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
        ma.c.a(fileOutputStream);
    }

    public static InputStream UpZip(String str, String str2) throws Exception {
        ZipFile zipFile = new ZipFile(str);
        return zipFile.getInputStream(zipFile.getEntry(str2));
    }

    private static void ZipFiles(String str, String str2, ZipOutputStream zipOutputStream, aa.b<String> bVar) throws Exception {
        if (zipOutputStream == null) {
            return;
        }
        File file = new File(str + str2);
        if (file.isFile()) {
            if (bVar != null && !bVar.accept(file.getName())) {
                return;
            }
            ZipEntry zipEntry = new ZipEntry(str2);
            FileInputStream fileInputStream = new FileInputStream(file);
            zipOutputStream.putNextEntry(zipEntry);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read != -1) {
                    zipOutputStream.write(bArr, 0, read);
                } else {
                    zipOutputStream.closeEntry();
                    return;
                }
            }
        } else {
            String[] list = file.list();
            if (list.length <= 0) {
                zipOutputStream.putNextEntry(new ZipEntry(str2 + File.separator));
                zipOutputStream.closeEntry();
            }
            for (int i9 = 0; i9 < list.length; i9++) {
                ZipFiles(str, str2 + File.separator + list[i9], zipOutputStream, bVar);
            }
        }
    }

    public static void ZipFolder(String str, String str2, aa.b<String> bVar) throws Exception {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
        File file = new File(str);
        ZipFiles(file.getParent() + File.separator, file.getName(), zipOutputStream, bVar);
        zipOutputStream.finish();
        zipOutputStream.close();
    }

    public static void safeUnZip(final String str, final Function1<String, String> function1) {
        f23416e.execute(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ZipUtils.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final String UnZipFolder = ZipUtils.UnZipFolder(str);
                    HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.ZipUtils.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            function1.invoke(UnZipFolder);
                        }
                    });
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    public static String UnZipFolder(String str) throws IOException, FileNotFoundException {
        Closeable closeable;
        FileOutputStream fileOutputStream;
        String parent = new File(str).getParent();
        ZipInputStream zipInputStream = null;
        try {
            ZipInputStream zipInputStream2 = new ZipInputStream(new FileInputStream(str));
            String str2 = null;
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream2.getNextEntry();
                    if (nextEntry != null) {
                        if (nextEntry.isDirectory()) {
                            File file = new File(parent + File.separator + nextEntry.getName());
                            String canonicalPath = file.getCanonicalPath();
                            if (parent != null && !canonicalPath.startsWith(parent)) {
                                throw new FileNotFoundException("SecurityException");
                            }
                            file.mkdirs();
                            if (str2 == null) {
                                str2 = file.getPath();
                            }
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(parent);
                            String str3 = File.separator;
                            sb2.append(str3);
                            sb2.append(nextEntry.getName());
                            File file2 = new File(sb2.toString());
                            String canonicalPath2 = file2.getCanonicalPath();
                            if (parent != null && !canonicalPath2.startsWith(parent)) {
                                throw new FileNotFoundException("SecurityException");
                            }
                            if (!file2.exists()) {
                                Log.e(TAG, "Create the file:" + parent + str3 + nextEntry.getName());
                                file2.getParentFile().mkdirs();
                                file2.createNewFile();
                            }
                            fileOutputStream = new FileOutputStream(file2);
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = zipInputStream2.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                    fileOutputStream.flush();
                                }
                                fileOutputStream.close();
                                zipInputStream = fileOutputStream;
                            } catch (Throwable th2) {
                                th = th2;
                                zipInputStream = zipInputStream2;
                                closeable = fileOutputStream;
                                ma.c.a(zipInputStream);
                                ma.c.a(closeable);
                                throw th;
                            }
                        }
                    } else {
                        ma.c.a(zipInputStream2);
                        ma.c.a(zipInputStream);
                        return str2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = zipInputStream;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
        }
    }
}
