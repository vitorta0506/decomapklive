package com.google.android.exoplayer2.metadata.emsg;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x1;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class EventMessage implements Metadata.Entry {
    @VisibleForTesting
    public static final String ID3_SCHEME_ID_AOM = "https://aomedia.org/emsg/ID3";
    private static final String ID3_SCHEME_ID_APPLE = "https://developer.apple.com/streaming/emsg-id3";
    @VisibleForTesting
    public static final String SCTE35_SCHEME_ID = "urn:scte:scte35:2014:bin";
    public final long durationMs;
    private int hashCode;

    /* renamed from: id  reason: collision with root package name */
    public final long f6327id;
    public final byte[] messageData;
    public final String schemeIdUri;
    public final String value;
    private static final k1 ID3_FORMAT = new k1.b().e0("application/id3").E();
    private static final k1 SCTE35_FORMAT = new k1.b().e0("application/x-scte35").E();
    public static final Parcelable.Creator<EventMessage> CREATOR = new a();

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<EventMessage> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public EventMessage createFromParcel(Parcel parcel) {
            return new EventMessage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public EventMessage[] newArray(int i9) {
            return new EventMessage[i9];
        }
    }

    public EventMessage(String str, String str2, long j10, long j11, byte[] bArr) {
        this.schemeIdUri = str;
        this.value = str2;
        this.durationMs = j10;
        this.f6327id = j11;
        this.messageData = bArr;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public k1 N() {
        String str = this.schemeIdUri;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals(SCTE35_SCHEME_ID)) {
                    c10 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals(ID3_SCHEME_ID_AOM)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals(ID3_SCHEME_ID_APPLE)) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return SCTE35_FORMAT;
            case 1:
            case 2:
                return ID3_FORMAT;
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    @Nullable
    public byte[] e1() {
        if (N() != null) {
            return this.messageData;
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EventMessage.class != obj.getClass()) {
            return false;
        }
        EventMessage eventMessage = (EventMessage) obj;
        return this.durationMs == eventMessage.durationMs && this.f6327id == eventMessage.f6327id && l0.c(this.schemeIdUri, eventMessage.schemeIdUri) && l0.c(this.value, eventMessage.value) && Arrays.equals(this.messageData, eventMessage.messageData);
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            String str = this.schemeIdUri;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.value;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            long j10 = this.durationMs;
            long j11 = this.f6327id;
            this.hashCode = ((((((hashCode + hashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.messageData);
        }
        return this.hashCode;
    }

    public String toString() {
        return "EMSG: scheme=" + this.schemeIdUri + ", id=" + this.f6327id + ", durationMs=" + this.durationMs + ", value=" + this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.schemeIdUri);
        parcel.writeString(this.value);
        parcel.writeLong(this.durationMs);
        parcel.writeLong(this.f6327id);
        parcel.writeByteArray(this.messageData);
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    public /* synthetic */ void y0(x1.b bVar) {
        o2.a.c(this, bVar);
    }

    EventMessage(Parcel parcel) {
        this.schemeIdUri = (String) l0.j(parcel.readString());
        this.value = (String) l0.j(parcel.readString());
        this.durationMs = parcel.readLong();
        this.f6327id = parcel.readLong();
        this.messageData = (byte[]) l0.j(parcel.createByteArray());
    }
}
