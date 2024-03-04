package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new c();
    @NonNull
    public static e4.d zaa = e4.g.c();

    /* renamed from: a  reason: collision with root package name */
    final int f7366a;

    /* renamed from: b  reason: collision with root package name */
    List f7367b;
    @Nullable
    private String zad;
    @Nullable
    private String zae;
    @Nullable
    private String zaf;
    @Nullable
    private String zag;
    @Nullable
    private Uri zah;
    @Nullable
    private String zai;
    private long zaj;
    private String zak;
    @Nullable
    private String zal;
    @Nullable
    private String zam;
    private Set zan = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInAccount(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Uri uri, @Nullable String str5, long j10, String str6, List list, @Nullable String str7, @Nullable String str8) {
        this.f7366a = i9;
        this.zad = str;
        this.zae = str2;
        this.zaf = str3;
        this.zag = str4;
        this.zah = uri;
        this.zai = str5;
        this.zaj = j10;
        this.zak = str6;
        this.f7367b = list;
        this.zal = str7;
        this.zam = str8;
    }

    @Nullable
    public static GoogleSignInAccount A0(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i9 = 0; i9 < length; i9++) {
            hashSet.add(new Scope(jSONArray.getString(i9)));
        }
        GoogleSignInAccount w02 = w0(jSONObject.optString("id"), jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null, jSONObject.has("email") ? jSONObject.optString("email") : null, jSONObject.has("displayName") ? jSONObject.optString("displayName") : null, jSONObject.has("givenName") ? jSONObject.optString("givenName") : null, jSONObject.has("familyName") ? jSONObject.optString("familyName") : null, parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet);
        w02.zai = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return w02;
    }

    @NonNull
    public static GoogleSignInAccount w0(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l10, @NonNull String str7, @NonNull Set set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l10.longValue(), p.f(str7), new ArrayList((Collection) p.j(set)), str5, str6);
    }

    @NonNull
    public final String C0() {
        return this.zak;
    }

    @NonNull
    public final String E0() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (P() != null) {
                jSONObject.put("id", P());
            }
            if (R() != null) {
                jSONObject.put("tokenId", R());
            }
            if (K() != null) {
                jSONObject.put("email", K());
            }
            if (I() != null) {
                jSONObject.put("displayName", I());
            }
            if (M() != null) {
                jSONObject.put("givenName", M());
            }
            if (L() != null) {
                jSONObject.put("familyName", L());
            }
            Uri c02 = c0();
            if (c02 != null) {
                jSONObject.put("photoUrl", c02.toString());
            }
            if (p0() != null) {
                jSONObject.put("serverAuthCode", p0());
            }
            jSONObject.put("expirationTime", this.zaj);
            jSONObject.put("obfuscatedIdentifier", this.zak);
            JSONArray jSONArray = new JSONArray();
            List list = this.f7367b;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: s3.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).I().compareTo(((Scope) obj2).I());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.I());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Nullable
    public Account F() {
        String str = this.zaf;
        if (str == null) {
            return null;
        }
        return new Account(str, "com.google");
    }

    @Nullable
    public String I() {
        return this.zag;
    }

    @Nullable
    public String K() {
        return this.zaf;
    }

    @Nullable
    public String L() {
        return this.zam;
    }

    @Nullable
    public String M() {
        return this.zal;
    }

    @Nullable
    public String P() {
        return this.zad;
    }

    @Nullable
    public String R() {
        return this.zae;
    }

    @Nullable
    public Uri c0() {
        return this.zah;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof GoogleSignInAccount) {
            GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
            return googleSignInAccount.zak.equals(this.zak) && googleSignInAccount.f0().equals(f0());
        }
        return false;
    }

    @NonNull
    public Set<Scope> f0() {
        HashSet hashSet = new HashSet(this.f7367b);
        hashSet.addAll(this.zan);
        return hashSet;
    }

    public int hashCode() {
        return ((this.zak.hashCode() + 527) * 31) + f0().hashCode();
    }

    @Nullable
    public String p0() {
        return this.zai;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7366a);
        x3.a.q(parcel, 2, P(), false);
        x3.a.q(parcel, 3, R(), false);
        x3.a.q(parcel, 4, K(), false);
        x3.a.q(parcel, 5, I(), false);
        x3.a.p(parcel, 6, c0(), i9, false);
        x3.a.q(parcel, 7, p0(), false);
        x3.a.m(parcel, 8, this.zaj);
        x3.a.q(parcel, 9, this.zak, false);
        x3.a.u(parcel, 10, this.f7367b, false);
        x3.a.q(parcel, 11, M(), false);
        x3.a.q(parcel, 12, L(), false);
        x3.a.b(parcel, a10);
    }
}
