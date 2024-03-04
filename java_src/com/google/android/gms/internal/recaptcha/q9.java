package com.google.android.gms.internal.recaptcha;

import java.io.ByteArrayOutputStream;
/* loaded from: classes2.dex */
final class q9 extends ByteArrayOutputStream {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q9(int i9) {
        super(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        return ((ByteArrayOutputStream) this).count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] c() {
        return ((ByteArrayOutputStream) this).buf;
    }
}
