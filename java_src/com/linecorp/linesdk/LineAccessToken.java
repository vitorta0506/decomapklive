package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class LineAccessToken implements Parcelable {
    public static final Parcelable.Creator<LineAccessToken> CREATOR = new a();
    @NonNull
    private final String accessToken;
    private final long expiresInMillis;
    private final long issuedClientTimeMillis;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineAccessToken> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineAccessToken createFromParcel(Parcel parcel) {
            return new LineAccessToken(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineAccessToken[] newArray(int i9) {
            return new LineAccessToken[i9];
        }
    }

    /* synthetic */ LineAccessToken(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public String a() {
        return this.accessToken;
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
        LineAccessToken lineAccessToken = (LineAccessToken) obj;
        if (this.expiresInMillis == lineAccessToken.expiresInMillis && this.issuedClientTimeMillis == lineAccessToken.issuedClientTimeMillis) {
            return this.accessToken.equals(lineAccessToken.accessToken);
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.expiresInMillis;
        long j11 = this.issuedClientTimeMillis;
        return (((this.accessToken.hashCode() * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "LineAccessToken{accessToken='" + yc.a.a(this.accessToken) + "', expiresInMillis=" + this.expiresInMillis + ", issuedClientTimeMillis=" + this.issuedClientTimeMillis + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.accessToken);
        parcel.writeLong(this.expiresInMillis);
        parcel.writeLong(this.issuedClientTimeMillis);
    }

    public LineAccessToken(@NonNull String str, long j10, long j11) {
        this.accessToken = str;
        this.expiresInMillis = j10;
        this.issuedClientTimeMillis = j11;
    }

    private LineAccessToken(@NonNull Parcel parcel) {
        this.accessToken = parcel.readString();
        this.expiresInMillis = parcel.readLong();
        this.issuedClientTimeMillis = parcel.readLong();
    }
}
