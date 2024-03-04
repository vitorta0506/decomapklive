package com.google.android.play.core.assetpacks;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10194c = new com.google.android.play.core.internal.g("AssetPackStorage");

    /* renamed from: d  reason: collision with root package name */
    private static final long f10195d;

    /* renamed from: e  reason: collision with root package name */
    private static final long f10196e;

    /* renamed from: a  reason: collision with root package name */
    private final Context f10197a;

    /* renamed from: b  reason: collision with root package name */
    private final v2 f10198b;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        f10195d = timeUnit.toMillis(14L);
        f10196e = timeUnit.toMillis(28L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(Context context, v2 v2Var) {
        this.f10197a = context;
        this.f10198b = v2Var;
    }

    private static long g(File file, boolean z10) {
        File[] listFiles;
        if (file.exists()) {
            ArrayList arrayList = new ArrayList();
            if (z10 && file.listFiles().length > 1) {
                f10194c.e("Multiple pack versions found, using highest version code.", new Object[0]);
            }
            try {
                for (File file2 : file.listFiles()) {
                    if (!file2.getName().equals("stale.tmp")) {
                        arrayList.add(Long.valueOf(file2.getName()));
                    }
                }
            } catch (NumberFormatException e10) {
                f10194c.c(e10, "Corrupt asset pack directories.", new Object[0]);
            }
            if (arrayList.isEmpty()) {
                return -1L;
            }
            Collections.sort(arrayList);
            return ((Long) arrayList.get(arrayList.size() - 1)).longValue();
        }
        return -1L;
    }

    private final File h(String str) {
        return new File(k(), str);
    }

    private final File i(String str, int i9, long j10) {
        return new File(w(str, i9, j10), "merge.tmp");
    }

    private final File j(String str, int i9, long j10) {
        return new File(new File(new File(l(), str), String.valueOf(i9)), String.valueOf(j10));
    }

    private final File k() {
        return new File(this.f10197a.getFilesDir(), "assetpacks");
    }

    private final File l() {
        return new File(k(), "_tmp");
    }

    private final List m() {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        try {
        } catch (IOException e10) {
            f10194c.b("Could not process directory while scanning installed packs. %s", e10);
        }
        if (k().exists() && k().listFiles() != null) {
            for (File file : k().listFiles()) {
                if (!file.getCanonicalPath().equals(l().getCanonicalPath())) {
                    arrayList.add(file);
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    private static void n(File file) {
        File[] listFiles;
        if (file.listFiles() == null || file.listFiles().length <= 1) {
            return;
        }
        long g10 = g(file, false);
        for (File file2 : file.listFiles()) {
            if (!file2.getName().equals(String.valueOf(g10)) && !file2.getName().equals("stale.tmp")) {
                o(file2);
            }
        }
    }

    private static boolean o(File file) {
        File[] listFiles = file.listFiles();
        boolean z10 = true;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                z10 &= o(file2);
            }
        }
        if (file.delete()) {
            return z10;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File A(String str, int i9, long j10, String str2) {
        return new File(B(str, i9, j10, str2), "checkpoint.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File B(String str, int i9, long j10, String str2) {
        return new File(y(str, i9, j10), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File C(String str, int i9, long j10, String str2) {
        return new File(new File(new File(j(str, i9, j10), "_slices"), "_unverified"), str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File D(String str, int i9, long j10, String str2) {
        return new File(new File(new File(j(str, i9, j10), "_slices"), "_verified"), str2);
    }

    @Nullable
    final String E(String str) throws IOException {
        int length;
        File file = new File(k(), str);
        if (!file.exists()) {
            f10194c.a("Pack not found with pack name: %s", str);
            return null;
        }
        File file2 = new File(file, String.valueOf(this.f10198b.a()));
        if (!file2.exists()) {
            f10194c.a("Pack not found with pack name: %s app version: %s", str, Integer.valueOf(this.f10198b.a()));
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null || (length = listFiles.length) == 0) {
            f10194c.a("No pack version found for pack name: %s app version: %s", str, Integer.valueOf(this.f10198b.a()));
            return null;
        } else if (length > 1) {
            f10194c.b("Multiple pack versions found for pack name: %s app version: %s", str, Integer.valueOf(this.f10198b.a()));
            return null;
        } else {
            return listFiles[0].getCanonicalPath();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map F() {
        HashMap hashMap = new HashMap();
        for (File file : m()) {
            String name = file.getName();
            int g10 = (int) g(h(name), true);
            long g11 = g(t(name, g10), true);
            if (u(name, g10, g11).exists()) {
                hashMap.put(name, Long.valueOf(g11));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map G() {
        HashMap hashMap = new HashMap();
        for (String str : H().keySet()) {
            hashMap.put(str, Long.valueOf(r(str)));
        }
        return hashMap;
    }

    final Map H() {
        HashMap hashMap = new HashMap();
        try {
            for (File file : m()) {
                a s10 = s(file.getName());
                if (s10 != null) {
                    hashMap.put(file.getName(), s10);
                }
            }
        } catch (IOException e10) {
            f10194c.b("Could not process directory while scanning installed packs: %s", e10);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void I() {
        for (File file : m()) {
            if (file.listFiles() != null) {
                n(file);
                long g10 = g(file, false);
                if (this.f10198b.a() != g10) {
                    try {
                        new File(new File(file, String.valueOf(g10)), "stale.tmp").createNewFile();
                    } catch (IOException unused) {
                        f10194c.b("Could not write staleness marker.", new Object[0]);
                    }
                }
                for (File file2 : file.listFiles()) {
                    n(file2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void J() {
        o(k());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, int i9, long j10, int i10) throws IOException {
        File i11 = i(str, i9, j10);
        Properties properties = new Properties();
        properties.put("numberOfMerges", String.valueOf(i10));
        i11.getParentFile().mkdirs();
        i11.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(i11);
        properties.store(fileOutputStream, (String) null);
        fileOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, int i9, long j10) {
        File[] listFiles;
        File[] listFiles2;
        File h10 = h(str);
        if (h10.exists()) {
            for (File file : h10.listFiles()) {
                if (!file.getName().equals(String.valueOf(i9)) && !file.getName().equals("stale.tmp")) {
                    o(file);
                } else if (file.getName().equals(String.valueOf(i9))) {
                    for (File file2 : file.listFiles()) {
                        if (!file2.getName().equals(String.valueOf(j10))) {
                            o(file2);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(List list) {
        int a10 = this.f10198b.a();
        for (File file : m()) {
            if (!list.contains(file.getName()) && g(file, true) != a10) {
                o(file);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str, int i9, long j10) {
        if (j(str, i9, j10).exists()) {
            return o(j(str, i9, j10));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e(String str, int i9, long j10) {
        if (u(str, i9, j10).exists()) {
            return o(u(str, i9, j10));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(String str) {
        return E(str) != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int p(String str) {
        return (int) g(h(str), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int q(String str, int i9, long j10) throws IOException {
        File i10 = i(str, i9, j10);
        if (i10.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(i10);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("numberOfMerges") != null) {
                    try {
                        return Integer.parseInt(properties.getProperty("numberOfMerges"));
                    } catch (NumberFormatException e10) {
                        throw new f1("Merge checkpoint file corrupt.", e10);
                    }
                }
                throw new f1("Merge checkpoint file corrupt.");
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th2;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long r(String str) {
        return g(t(str, (int) g(h(str), true)), true);
    }

    @Nullable
    final a s(String str) throws IOException {
        String E = E(str);
        if (E == null) {
            return null;
        }
        File file = new File(E, "assets");
        if (!file.isDirectory()) {
            f10194c.b("Failed to find assets directory: %s", file);
            return null;
        }
        return new i0(0, E, file.getCanonicalPath());
    }

    final File t(String str, int i9) {
        return new File(h(str), String.valueOf(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File u(String str, int i9, long j10) {
        return new File(t(str, i9), String.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File v(String str, int i9, long j10) {
        return new File(u(str, i9, j10), "_metadata");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File w(String str, int i9, long j10) {
        return new File(j(str, i9, j10), "_packs");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File x(String str, int i9, long j10) {
        return new File(v(str, i9, j10), "properties.dat");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File y(String str, int i9, long j10) {
        return new File(new File(j(str, i9, j10), "_slices"), "_metadata");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File z(String str, int i9, long j10, String str2) {
        return new File(B(str, i9, j10, str2), "checkpoint_ext.dat");
    }
}
