package com.google.android.play.core.review;

import com.google.android.play.core.tasks.zzj;
import java.util.Locale;
/* loaded from: classes2.dex */
public class ReviewException extends zzj {
    private final int zza;

    public ReviewException(int i9) {
        super(String.format(Locale.getDefault(), "Review Error(%d): %s", Integer.valueOf(i9), z4.a.a(i9)));
        this.zza = i9;
    }

    @Override // com.google.android.play.core.tasks.zzj
    public int getErrorCode() {
        return this.zza;
    }
}
