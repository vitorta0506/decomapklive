package com.google.android.gms.internal.recaptcha;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public final class g9 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i9 += next != null ? next.hashCode() : 0;
        }
        return i9;
    }
}
