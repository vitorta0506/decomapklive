package com.google.android.play.core.internal;

import android.util.Log;
import io.jsonwebtoken.Header;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
final class f0 implements y {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object c(ClassLoader classLoader) {
        return v0.b(classLoader, "pathList", Object.class).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(ClassLoader classLoader, Set set) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String valueOf = String.valueOf(file.getParentFile().getAbsolutePath());
            Log.d("Splitcompat", valueOf.length() != 0 ? "Adding native library parent directory: ".concat(valueOf) : new String("Adding native library parent directory: "));
            hashSet.add(file.getParentFile());
        }
        t0 a10 = v0.a(c(classLoader), "nativeLibraryDirectories", File.class);
        hashSet.removeAll(Arrays.asList((File[]) a10.a()));
        synchronized (b5.h.class) {
            int size = hashSet.size();
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Adding directories ");
            sb2.append(size);
            Log.d("Splitcompat", sb2.toString());
            a10.e(hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(ClassLoader classLoader, File file, File file2, boolean z10, e0 e0Var, String str, d0 d0Var) {
        ArrayList arrayList = new ArrayList();
        Object c10 = c(classLoader);
        t0 a10 = v0.a(c10, "dexElements", Object.class);
        List<Object> asList = Arrays.asList((Object[]) a10.a());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : asList) {
            arrayList2.add((File) v0.b(obj, str, File.class).a());
        }
        if (arrayList2.contains(file2)) {
            return true;
        }
        if (!z10 && !d0Var.a(c10, file2, file)) {
            String valueOf = String.valueOf(file2.getPath());
            Log.w("SplitCompat", valueOf.length() != 0 ? "Should be optimized ".concat(valueOf) : new String("Should be optimized "));
            return false;
        }
        a10.d(Arrays.asList(e0Var.a(c10, new ArrayList(Collections.singleton(file2)), file, arrayList)));
        if (arrayList.isEmpty()) {
            return true;
        }
        zzbt zzbtVar = new zzbt("DexPathList.makeDexElement failed");
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            Log.e("SplitCompat", "DexPathList.makeDexElement failed", (IOException) arrayList.get(i9));
        }
        v0.a(c10, "dexElementsSuppressedExceptions", IOException.class).d(arrayList);
        throw zzbtVar;
    }

    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return e(classLoader, file, file2, z10, new b0(), Header.COMPRESSION_ALGORITHM, new c0());
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        d(classLoader, set);
    }
}
