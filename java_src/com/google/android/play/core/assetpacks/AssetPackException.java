package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.zzj;
/* loaded from: classes2.dex */
public class AssetPackException extends zzj {
    private final int zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetPackException(int i9) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i9), u4.a.a(i9)));
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
