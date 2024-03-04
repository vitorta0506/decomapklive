package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import o1.f;
import o1.k;
@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements o1.c {
    @Override // o1.c
    public k create(f fVar) {
        return new d(fVar.b(), fVar.e(), fVar.d());
    }
}
