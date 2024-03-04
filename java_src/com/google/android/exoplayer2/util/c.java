package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* loaded from: classes2.dex */
public final class c {
    private c() {
    }

    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) l0.j(c.class.getClassLoader()));
        }
    }

    public static <T extends com.google.android.exoplayer2.h> ImmutableList<T> b(h.a<T> aVar, List<Bundle> list) {
        ImmutableList.b builder = ImmutableList.builder();
        for (int i9 = 0; i9 < list.size(); i9++) {
            builder.a(aVar.a((Bundle) a.e(list.get(i9))));
        }
        return builder.j();
    }

    public static <T extends com.google.android.exoplayer2.h> SparseArray<T> c(h.a<T> aVar, SparseArray<Bundle> sparseArray) {
        SparseArray<T> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i9 = 0; i9 < sparseArray.size(); i9++) {
            sparseArray2.put(sparseArray.keyAt(i9), aVar.a(sparseArray.valueAt(i9)));
        }
        return sparseArray2;
    }
}
