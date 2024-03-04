package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class x {

    /* renamed from: a  reason: collision with root package name */
    final List f8419a = new ArrayList();

    public abstract q a(String str, t4 t4Var, List list);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final q b(String str) {
        if (this.f8419a.contains(u5.e(str))) {
            throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
