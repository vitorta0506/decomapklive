package com.google.android.gms.internal.recaptcha;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class pf {

    /* renamed from: b  reason: collision with root package name */
    private static volatile pf f8978b;

    /* renamed from: c  reason: collision with root package name */
    private static volatile pf f8979c;

    /* renamed from: d  reason: collision with root package name */
    static final pf f8980d = new pf(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map<of, cg<?, ?>> f8981a;

    pf() {
        this.f8981a = new HashMap();
    }

    public static pf a() {
        pf pfVar = f8978b;
        if (pfVar == null) {
            synchronized (pf.class) {
                pfVar = f8978b;
                if (pfVar == null) {
                    pfVar = f8980d;
                    f8978b = pfVar;
                }
            }
        }
        return pfVar;
    }

    public static pf b() {
        pf pfVar = f8979c;
        if (pfVar != null) {
            return pfVar;
        }
        synchronized (pf.class) {
            pf pfVar2 = f8979c;
            if (pfVar2 != null) {
                return pfVar2;
            }
            pf b10 = wf.b(pf.class);
            f8979c = b10;
            return b10;
        }
    }

    public final <ContainingType extends gh> cg<ContainingType, ?> c(ContainingType containingtype, int i9) {
        return (cg<ContainingType, ?>) this.f8981a.get(new of(containingtype, i9));
    }

    pf(boolean z10) {
        this.f8981a = Collections.emptyMap();
    }
}
