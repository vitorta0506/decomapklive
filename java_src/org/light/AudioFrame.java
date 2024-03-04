package org.light;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public class AudioFrame implements Parcelable {
    public static final Parcelable.Creator<AudioFrame> CREATOR = new Parcelable.Creator<AudioFrame>() { // from class: org.light.AudioFrame.1
        @Override // android.os.Parcelable.Creator
        public AudioFrame createFromParcel(Parcel parcel) {
            return new AudioFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public AudioFrame[] newArray(int i9) {
            return new AudioFrame[i9];
        }
    };
    public ByteBuffer data;
    public long duration;
    public long length;
    public long pts;

    public AudioFrame(long j10, long j11, ByteBuffer byteBuffer) {
        this.pts = j10;
        this.length = j11;
        this.data = byteBuffer;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.pts);
        parcel.writeLong(this.length);
        byte[] bArr = new byte[(int) this.length];
        this.data.get(bArr);
        parcel.writeByteArray(bArr);
    }

    protected AudioFrame(Parcel parcel) {
        this.pts = parcel.readLong();
        long readLong = parcel.readLong();
        this.length = readLong;
        byte[] bArr = new byte[(int) readLong];
        parcel.readByteArray(bArr);
        this.data = ByteBuffer.wrap(bArr);
    }
}
