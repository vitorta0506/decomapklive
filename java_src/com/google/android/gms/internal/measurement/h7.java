package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.h7;
import com.google.android.gms.internal.measurement.i7;
/* loaded from: classes2.dex */
public abstract class h7<MessageType extends i7<MessageType, BuilderType>, BuilderType extends h7<MessageType, BuilderType>> implements y9 {
    @Override // com.google.android.gms.internal.measurement.y9
    public final /* synthetic */ y9 G0(byte[] bArr) throws zzko {
        return i(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.y9
    public final /* synthetic */ y9 R0(byte[] bArr, k8 k8Var) throws zzko {
        return j(bArr, 0, bArr.length, k8Var);
    }

    protected abstract h7 h(i7 i7Var);

    public abstract h7 i(byte[] bArr, int i9, int i10) throws zzko;

    public abstract h7 j(byte[] bArr, int i9, int i10, k8 k8Var) throws zzko;

    @Override // com.google.android.gms.internal.measurement.y9
    public final /* bridge */ /* synthetic */ y9 j1(z9 z9Var) {
        if (f().getClass().isInstance(z9Var)) {
            return h((i7) z9Var);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
