package org.light;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import org.light.shared.SharedBytes;
import org.light.shared.SharedTexture;
/* loaded from: classes7.dex */
public class PhotoClip extends ClipAsset {
    public static final Parcelable.Creator<PhotoClip> CREATOR = new Parcelable.Creator<PhotoClip>() { // from class: org.light.PhotoClip.1
        @Override // android.os.Parcelable.Creator
        public PhotoClip createFromParcel(Parcel parcel) {
            return new PhotoClip(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PhotoClip[] newArray(int i9) {
            return new PhotoClip[i9];
        }
    };
    private static final String KEY_sharedBytes = "sharedBytes";
    private static final String KEY_sharedTexture = "sharedTexture";
    private Bundle bundle;
    public byte[] bytes;
    public int height;
    public String photoEffectPath;
    private SharedBytes sharedBytes;
    private SharedTexture sharedTexture;
    public int texId;
    public int width;

    public PhotoClip() {
        this.photoEffectPath = "";
        this.texId = -1;
        this.width = 0;
        this.height = 0;
        this.bundle = null;
        this.sharedBytes = null;
        this.sharedTexture = null;
        this.type = ClipAsset.PHOTO;
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        SharedBytes sharedBytes = this.sharedBytes;
        if (sharedBytes != null) {
            sharedBytes.release();
            this.sharedBytes = null;
        }
        SharedTexture sharedTexture = this.sharedTexture;
        if (sharedTexture != null) {
            sharedTexture.release();
            this.sharedTexture = null;
        }
    }

    @Override // org.light.ClipAsset, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeString(this.photoEffectPath);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        this.bundle = new Bundle();
        if (this.bytes != null) {
            if (this.sharedBytes == null) {
                this.sharedBytes = new SharedBytes();
            }
            this.sharedBytes.setBytes(this.bytes);
            this.bundle.putParcelable(KEY_sharedBytes, this.sharedBytes);
        }
        if (this.texId > 0) {
            if (this.sharedTexture == null) {
                this.sharedTexture = new SharedTexture();
            }
            this.sharedTexture.setTexture(this.texId, this.width, this.height);
            this.bundle.putParcelable(KEY_sharedTexture, this.sharedTexture);
        }
        parcel.writeBundle(this.bundle);
    }

    protected PhotoClip(Parcel parcel) {
        super(parcel);
        this.photoEffectPath = "";
        this.texId = -1;
        this.width = 0;
        this.height = 0;
        this.bundle = null;
        this.sharedBytes = null;
        this.sharedTexture = null;
        this.photoEffectPath = parcel.readString();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        Bundle readBundle = parcel.readBundle(getClass().getClassLoader());
        this.bundle = readBundle;
        if (readBundle != null) {
            SharedBytes sharedBytes = (SharedBytes) readBundle.getParcelable(KEY_sharedBytes);
            this.sharedBytes = sharedBytes;
            if (sharedBytes != null) {
                this.bytes = sharedBytes.getBytes();
            }
            SharedTexture sharedTexture = (SharedTexture) this.bundle.getParcelable(KEY_sharedTexture);
            this.sharedTexture = sharedTexture;
            if (sharedTexture != null) {
                this.texId = sharedTexture.getTexture();
            }
        }
    }
}
