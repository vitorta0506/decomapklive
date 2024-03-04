package com.meizu.cloud.pushsdk.b;

import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleDateFormat f28245a = new SimpleDateFormat("yyyy-MM-dd");

    /* renamed from: b  reason: collision with root package name */
    private final d f28246b = new d("lo");

    /* renamed from: c  reason: collision with root package name */
    private BufferedWriter f28247c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Comparator<File> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            int i9 = ((file.lastModified() - file2.lastModified()) > 0L ? 1 : ((file.lastModified() - file2.lastModified()) == 0L ? 0 : -1));
            if (i9 > 0) {
                return -1;
            }
            return i9 == 0 ? 0 : 1;
        }
    }

    public void a() throws IOException {
        BufferedWriter bufferedWriter = this.f28247c;
        if (bufferedWriter != null) {
            bufferedWriter.flush();
            this.f28247c.close();
            this.f28247c = null;
        }
    }

    void a(File file) {
        File[] listFiles = file.listFiles(new FileFilter() { // from class: com.meizu.cloud.pushsdk.b.e.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.getName().endsWith(".log.txt");
            }
        });
        if (listFiles != null) {
            if (listFiles.length > 7) {
                Arrays.sort(listFiles, new a());
                for (int i9 = 7; i9 < listFiles.length; i9++) {
                    listFiles[i9].delete();
                }
            }
        }
    }

    public void a(String str) throws IOException {
        File file = new File(str);
        if (!file.exists() && !file.mkdirs()) {
            throw new IOException("create " + str + " dir failed!!!");
        }
        String format = this.f28245a.format(new Date());
        File file2 = new File(str, format + ".log.txt");
        if (!file2.exists()) {
            if (file2.createNewFile()) {
                a(file);
            } else {
                Log.e("EncryptionWriter", "create new file " + format + " failed !!!");
            }
        }
        this.f28247c = new BufferedWriter(new FileWriter(file2, true));
    }

    public void a(String str, String str2, String str3) throws IOException {
        if (this.f28247c != null) {
            this.f28247c.write(this.f28246b.a((str + str2 + " " + str3).getBytes()));
            this.f28247c.write(IOUtils.LINE_SEPARATOR_WINDOWS);
        }
    }
}
