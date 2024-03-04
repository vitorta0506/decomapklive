package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public class OAuth2Token extends com.twitter.sdk.android.core.a implements Parcelable {
    public static final Parcelable.Creator<OAuth2Token> CREATOR = new a();
    public static final String TOKEN_TYPE_BEARER = "bearer";
    @SerializedName("access_token")
    private final String accessToken;
    @SerializedName("token_type")
    private final String tokenType;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<OAuth2Token> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public OAuth2Token createFromParcel(Parcel parcel) {
            return new OAuth2Token(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public OAuth2Token[] newArray(int i9) {
            return new OAuth2Token[i9];
        }
    }

    /* synthetic */ OAuth2Token(Parcel parcel, a aVar) {
        this(parcel);
    }

    public String a() {
        return this.accessToken;
    }

    public String b() {
        return this.tokenType;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OAuth2Token oAuth2Token = (OAuth2Token) obj;
        String str = this.accessToken;
        if (str == null ? oAuth2Token.accessToken == null : str.equals(oAuth2Token.accessToken)) {
            String str2 = this.tokenType;
            String str3 = oAuth2Token.tokenType;
            return str2 == null ? str3 == null : str2.equals(str3);
        }
        return false;
    }

    public int hashCode() {
        String str = this.tokenType;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.accessToken;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.tokenType);
        parcel.writeString(this.accessToken);
    }

    public OAuth2Token(String str, String str2) {
        this.tokenType = str;
        this.accessToken = str2;
    }

    private OAuth2Token(Parcel parcel) {
        this.tokenType = parcel.readString();
        this.accessToken = parcel.readString();
    }
}
