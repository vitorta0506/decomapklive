package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class TwitterAuthConfig implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthConfig> CREATOR = new a();
    public static final int DEFAULT_AUTH_REQUEST_CODE = 140;
    private final String consumerKey;
    private final String consumerSecret;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<TwitterAuthConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TwitterAuthConfig createFromParcel(Parcel parcel) {
            return new TwitterAuthConfig(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TwitterAuthConfig[] newArray(int i9) {
            return new TwitterAuthConfig[i9];
        }
    }

    /* synthetic */ TwitterAuthConfig(Parcel parcel, a aVar) {
        this(parcel);
    }

    static String d(String str) {
        if (str != null) {
            return str.trim();
        }
        return null;
    }

    public String a() {
        return this.consumerKey;
    }

    public String b() {
        return this.consumerSecret;
    }

    public int c() {
        return 140;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.consumerKey);
        parcel.writeString(this.consumerSecret);
    }

    public TwitterAuthConfig(String str, String str2) {
        if (str != null && str2 != null) {
            this.consumerKey = d(str);
            this.consumerSecret = d(str2);
            return;
        }
        throw new IllegalArgumentException("TwitterAuthConfig must not be created with null consumer key or secret.");
    }

    private TwitterAuthConfig(Parcel parcel) {
        this.consumerKey = parcel.readString();
        this.consumerSecret = parcel.readString();
    }
}
