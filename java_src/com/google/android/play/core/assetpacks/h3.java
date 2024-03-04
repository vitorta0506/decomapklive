package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
final class h3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f10273a = Pattern.compile("[0-9]+-(NAM|LFH)\\.dat");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List a(File file, File file2) throws IOException {
        File[] fileArr;
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file2.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.g3
            @Override // java.io.FilenameFilter
            public final boolean accept(File file3, String str) {
                boolean matches;
                matches = h3.f10273a.matcher(str).matches();
                return matches;
            }
        });
        if (listFiles == null) {
            fileArr = new File[0];
        } else {
            File[] fileArr2 = new File[listFiles.length];
            for (File file3 : listFiles) {
                int parseInt = Integer.parseInt(file3.getName().split("-")[0]);
                if (parseInt <= listFiles.length && fileArr2[parseInt] == null) {
                    fileArr2[parseInt] = file3;
                } else {
                    throw new f1("Metadata folder ordering corrupt.");
                }
            }
            fileArr = fileArr2;
        }
        for (File file4 : fileArr) {
            arrayList.add(file4);
            if (file4.getName().contains("LFH")) {
                FileInputStream fileInputStream = new FileInputStream(file4);
                try {
                    l3 c10 = new q0(fileInputStream).c();
                    if (c10.c() != null) {
                        File file5 = new File(file, c10.c());
                        if (file5.exists()) {
                            arrayList.add(file5);
                            fileInputStream.close();
                        } else {
                            throw new f1(String.format("Missing asset file %s during slice reconstruction.", file5.getCanonicalPath()));
                        }
                    } else {
                        throw new f1("Metadata files corrupt. Could not read local file header.");
                    }
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th2;
                }
            }
        }
        return arrayList;
    }
}
