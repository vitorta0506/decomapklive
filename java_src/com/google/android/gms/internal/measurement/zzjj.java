package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzjj extends IOException {
    zzjj() {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjj(String str, Throwable th2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjj(Throwable th2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th2);
    }
}
