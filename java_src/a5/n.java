package a5;

import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f626b = Pattern.compile("lib/([^/]+)/(.*\\.so)$");

    /* renamed from: a  reason: collision with root package name */
    private final f f627a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(f fVar) throws IOException {
        this.f627a = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Set a(n nVar, Set set, t tVar, ZipFile zipFile) {
        HashSet hashSet = new HashSet();
        nVar.f(tVar, set, new j(nVar, hashSet, tVar, zipFile));
        return hashSet;
    }

    @RequiresApi(21)
    private static void e(t tVar, k kVar) throws IOException {
        ZipFile zipFile;
        String[] strArr;
        try {
            zipFile = new ZipFile(tVar.a());
        } catch (IOException e10) {
            e = e10;
            zipFile = null;
        }
        try {
            String b10 = tVar.b();
            HashMap hashMap = new HashMap();
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                Matcher matcher = f626b.matcher(nextElement.getName());
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' for ABI '%s'", b10, group2, group));
                    Set set = (Set) hashMap.get(group);
                    if (set == null) {
                        set = new HashSet();
                        hashMap.put(group, set);
                    }
                    set.add(new m(nextElement, group2));
                }
            }
            HashMap hashMap2 = new HashMap();
            for (String str : Build.SUPPORTED_ABIS) {
                if (hashMap.containsKey(str)) {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI", str));
                    for (m mVar : (Set) hashMap.get(str)) {
                        if (hashMap2.containsKey(mVar.f624a)) {
                            Log.d("SplitCompat", String.format("NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI", mVar.f624a, str));
                        } else {
                            hashMap2.put(mVar.f624a, mVar);
                            Log.d("SplitCompat", String.format("NativeLibraryExtractor: using library %s for ABI %s", mVar.f624a, str));
                        }
                    }
                } else {
                    Log.d("SplitCompat", String.format("NativeLibraryExtractor: there are no native libraries for supported ABI %s", str));
                }
            }
            kVar.a(zipFile, new HashSet(hashMap2.values()));
            zipFile.close();
        } catch (IOException e11) {
            e = e11;
            if (zipFile != null) {
                try {
                    zipFile.close();
                } catch (IOException unused) {
                }
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(t tVar, Set set, l lVar) throws IOException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            File c10 = this.f627a.c(tVar.b(), mVar.f624a);
            boolean z10 = false;
            if (c10.exists() && c10.length() == mVar.f625b.getSize() && f.p(c10)) {
                z10 = true;
            }
            lVar.a(mVar, c10, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @RequiresApi(21)
    public final Set b(t tVar) throws IOException {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        HashSet hashSet = new HashSet();
        e(tVar, new h(this, tVar, hashSet, atomicBoolean));
        if (atomicBoolean.get()) {
            return hashSet;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(21)
    public final Set c() throws IOException {
        Log.d("SplitCompat", "NativeLibraryExtractor: synchronizing native libraries");
        Set<t> j10 = this.f627a.j();
        for (String str : this.f627a.h()) {
            Iterator it = j10.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((t) it.next()).b().equals(str)) {
                        break;
                    }
                } else {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: extracted split '%s' has no corresponding split; deleting", str));
                    this.f627a.n(str);
                    break;
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (t tVar : j10) {
            HashSet hashSet2 = new HashSet();
            e(tVar, new i(this, hashSet2, tVar));
            for (File file : this.f627a.i(tVar.b())) {
                if (!hashSet2.contains(file)) {
                    Log.i("SplitCompat", String.format("NativeLibraryExtractor: file '%s' found in split '%s' that is not in the split file '%s'; removing", file.getAbsolutePath(), tVar.b(), tVar.a().getAbsolutePath()));
                    this.f627a.o(file);
                }
            }
            hashSet.addAll(hashSet2);
        }
        return hashSet;
    }
}
