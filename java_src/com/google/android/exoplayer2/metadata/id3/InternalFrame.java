package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new a();
    public static final String ID = "----";
    public final String description;
    public final String domain;
    public final String text;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<InternalFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public InternalFrame[] newArray(int i9) {
            return new InternalFrame[i9];
        }
    }

    public InternalFrame(String str, String str2, String str3) {
        super(ID);
        this.domain = str;
        this.description = str2;
        this.text = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        return l0.c(this.description, internalFrame.description) && l0.c(this.domain, internalFrame.domain) && l0.c(this.text, internalFrame.text);
    }

    public int hashCode() {
        String str = this.domain;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.description;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f6328id + ": domain=" + this.domain + ", description=" + this.description;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f6328id);
        parcel.writeString(this.domain);
        parcel.writeString(this.text);
    }

    InternalFrame(Parcel parcel) {
        super(ID);
        this.domain = (String) l0.j(parcel.readString());
        this.description = (String) l0.j(parcel.readString());
        this.text = (String) l0.j(parcel.readString());
    }
}
