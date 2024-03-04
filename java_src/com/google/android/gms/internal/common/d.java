package com.google.android.gms.internal.common;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class d extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i9) {
        super(4);
    }

    public final d c(Object obj) {
        super.a(obj);
        return this;
    }

    public final d d(Iterator it) {
        while (it.hasNext()) {
            super.a(it.next());
        }
        return this;
    }
}
