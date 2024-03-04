package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new f();
    @NonNull
    public static final String EXTRA_TOKEN = "extra_token";
    @NonNull
    public static final String TOKEN_TYPE_AUTH_CODE = "auth_code";
    private final PendingIntent zba;
    private final String zbb;
    private final String zbc;
    private final List zbd;
    @Nullable
    private final String zbe;
    private final int zbf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SaveAccountLinkingTokenRequest(PendingIntent pendingIntent, String str, String str2, List list, @Nullable String str3, int i9) {
        this.zba = pendingIntent;
        this.zbb = str;
        this.zbc = str2;
        this.zbd = list;
        this.zbe = str3;
        this.zbf = i9;
    }

    @NonNull
    public PendingIntent I() {
        return this.zba;
    }

    @NonNull
    public List<String> K() {
        return this.zbd;
    }

    @NonNull
    public String L() {
        return this.zbc;
    }

    @NonNull
    public String M() {
        return this.zbb;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof SaveAccountLinkingTokenRequest) {
            SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
            return this.zbd.size() == saveAccountLinkingTokenRequest.zbd.size() && this.zbd.containsAll(saveAccountLinkingTokenRequest.zbd) && n.b(this.zba, saveAccountLinkingTokenRequest.zba) && n.b(this.zbb, saveAccountLinkingTokenRequest.zbb) && n.b(this.zbc, saveAccountLinkingTokenRequest.zbc) && n.b(this.zbe, saveAccountLinkingTokenRequest.zbe) && this.zbf == saveAccountLinkingTokenRequest.zbf;
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb, this.zbc, this.zbd, this.zbe);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.p(parcel, 1, I(), i9, false);
        x3.a.q(parcel, 2, M(), false);
        x3.a.q(parcel, 3, L(), false);
        x3.a.s(parcel, 4, K(), false);
        x3.a.q(parcel, 5, this.zbe, false);
        x3.a.k(parcel, 6, this.zbf);
        x3.a.b(parcel, a10);
    }
}
