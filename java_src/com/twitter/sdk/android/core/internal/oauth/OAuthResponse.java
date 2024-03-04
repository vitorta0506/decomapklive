package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.sdk.android.core.TwitterAuthToken;
/* loaded from: classes4.dex */
public class OAuthResponse implements Parcelable {
    public static final Parcelable.Creator<OAuthResponse> CREATOR = new a();
    public final TwitterAuthToken authToken;
    public final long userId;
    public final String userName;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<OAuthResponse> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public OAuthResponse createFromParcel(Parcel parcel) {
            return new OAuthResponse(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public OAuthResponse[] newArray(int i9) {
            return new OAuthResponse[i9];
        }
    }

    /* synthetic */ OAuthResponse(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "authToken=" + this.authToken + ",userName=" + this.userName + ",userId=" + this.userId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.authToken, i9);
        parcel.writeString(this.userName);
        parcel.writeLong(this.userId);
    }

    public OAuthResponse(TwitterAuthToken twitterAuthToken, String str, long j10) {
        this.authToken = twitterAuthToken;
        this.userName = str;
        this.userId = j10;
    }

    private OAuthResponse(Parcel parcel) {
        this.authToken = (TwitterAuthToken) parcel.readParcelable(TwitterAuthToken.class.getClassLoader());
        this.userName = parcel.readString();
        this.userId = parcel.readLong();
    }
}
