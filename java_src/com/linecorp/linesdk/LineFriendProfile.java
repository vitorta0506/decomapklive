package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class LineFriendProfile extends LineProfile {
    public static final Parcelable.Creator<LineFriendProfile> CREATOR = new a();
    @Nullable
    private final String overriddenDisplayName;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineFriendProfile> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineFriendProfile createFromParcel(Parcel parcel) {
            return new LineFriendProfile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineFriendProfile[] newArray(int i9) {
            return new LineFriendProfile[i9];
        }
    }

    public LineFriendProfile(@NonNull String str, @NonNull String str2, @Nullable Uri uri, @Nullable String str3, @NonNull String str4) {
        super(str, str2, uri, str3);
        this.overriddenDisplayName = str4;
    }

    @Override // com.linecorp.linesdk.LineProfile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof LineFriendProfile) && super.equals(obj)) {
            String str = this.overriddenDisplayName;
            String str2 = ((LineFriendProfile) obj).overriddenDisplayName;
            return str != null ? str.equals(str2) : str2 == null;
        }
        return false;
    }

    @Override // com.linecorp.linesdk.LineProfile
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.overriddenDisplayName;
        return hashCode + (str != null ? str.hashCode() : 0);
    }

    @Override // com.linecorp.linesdk.LineProfile
    public String toString() {
        return "LineFriendProfile{userId='" + getUserId() + "', displayName='" + a() + "', pictureUrl=" + b() + ", statusMessage='" + c() + "', overriddenDisplayName='" + this.overriddenDisplayName + "'}";
    }

    @Override // com.linecorp.linesdk.LineProfile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeString(this.overriddenDisplayName);
    }

    protected LineFriendProfile(@NonNull Parcel parcel) {
        super(parcel);
        this.overriddenDisplayName = parcel.readString();
    }
}
