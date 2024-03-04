package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes4.dex */
public class TwitterAuthToken extends com.twitter.sdk.android.core.a implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthToken> CREATOR = new a();
    @SerializedName("secret")
    public final String secret;
    @SerializedName(JThirdPlatFormInterface.KEY_TOKEN)
    public final String token;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<TwitterAuthToken> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TwitterAuthToken createFromParcel(Parcel parcel) {
            return new TwitterAuthToken(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TwitterAuthToken[] newArray(int i9) {
            return new TwitterAuthToken[i9];
        }
    }

    /* synthetic */ TwitterAuthToken(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TwitterAuthToken) {
            TwitterAuthToken twitterAuthToken = (TwitterAuthToken) obj;
            String str = this.secret;
            if (str == null ? twitterAuthToken.secret == null : str.equals(twitterAuthToken.secret)) {
                String str2 = this.token;
                String str3 = twitterAuthToken.token;
                return str2 == null ? str3 == null : str2.equals(str3);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.token;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.secret;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "token=" + this.token + ",secret=" + this.secret;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.token);
        parcel.writeString(this.secret);
    }

    public TwitterAuthToken(String str, String str2) {
        this.token = str;
        this.secret = str2;
    }

    private TwitterAuthToken(Parcel parcel) {
        this.token = parcel.readString();
        this.secret = parcel.readString();
    }
}
