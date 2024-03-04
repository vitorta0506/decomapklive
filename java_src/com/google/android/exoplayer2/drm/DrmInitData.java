package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new a();
    private int hashCode;
    public final int schemeDataCount;
    private final SchemeData[] schemeDatas;
    @Nullable
    public final String schemeType;

    /* loaded from: classes.dex */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new a();
        @Nullable
        public final byte[] data;
        private int hashCode;
        @Nullable
        public final String licenseServerUrl;
        public final String mimeType;
        public final UUID uuid;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<SchemeData> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SchemeData[] newArray(int i9) {
                return new SchemeData[i9];
            }
        }

        public SchemeData(UUID uuid, String str, @Nullable byte[] bArr) {
            this(uuid, null, str, bArr);
        }

        @CheckResult
        public SchemeData a(@Nullable byte[] bArr) {
            return new SchemeData(this.uuid, this.licenseServerUrl, this.mimeType, bArr);
        }

        public boolean b(UUID uuid) {
            return com.google.android.exoplayer2.i.f5996a.equals(this.uuid) || uuid.equals(this.uuid);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof SchemeData) {
                if (obj == this) {
                    return true;
                }
                SchemeData schemeData = (SchemeData) obj;
                return com.google.android.exoplayer2.util.l0.c(this.licenseServerUrl, schemeData.licenseServerUrl) && com.google.android.exoplayer2.util.l0.c(this.mimeType, schemeData.mimeType) && com.google.android.exoplayer2.util.l0.c(this.uuid, schemeData.uuid) && Arrays.equals(this.data, schemeData.data);
            }
            return false;
        }

        public int hashCode() {
            if (this.hashCode == 0) {
                int hashCode = this.uuid.hashCode() * 31;
                String str = this.licenseServerUrl;
                this.hashCode = ((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.mimeType.hashCode()) * 31) + Arrays.hashCode(this.data);
            }
            return this.hashCode;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeLong(this.uuid.getMostSignificantBits());
            parcel.writeLong(this.uuid.getLeastSignificantBits());
            parcel.writeString(this.licenseServerUrl);
            parcel.writeString(this.mimeType);
            parcel.writeByteArray(this.data);
        }

        public SchemeData(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr) {
            this.uuid = (UUID) com.google.android.exoplayer2.util.a.e(uuid);
            this.licenseServerUrl = str;
            this.mimeType = (String) com.google.android.exoplayer2.util.a.e(str2);
            this.data = bArr;
        }

        SchemeData(Parcel parcel) {
            this.uuid = new UUID(parcel.readLong(), parcel.readLong());
            this.licenseServerUrl = parcel.readString();
            this.mimeType = (String) com.google.android.exoplayer2.util.l0.j(parcel.readString());
            this.data = parcel.createByteArray();
        }
    }

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<DrmInitData> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DrmInitData[] newArray(int i9) {
            return new DrmInitData[i9];
        }
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        UUID uuid = com.google.android.exoplayer2.i.f5996a;
        if (uuid.equals(schemeData.uuid)) {
            return uuid.equals(schemeData2.uuid) ? 0 : 1;
        }
        return schemeData.uuid.compareTo(schemeData2.uuid);
    }

    @CheckResult
    public DrmInitData b(@Nullable String str) {
        return com.google.android.exoplayer2.util.l0.c(this.schemeType, str) ? this : new DrmInitData(str, false, this.schemeDatas);
    }

    public SchemeData c(int i9) {
        return this.schemeDatas[i9];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DrmInitData.class != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        return com.google.android.exoplayer2.util.l0.c(this.schemeType, drmInitData.schemeType) && Arrays.equals(this.schemeDatas, drmInitData.schemeDatas);
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeType;
            this.hashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.schemeDatas);
        }
        return this.hashCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.schemeType);
        parcel.writeTypedArray(this.schemeDatas, 0);
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this(null, schemeDataArr);
    }

    public DrmInitData(@Nullable String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    private DrmInitData(@Nullable String str, boolean z10, SchemeData... schemeDataArr) {
        this.schemeType = str;
        schemeDataArr = z10 ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        this.schemeDatas = schemeDataArr;
        this.schemeDataCount = schemeDataArr.length;
        Arrays.sort(schemeDataArr, this);
    }

    DrmInitData(Parcel parcel) {
        this.schemeType = parcel.readString();
        SchemeData[] schemeDataArr = (SchemeData[]) com.google.android.exoplayer2.util.l0.j((SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR));
        this.schemeDatas = schemeDataArr;
        this.schemeDataCount = schemeDataArr.length;
    }
}
