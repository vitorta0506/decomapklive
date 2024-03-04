package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new a();
    @Nullable
    public final String description;
    public final String url;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<UrlLinkFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public UrlLinkFrame[] newArray(int i9) {
            return new UrlLinkFrame[i9];
        }
    }

    public UrlLinkFrame(String str, @Nullable String str2, String str3) {
        super(str);
        this.description = str2;
        this.url = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || UrlLinkFrame.class != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        return this.f6328id.equals(urlLinkFrame.f6328id) && l0.c(this.description, urlLinkFrame.description) && l0.c(this.url, urlLinkFrame.url);
    }

    public int hashCode() {
        int hashCode = (527 + this.f6328id.hashCode()) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.url;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f6328id + ": url=" + this.url;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f6328id);
        parcel.writeString(this.description);
        parcel.writeString(this.url);
    }

    UrlLinkFrame(Parcel parcel) {
        super((String) l0.j(parcel.readString()));
        this.description = parcel.readString();
        this.url = (String) l0.j(parcel.readString());
    }
}
