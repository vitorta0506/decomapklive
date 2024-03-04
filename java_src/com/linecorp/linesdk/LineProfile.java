package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class LineProfile implements Parcelable {
    public static final Parcelable.Creator<LineProfile> CREATOR = new a();
    @NonNull
    private final String displayName;
    @Nullable
    private final Uri pictureUrl;
    @Nullable
    private final String statusMessage;
    @NonNull
    private final String userId;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineProfile> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineProfile createFromParcel(Parcel parcel) {
            return new LineProfile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineProfile[] newArray(int i9) {
            return new LineProfile[i9];
        }
    }

    public LineProfile(@NonNull String str, @NonNull String str2, @Nullable Uri uri, @Nullable String str3) {
        this.userId = str;
        this.displayName = str2;
        this.pictureUrl = uri;
        this.statusMessage = str3;
    }

    @NonNull
    public String a() {
        return this.displayName;
    }

    @Nullable
    public Uri b() {
        return this.pictureUrl;
    }

    @Nullable
    public String c() {
        return this.statusMessage;
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
        LineProfile lineProfile = (LineProfile) obj;
        if (this.userId.equals(lineProfile.userId) && this.displayName.equals(lineProfile.displayName)) {
            Uri uri = this.pictureUrl;
            if (uri == null ? lineProfile.pictureUrl == null : uri.equals(lineProfile.pictureUrl)) {
                String str = this.statusMessage;
                String str2 = lineProfile.statusMessage;
                return str != null ? str.equals(str2) : str2 == null;
            }
            return false;
        }
        return false;
    }

    @NonNull
    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((this.userId.hashCode() * 31) + this.displayName.hashCode()) * 31;
        Uri uri = this.pictureUrl;
        int hashCode2 = (hashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        String str = this.statusMessage;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "LineProfile{userId='" + this.userId + "', displayName='" + this.displayName + "', pictureUrl=" + this.pictureUrl + ", statusMessage='" + this.statusMessage + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userId);
        parcel.writeString(this.displayName);
        parcel.writeParcelable(this.pictureUrl, i9);
        parcel.writeString(this.statusMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LineProfile(@NonNull Parcel parcel) {
        this.userId = parcel.readString();
        this.displayName = parcel.readString();
        this.pictureUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.statusMessage = parcel.readString();
    }
}
