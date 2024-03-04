package org.bouncycastle.asn1;

import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public abstract class y1 extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    protected final InputStream f55997a;

    /* renamed from: b  reason: collision with root package name */
    private int f55998b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y1(InputStream inputStream, int i9) {
        this.f55997a = inputStream;
        this.f55998b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        return this.f55998b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z10) {
        InputStream inputStream = this.f55997a;
        if (inputStream instanceof v1) {
            ((v1) inputStream).d(z10);
        }
    }
}
