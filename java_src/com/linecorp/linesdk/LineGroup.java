package com.linecorp.linesdk;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class LineGroup implements Parcelable {
    public static final Parcelable.Creator<LineGroup> CREATOR = new a();
    @NonNull
    private final String groupId;
    @NonNull
    private final String groupName;
    @Nullable
    private final Uri pictureUrl;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineGroup> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineGroup createFromParcel(Parcel parcel) {
            return new LineGroup(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineGroup[] newArray(int i9) {
            return new LineGroup[i9];
        }
    }

    /* synthetic */ LineGroup(Parcel parcel, a aVar) {
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineGroup lineGroup = (LineGroup) obj;
        if (this.groupId.equals(lineGroup.groupId) && this.groupName.equals(lineGroup.groupName)) {
            Uri uri = this.pictureUrl;
            Uri uri2 = lineGroup.pictureUrl;
            return uri == null ? uri2 == null : uri.equals(uri2);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.groupId.hashCode() * 31) + this.groupName.hashCode()) * 31;
        Uri uri = this.pictureUrl;
        return hashCode + (uri != null ? uri.hashCode() : 0);
    }

    public String toString() {
        return "LineProfile{groupName='" + this.groupName + "', groupId='" + this.groupId + "', pictureUrl='" + this.pictureUrl + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.groupId);
        parcel.writeString(this.groupName);
        parcel.writeParcelable(this.pictureUrl, i9);
    }

    public LineGroup(@NonNull String str, @NonNull String str2, @Nullable Uri uri) {
        this.groupId = str;
        this.groupName = str2;
        this.pictureUrl = uri;
    }

    private LineGroup(@NonNull Parcel parcel) {
        this.groupId = parcel.readString();
        this.groupName = parcel.readString();
        this.pictureUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
