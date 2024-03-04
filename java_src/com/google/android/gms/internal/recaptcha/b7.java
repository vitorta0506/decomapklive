package com.google.android.gms.internal.recaptcha;

import java.util.WeakHashMap;
/* loaded from: classes2.dex */
final class b7 extends ThreadLocal<e7> {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ e7 initialValue() {
        WeakHashMap weakHashMap;
        WeakHashMap weakHashMap2;
        e7 e7Var = new e7(h2.b());
        Thread currentThread = Thread.currentThread();
        weakHashMap = d7.f8591b;
        synchronized (weakHashMap) {
            weakHashMap2 = d7.f8591b;
            weakHashMap2.put(currentThread, e7Var);
        }
        return e7Var;
    }
}
