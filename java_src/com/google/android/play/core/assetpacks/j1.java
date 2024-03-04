package com.google.android.play.core.assetpacks;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f10305a = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized double a(String str) {
        Double d10 = (Double) this.f10305a.get(str);
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized double b(String str, a2 a2Var) {
        double d10;
        d10 = (((z0) a2Var).f10550h + 1.0d) / ((z0) a2Var).f10551i;
        this.f10305a.put(str, Double.valueOf(d10));
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void c(String str) {
        this.f10305a.put(str, Double.valueOf(0.0d));
    }
}
