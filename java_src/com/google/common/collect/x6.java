package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class x6 {
    static Object a(Object obj, int i9) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append("at index ");
        sb2.append(i9);
        throw new NullPointerException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] b(Object... objArr) {
        return c(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] c(Object[] objArr, int i9) {
        for (int i10 = 0; i10 < i9; i10++) {
            a(objArr[i10], i10);
        }
        return objArr;
    }

    private static Object[] d(Iterable<?> iterable, Object[] objArr) {
        Iterator<?> it = iterable.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            objArr[i9] = it.next();
            i9++;
        }
        return objArr;
    }

    public static <T> T[] e(T[] tArr, int i9) {
        return (T[]) a7.b(tArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] f(Collection<?> collection, T[] tArr) {
        int size = collection.size();
        if (tArr.length < size) {
            tArr = (T[]) e(tArr, size);
        }
        d(collection, tArr);
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }
}
