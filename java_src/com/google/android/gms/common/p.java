package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
abstract class p extends n {

    /* renamed from: c  reason: collision with root package name */
    private static final WeakReference f7813c = new WeakReference(null);

    /* renamed from: b  reason: collision with root package name */
    private WeakReference f7814b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(byte[] bArr) {
        super(bArr);
        this.f7814b = f7813c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.n
    public final byte[] E0() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f7814b.get();
            if (bArr == null) {
                bArr = F0();
                this.f7814b = new WeakReference(bArr);
            }
        }
        return bArr;
    }

    protected abstract byte[] F0();
}
