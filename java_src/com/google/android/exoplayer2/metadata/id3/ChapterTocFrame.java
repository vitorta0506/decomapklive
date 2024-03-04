package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new a();
    public static final String ID = "CTOC";
    public final String[] children;
    public final String elementId;
    public final boolean isOrdered;
    public final boolean isRoot;
    private final Id3Frame[] subFrames;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ChapterTocFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ChapterTocFrame[] newArray(int i9) {
            return new ChapterTocFrame[i9];
        }
    }

    public ChapterTocFrame(String str, boolean z10, boolean z11, String[] strArr, Id3Frame[] id3FrameArr) {
        super(ID);
        this.elementId = str;
        this.isRoot = z10;
        this.isOrdered = z11;
        this.children = strArr;
        this.subFrames = id3FrameArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        return this.isRoot == chapterTocFrame.isRoot && this.isOrdered == chapterTocFrame.isOrdered && l0.c(this.elementId, chapterTocFrame.elementId) && Arrays.equals(this.children, chapterTocFrame.children) && Arrays.equals(this.subFrames, chapterTocFrame.subFrames);
    }

    public int hashCode() {
        int i9 = (((527 + (this.isRoot ? 1 : 0)) * 31) + (this.isOrdered ? 1 : 0)) * 31;
        String str = this.elementId;
        return i9 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.elementId);
        parcel.writeByte(this.isRoot ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isOrdered ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.children);
        parcel.writeInt(this.subFrames.length);
        for (Id3Frame id3Frame : this.subFrames) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    ChapterTocFrame(Parcel parcel) {
        super(ID);
        this.elementId = (String) l0.j(parcel.readString());
        this.isRoot = parcel.readByte() != 0;
        this.isOrdered = parcel.readByte() != 0;
        this.children = (String[]) l0.j(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.subFrames = new Id3Frame[readInt];
        for (int i9 = 0; i9 < readInt; i9++) {
            this.subFrames[i9] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
