package com.google.android.gms.internal.recaptcha;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class m9 extends o9 {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f8866a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    @Override // com.google.android.gms.internal.recaptcha.x9
    public final x9 a(byte[] bArr, int i9, int i10) {
        z7.h(0, i10, bArr.length);
        b(bArr, 0, i10);
        return this;
    }

    protected abstract void b(byte[] bArr, int i9, int i10);
}
