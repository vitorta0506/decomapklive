package org.light.bean;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SharedMemory;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
/* loaded from: classes7.dex */
public class LightDelegateAgentRequest implements Parcelable {
    public static final Parcelable.Creator<LightDelegateAgentRequest> CREATOR = new Parcelable.Creator<LightDelegateAgentRequest>() { // from class: org.light.bean.LightDelegateAgentRequest.1
        @Override // android.os.Parcelable.Creator
        public LightDelegateAgentRequest createFromParcel(Parcel parcel) {
            return new LightDelegateAgentRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightDelegateAgentRequest[] newArray(int i9) {
            return new LightDelegateAgentRequest[i9];
        }
    };
    public byte[] camera_frame_data_;
    public int camera_frame_height_;
    public int camera_frame_width_;
    public String json_string_;
    public String key_;
    public long nativeContext;
    public SharedMemory sharedMemory;

    public LightDelegateAgentRequest(String str, byte[] bArr, int i9, int i10, String str2, long j10) {
        this.key_ = str;
        this.camera_frame_data_ = bArr;
        this.camera_frame_width_ = i9;
        this.camera_frame_height_ = i10;
        this.json_string_ = str2;
        this.nativeContext = j10;
    }

    private native void nativeRelease();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        SharedMemory sharedMemory = this.sharedMemory;
        if (sharedMemory != null) {
            sharedMemory.close();
        }
        nativeRelease();
    }

    public void getDataFromSharedMemory() {
        if (Build.VERSION.SDK_INT >= 27) {
            try {
                SharedMemory sharedMemory = this.sharedMemory;
                if (sharedMemory == null) {
                    Log.e("TAG", "yzm sharedMemory return");
                    return;
                }
                ByteBuffer mapReadOnly = sharedMemory.mapReadOnly();
                byte[] bArr = new byte[mapReadOnly.limit() - mapReadOnly.position()];
                mapReadOnly.get(bArr);
                this.camera_frame_data_ = bArr;
                SharedMemory.unmap(mapReadOnly);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void putDataToSharedMemory() {
        SharedMemory sharedMemory = this.sharedMemory;
        if (sharedMemory != null) {
            sharedMemory.close();
            this.sharedMemory = null;
        }
        if (Build.VERSION.SDK_INT >= 27) {
            try {
                SharedMemory create = SharedMemory.create("SharedMemory" + System.currentTimeMillis(), this.camera_frame_data_.length);
                this.sharedMemory = create;
                ByteBuffer mapReadWrite = create.mapReadWrite();
                mapReadWrite.put(this.camera_frame_data_);
                this.sharedMemory.setProtect(OsConstants.PROT_READ);
                SharedMemory.unmap(mapReadWrite);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.os.Parcelable
    @RequiresApi(api = 27)
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.key_);
        parcel.writeByteArray(this.camera_frame_data_);
        parcel.writeInt(this.camera_frame_width_);
        parcel.writeInt(this.camera_frame_height_);
        parcel.writeString(this.json_string_);
        parcel.writeLong(this.nativeContext);
        parcel.writeParcelable(this.sharedMemory, i9);
    }

    @RequiresApi(api = 27)
    protected LightDelegateAgentRequest(Parcel parcel) {
        this.key_ = parcel.readString();
        this.camera_frame_data_ = parcel.createByteArray();
        this.camera_frame_width_ = parcel.readInt();
        this.camera_frame_height_ = parcel.readInt();
        this.json_string_ = parcel.readString();
        this.nativeContext = parcel.readLong();
        this.sharedMemory = (SharedMemory) parcel.readParcelable(SharedMemory.class.getClassLoader());
    }
}
