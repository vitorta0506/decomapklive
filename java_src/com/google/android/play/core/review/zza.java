package com.google.android.play.core.review;

import android.app.PendingIntent;
import java.util.Objects;
/* loaded from: classes2.dex */
final class zza extends ReviewInfo {
    private final PendingIntent zza;
    private final boolean zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(PendingIntent pendingIntent, boolean z10) {
        Objects.requireNonNull(pendingIntent, "Null pendingIntent");
        this.zza = pendingIntent;
        this.zzb = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.review.ReviewInfo
    public final PendingIntent a() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.review.ReviewInfo
    public final boolean b() {
        return this.zzb;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            ReviewInfo reviewInfo = (ReviewInfo) obj;
            if (this.zza.equals(reviewInfo.a()) && this.zzb == reviewInfo.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ (true != this.zzb ? 1237 : 1231);
    }

    public final String toString() {
        String obj = this.zza.toString();
        boolean z10 = this.zzb;
        StringBuilder sb2 = new StringBuilder(obj.length() + 40);
        sb2.append("ReviewInfo{pendingIntent=");
        sb2.append(obj);
        sb2.append(", isNoOp=");
        sb2.append(z10);
        sb2.append("}");
        return sb2.toString();
    }
}
