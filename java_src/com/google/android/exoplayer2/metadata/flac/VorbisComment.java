package com.google.android.exoplayer2.metadata.flac;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.share.internal.ShareConstants;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import com.huawei.hms.framework.common.ContainerUtils;
@Deprecated
/* loaded from: classes.dex */
public class VorbisComment implements Metadata.Entry {
    public static final Parcelable.Creator<VorbisComment> CREATOR = new a();
    public final String key;
    public final String value;

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
        this.key = str;
        this.value = str2;
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
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VorbisComment vorbisComment = (VorbisComment) obj;
        return this.key.equals(vorbisComment.key) && this.value.equals(vorbisComment.value);
    }

    public int hashCode() {
        return ((527 + this.key.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "VC: " + this.key + ContainerUtils.KEY_VALUE_DELIMITER + this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.key);
        parcel.writeString(this.value);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void y0(x1.b bVar) {
        String str = this.key;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    c10 = 0;
                    break;
                }
                break;
            case 79833656:
                if (str.equals(ShareConstants.TITLE)) {
                    c10 = 1;
                    break;
                }
                break;
            case 428414940:
                if (str.equals(ShareConstants.DESCRIPTION)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                bVar.L(this.value);
                return;
            case 1:
                bVar.i0(this.value);
                return;
            case 2:
                bVar.S(this.value);
                return;
            case 3:
                bVar.K(this.value);
                return;
            case 4:
                bVar.M(this.value);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VorbisComment(Parcel parcel) {
        this.key = (String) l0.j(parcel.readString());
        this.value = (String) l0.j(parcel.readString());
    }
}
