package com.meizu.cloud.pushsdk.handler.a.b;

import android.os.Environment;
import com.meizu.cloud.pushinternal.DebugLogger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final File f28682a;

    public b(String str) {
        this.f28682a = new File(str);
    }

    private void a(File file, ZipOutputStream zipOutputStream, String str) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str.trim().length() == 0 ? "" : File.separator);
        sb2.append(file.getName());
        String sb3 = sb2.toString();
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            int length = listFiles.length;
            for (File file2 : listFiles) {
                a(file2, zipOutputStream, sb3);
            }
            return;
        }
        DebugLogger.i("ZipTask", "current file " + sb3 + FileUtils.RES_PREFIX_STORAGE + file.getName() + " size is " + (file.length() / 1024) + "KB");
        if (file.length() >= 10485760) {
            return;
        }
        byte[] bArr = new byte[1048576];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), 1048576);
        zipOutputStream.putNextEntry(new ZipEntry(sb3));
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read == -1) {
                bufferedInputStream.close();
                zipOutputStream.flush();
                zipOutputStream.closeEntry();
                return;
            }
            zipOutputStream.write(bArr, 0, read);
        }
    }

    private void a(Collection<File> collection, File file) throws Exception {
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file), 1048576));
        for (File file2 : collection) {
            a(file2, zipOutputStream, "");
        }
        zipOutputStream.close();
    }

    public void a(List<String> list) throws Exception {
        if (!this.f28682a.exists()) {
            this.f28682a.getParentFile().mkdirs();
        }
        ArrayList arrayList = new ArrayList();
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(absolutePath + it.next());
            if (file.exists()) {
                arrayList.add(file);
            }
        }
        a(arrayList, this.f28682a);
    }
}
