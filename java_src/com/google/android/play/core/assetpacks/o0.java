package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes2.dex */
final class o0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10350a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(com.google.android.play.core.internal.g1 g1Var) {
        this.f10350a = g1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InputStream a(int i9, String str, String str2, int i10) {
        try {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) d5.f.a(((c4) this.f10350a.zza()).c(i9, str, str2, i10));
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new f1(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i9), str, str2, Integer.valueOf(i10)), i9);
        } catch (InterruptedException e10) {
            throw new f1("Extractor was interrupted while waiting for chunk file.", e10, i9);
        } catch (ExecutionException e11) {
            throw new f1(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i9), str, str2, Integer.valueOf(i10)), e11, i9);
        }
    }
}
