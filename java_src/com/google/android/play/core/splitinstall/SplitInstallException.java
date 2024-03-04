package com.google.android.play.core.splitinstall;

import c5.a;
import com.google.android.play.core.tasks.zzj;
/* loaded from: classes2.dex */
public class SplitInstallException extends zzj {
    private final int zza;

    public SplitInstallException(int i9) {
        super(String.format("Split Install Error(%d): %s", Integer.valueOf(i9), a.a(i9)));
        if (i9 != 0) {
            this.zza = i9;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.zzj
    public int getErrorCode() {
        return this.zza;
    }
}
