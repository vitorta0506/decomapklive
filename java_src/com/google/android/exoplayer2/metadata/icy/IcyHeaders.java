package com.google.android.exoplayer2.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
/* loaded from: classes.dex */
public final class IcyHeaders implements Metadata.Entry {
    public static final Parcelable.Creator<IcyHeaders> CREATOR = new a();
    public static final String REQUEST_HEADER_ENABLE_METADATA_NAME = "Icy-MetaData";
    public static final String REQUEST_HEADER_ENABLE_METADATA_VALUE = "1";
    private static final String RESPONSE_HEADER_BITRATE = "icy-br";
    private static final String RESPONSE_HEADER_GENRE = "icy-genre";
    private static final String RESPONSE_HEADER_METADATA_INTERVAL = "icy-metaint";
    private static final String RESPONSE_HEADER_NAME = "icy-name";
    private static final String RESPONSE_HEADER_PUB = "icy-pub";
    private static final String RESPONSE_HEADER_URL = "icy-url";
    private static final String TAG = "IcyHeaders";
    public final int bitrate;
    @Nullable
    public final String genre;
    public final boolean isPublic;
    public final int metadataInterval;
    @Nullable
    public final String name;
    @Nullable
    public final String url;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<IcyHeaders> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public IcyHeaders createFromParcel(Parcel parcel) {
            return new IcyHeaders(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public IcyHeaders[] newArray(int i9) {
            return new IcyHeaders[i9];
        }
    }

    public IcyHeaders(int i9, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z10, int i10) {
        com.google.android.exoplayer2.util.a.a(i10 == -1 || i10 > 0);
        this.bitrate = i9;
        this.genre = str;
        this.name = str2;
        this.url = str3;
        this.isPublic = z10;
        this.metadataInterval = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.icy.IcyHeaders a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r13) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.metadata.icy.IcyHeaders.a(java.util.Map):com.google.android.exoplayer2.metadata.icy.IcyHeaders");
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
        if (obj == null || IcyHeaders.class != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        return this.bitrate == icyHeaders.bitrate && l0.c(this.genre, icyHeaders.genre) && l0.c(this.name, icyHeaders.name) && l0.c(this.url, icyHeaders.url) && this.isPublic == icyHeaders.isPublic && this.metadataInterval == icyHeaders.metadataInterval;
    }

    public int hashCode() {
        int i9 = (527 + this.bitrate) * 31;
        String str = this.genre;
        int hashCode = (i9 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.url;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isPublic ? 1 : 0)) * 31) + this.metadataInterval;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.name + "\", genre=\"" + this.genre + "\", bitrate=" + this.bitrate + ", metadataInterval=" + this.metadataInterval;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.bitrate);
        parcel.writeString(this.genre);
        parcel.writeString(this.name);
        parcel.writeString(this.url);
        l0.Q0(parcel, this.isPublic);
        parcel.writeInt(this.metadataInterval);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public void y0(x1.b bVar) {
        String str = this.name;
        if (str != null) {
            bVar.g0(str);
        }
        String str2 = this.genre;
        if (str2 != null) {
            bVar.X(str2);
        }
    }

    IcyHeaders(Parcel parcel) {
        this.bitrate = parcel.readInt();
        this.genre = parcel.readString();
        this.name = parcel.readString();
        this.url = parcel.readString();
        this.isPublic = l0.D0(parcel);
        this.metadataInterval = parcel.readInt();
    }
}
