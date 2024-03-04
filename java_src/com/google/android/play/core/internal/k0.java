package com.google.android.play.core.internal;

import io.jsonwebtoken.Header;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
final class k0 implements y {
    public static void c(ClassLoader classLoader, Set set, j0 j0Var) {
        if (set.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((File) it.next()).getParentFile());
        }
        Object c10 = f0.c(classLoader);
        u0 b10 = v0.b(c10, "nativeLibraryDirectories", List.class);
        synchronized (b5.h.class) {
            ArrayList arrayList = new ArrayList((Collection) b10.a());
            hashSet.removeAll(arrayList);
            arrayList.addAll(hashSet);
            b10.c(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        Object[] a10 = j0Var.a(c10, new ArrayList(hashSet), null, arrayList2);
        if (!arrayList2.isEmpty()) {
            zzbt zzbtVar = new zzbt("Error in makePathElements");
            int size = arrayList2.size();
            for (int i9 = 0; i9 < size; i9++) {
                IOException iOException = (IOException) arrayList2.get(i9);
            }
            throw zzbtVar;
        }
        synchronized (b5.h.class) {
            v0.a(c10, "nativeLibraryPathElements", Object.class).e(Arrays.asList(a10));
        }
    }

    public static boolean d(ClassLoader classLoader, File file, File file2, boolean z10, String str) {
        return f0.e(classLoader, file, file2, z10, new h0(), Header.COMPRESSION_ALGORITHM, new c0());
    }

    @Override // com.google.android.play.core.internal.y
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z10) {
        return d(classLoader, file, file2, z10, Header.COMPRESSION_ALGORITHM);
    }

    @Override // com.google.android.play.core.internal.y
    public final void b(ClassLoader classLoader, Set set) {
        c(classLoader, set, new i0());
    }
}
