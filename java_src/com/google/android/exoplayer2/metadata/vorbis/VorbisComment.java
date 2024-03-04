package com.google.android.exoplayer2.metadata.vorbis;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class VorbisComment extends com.google.android.exoplayer2.metadata.flac.VorbisComment {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<VorbisComment> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public VorbisComment createFromParcel(Parcel parcel) {
            return new VorbisComment(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public VorbisComment[] newArray(int i9) {
            return new VorbisComment[i9];
        }
    }

    public VorbisComment(String str, String str2) {
        super(str, str2);
    }

    VorbisComment(Parcel parcel) {
        super(parcel);
    }
}
