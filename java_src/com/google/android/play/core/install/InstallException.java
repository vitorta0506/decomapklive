package com.google.android.play.core.install;

import com.google.android.play.core.tasks.zzj;
import w4.a;
/* loaded from: classes2.dex */
public class InstallException extends zzj {
    private final int zza;

    public InstallException(int i9) {
        super(String.format("Install Error(%d): %s", Integer.valueOf(i9), a.a(i9)));
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
