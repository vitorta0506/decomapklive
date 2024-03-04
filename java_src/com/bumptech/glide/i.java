package com.bumptech.glide;

import androidx.annotation.NonNull;
import com.bumptech.glide.i;
import v0.j;
/* loaded from: classes.dex */
public abstract class i<CHILD extends i<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private t0.g<? super TranscodeType> f4202a = t0.e.c();

    private CHILD d() {
        return this;
    }

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final t0.g<? super TranscodeType> b() {
        return this.f4202a;
    }

    @NonNull
    public final CHILD e(@NonNull t0.g<? super TranscodeType> gVar) {
        this.f4202a = (t0.g) j.d(gVar);
        return d();
    }
}
