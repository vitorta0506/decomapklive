package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.x1;
import com.google.common.primitives.h;
/* loaded from: classes.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public static final Parcelable.Creator<MotionPhotoMetadata> CREATOR = new a();
    public final long photoPresentationTimestampUs;
    public final long photoSize;
    public final long photoStartPosition;
    public final long videoSize;
    public final long videoStartPosition;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MotionPhotoMetadata> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MotionPhotoMetadata createFromParcel(Parcel parcel) {
            return new MotionPhotoMetadata(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MotionPhotoMetadata[] newArray(int i9) {
            return new MotionPhotoMetadata[i9];
        }
    }

    /* synthetic */ MotionPhotoMetadata(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ k1 N() {
        return o2.a.b(this);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ byte[] e1() {
        return o2.a.a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MotionPhotoMetadata.class != obj.getClass()) {
            return false;
        }
        MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
        return this.photoStartPosition == motionPhotoMetadata.photoStartPosition && this.photoSize == motionPhotoMetadata.photoSize && this.photoPresentationTimestampUs == motionPhotoMetadata.photoPresentationTimestampUs && this.videoStartPosition == motionPhotoMetadata.videoStartPosition && this.videoSize == motionPhotoMetadata.videoSize;
    }

    public int hashCode() {
        return ((((((((527 + h.e(this.photoStartPosition)) * 31) + h.e(this.photoSize)) * 31) + h.e(this.photoPresentationTimestampUs)) * 31) + h.e(this.videoStartPosition)) * 31) + h.e(this.videoSize);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.photoStartPosition + ", photoSize=" + this.photoSize + ", photoPresentationTimestampUs=" + this.photoPresentationTimestampUs + ", videoStartPosition=" + this.videoStartPosition + ", videoSize=" + this.videoSize;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.photoStartPosition);
        parcel.writeLong(this.photoSize);
        parcel.writeLong(this.photoPresentationTimestampUs);
        parcel.writeLong(this.videoStartPosition);
        parcel.writeLong(this.videoSize);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }

    public MotionPhotoMetadata(long j10, long j11, long j12, long j13, long j14) {
        this.photoStartPosition = j10;
        this.photoSize = j11;
        this.photoPresentationTimestampUs = j12;
        this.videoStartPosition = j13;
        this.videoSize = j14;
    }

    private MotionPhotoMetadata(Parcel parcel) {
        this.photoStartPosition = parcel.readLong();
        this.photoSize = parcel.readLong();
        this.photoPresentationTimestampUs = parcel.readLong();
        this.videoStartPosition = parcel.readLong();
        this.videoSize = parcel.readLong();
    }
}
