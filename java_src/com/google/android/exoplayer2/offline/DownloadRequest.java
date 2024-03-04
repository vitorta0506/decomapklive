package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();
    @Nullable
    public final String customCacheKey;
    public final byte[] data;

    /* renamed from: id  reason: collision with root package name */
    public final String f6377id;
    @Nullable
    public final byte[] keySetId;
    @Nullable
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    /* loaded from: classes.dex */
    public static class UnsupportedRequestException extends IOException {
    }

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<DownloadRequest> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DownloadRequest[] newArray(int i9) {
            return new DownloadRequest[i9];
        }
    }

    DownloadRequest(Parcel parcel) {
        this.f6377id = (String) l0.j(parcel.readString());
        this.uri = Uri.parse((String) l0.j(parcel.readString()));
        this.mimeType = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i9 = 0; i9 < readInt; i9++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) l0.j(parcel.createByteArray());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof DownloadRequest) {
            DownloadRequest downloadRequest = (DownloadRequest) obj;
            return this.f6377id.equals(downloadRequest.f6377id) && this.uri.equals(downloadRequest.uri) && l0.c(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && l0.c(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.f6377id.hashCode() * 31 * 31) + this.uri.hashCode()) * 31;
        String str = this.mimeType;
        int hashCode2 = (((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31;
        String str2 = this.customCacheKey;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public String toString() {
        return this.mimeType + CertificateUtil.DELIMITER + this.f6377id;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f6377id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i10 = 0; i10 < this.streamKeys.size(); i10++) {
            parcel.writeParcelable(this.streamKeys.get(i10), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }
}
