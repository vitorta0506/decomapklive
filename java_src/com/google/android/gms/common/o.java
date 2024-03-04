package com.google.android.gms.common;

import java.util.Arrays;
/* loaded from: classes2.dex */
final class o extends n {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f7812b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f7812b = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.n
    public final byte[] E0() {
        return this.f7812b;
    }
}
