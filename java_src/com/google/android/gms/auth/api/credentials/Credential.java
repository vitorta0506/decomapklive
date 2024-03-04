package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<Credential> CREATOR = new a();
    @NonNull
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String zba;
    @Nullable
    private final String zbb;
    @Nullable
    private final Uri zbc;
    private final List zbd;
    @Nullable
    private final String zbe;
    @Nullable
    private final String zbf;
    @Nullable
    private final String zbg;
    @Nullable
    private final String zbh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Credential(String str, @Nullable String str2, @Nullable Uri uri, List list, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        List unmodifiableList;
        Boolean bool;
        String trim = ((String) p.k(str, "credential identifier cannot be null")).trim();
        p.g(trim, "credential identifier cannot be empty");
        if (str3 != null && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password must not be empty if set");
        }
        if (str4 != null) {
            if (TextUtils.isEmpty(str4)) {
                bool = Boolean.FALSE;
            } else {
                Uri parse = Uri.parse(str4);
                if (parse.isAbsolute() && parse.isHierarchical() && !TextUtils.isEmpty(parse.getScheme()) && !TextUtils.isEmpty(parse.getAuthority())) {
                    boolean z10 = true;
                    if (!"http".equalsIgnoreCase(parse.getScheme()) && !ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(parse.getScheme())) {
                        z10 = false;
                    }
                    bool = Boolean.valueOf(z10);
                } else {
                    bool = Boolean.FALSE;
                }
            }
            if (!bool.booleanValue()) {
                throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
            }
        }
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        if (str2 != null && TextUtils.isEmpty(str2.trim())) {
            str2 = null;
        }
        this.zbb = str2;
        this.zbc = uri;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.zbd = unmodifiableList;
        this.zba = trim;
        this.zbe = str3;
        this.zbf = str4;
        this.zbg = str5;
        this.zbh = str6;
    }

    @Nullable
    public String I() {
        return this.zbf;
    }

    @Nullable
    public String K() {
        return this.zbh;
    }

    @Nullable
    public String L() {
        return this.zbg;
    }

    public String M() {
        return this.zba;
    }

    public List<IdToken> P() {
        return this.zbd;
    }

    @Nullable
    public String R() {
        return this.zbb;
    }

    @Nullable
    public String c0() {
        return this.zbe;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Credential) {
            Credential credential = (Credential) obj;
            return TextUtils.equals(this.zba, credential.zba) && TextUtils.equals(this.zbb, credential.zbb) && n.b(this.zbc, credential.zbc) && TextUtils.equals(this.zbe, credential.zbe) && TextUtils.equals(this.zbf, credential.zbf);
        }
        return false;
    }

    @Nullable
    public Uri f0() {
        return this.zbc;
    }

    public int hashCode() {
        return n.c(this.zba, this.zbb, this.zbc, this.zbe, this.zbf);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, M(), false);
        x3.a.q(parcel, 2, R(), false);
        x3.a.p(parcel, 3, f0(), i9, false);
        x3.a.u(parcel, 4, P(), false);
        x3.a.q(parcel, 5, c0(), false);
        x3.a.q(parcel, 6, I(), false);
        x3.a.q(parcel, 9, L(), false);
        x3.a.q(parcel, 10, K(), false);
        x3.a.b(parcel, a10);
    }
}
