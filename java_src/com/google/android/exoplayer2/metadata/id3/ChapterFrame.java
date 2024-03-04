package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new a();
    public static final String ID = "CHAP";
    public final String chapterId;
    public final long endOffset;
    public final int endTimeMs;
    public final long startOffset;
    public final int startTimeMs;
    private final Id3Frame[] subFrames;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<ChapterFrame> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ChapterFrame[] newArray(int i9) {
            return new ChapterFrame[i9];
        }
    }

    public ChapterFrame(String str, int i9, int i10, long j10, long j11, Id3Frame[] id3FrameArr) {
        super(ID);
        this.chapterId = str;
        this.startTimeMs = i9;
        this.endTimeMs = i10;
        this.startOffset = j10;
        this.endOffset = j11;
        this.subFrames = id3FrameArr;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterFrame.class != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        return this.startTimeMs == chapterFrame.startTimeMs && this.endTimeMs == chapterFrame.endTimeMs && this.startOffset == chapterFrame.startOffset && this.endOffset == chapterFrame.endOffset && l0.c(this.chapterId, chapterFrame.chapterId) && Arrays.equals(this.subFrames, chapterFrame.subFrames);
    }

    public int hashCode() {
        int i9 = (((((((527 + this.startTimeMs) * 31) + this.endTimeMs) * 31) + ((int) this.startOffset)) * 31) + ((int) this.endOffset)) * 31;
        String str = this.chapterId;
        return i9 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.chapterId);
        parcel.writeInt(this.startTimeMs);
        parcel.writeInt(this.endTimeMs);
        parcel.writeLong(this.startOffset);
        parcel.writeLong(this.endOffset);
        parcel.writeInt(this.subFrames.length);
        for (Id3Frame id3Frame : this.subFrames) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    ChapterFrame(Parcel parcel) {
        super(ID);
        this.chapterId = (String) l0.j(parcel.readString());
        this.startTimeMs = parcel.readInt();
        this.endTimeMs = parcel.readInt();
        this.startOffset = parcel.readLong();
        this.endOffset = parcel.readLong();
        int readInt = parcel.readInt();
        this.subFrames = new Id3Frame[readInt];
        for (int i9 = 0; i9 < readInt; i9++) {
            this.subFrames[i9] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
