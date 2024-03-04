package com.guochao.faceshow.aaspring.views.doodle;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.internal.view.SupportMenu;
/* loaded from: classes3.dex */
public class DoodleParams implements Parcelable {
    public static final Parcelable.Creator<DoodleParams> CREATOR = new a();
    private static b sDialogInterceptor;
    public long mChangePanelVisibilityDelay;
    public String mImagePath;
    public boolean mIsDrawableOutside;
    public boolean mIsFullScreen;
    public float mMaxScale;
    public float mMinScale;
    public boolean mOptimizeDrawing;
    public int mPaintColor;
    public float mPaintPixelSize;
    public float mPaintUnitSize;
    public String mSavePath;
    public boolean mSavePathIsDir;
    public boolean mSupportScaleItem;
    public Uri mUri;
    public float mZoomerScale;

    /* loaded from: classes3.dex */
    public enum DialogType {
        SAVE,
        CLEAR_ALL,
        COLOR_PICKER
    }

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<DoodleParams> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DoodleParams createFromParcel(Parcel parcel) {
            return new DoodleParams(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public DoodleParams[] newArray(int i9) {
            return new DoodleParams[i9];
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
    }

    public DoodleParams() {
        this.mChangePanelVisibilityDelay = 200L;
        this.mZoomerScale = 2.5f;
        this.mIsFullScreen = false;
        this.mPaintPixelSize = 25.0f;
        this.mPaintUnitSize = -1.0f;
        this.mMinScale = 0.25f;
        this.mMaxScale = 5.0f;
        this.mPaintColor = SupportMenu.CATEGORY_MASK;
        this.mSupportScaleItem = true;
        this.mOptimizeDrawing = true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.mImagePath);
        parcel.writeParcelable(this.mUri, i9);
        parcel.writeString(this.mSavePath);
        parcel.writeByte(this.mSavePathIsDir ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mIsDrawableOutside ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.mChangePanelVisibilityDelay);
        parcel.writeFloat(this.mZoomerScale);
        parcel.writeByte(this.mIsFullScreen ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.mPaintPixelSize);
        parcel.writeFloat(this.mPaintUnitSize);
        parcel.writeFloat(this.mMinScale);
        parcel.writeFloat(this.mMaxScale);
        parcel.writeInt(this.mPaintColor);
        parcel.writeByte(this.mSupportScaleItem ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mOptimizeDrawing ? (byte) 1 : (byte) 0);
    }

    protected DoodleParams(Parcel parcel) {
        this.mChangePanelVisibilityDelay = 200L;
        this.mZoomerScale = 2.5f;
        this.mIsFullScreen = false;
        this.mPaintPixelSize = 25.0f;
        this.mPaintUnitSize = -1.0f;
        this.mMinScale = 0.25f;
        this.mMaxScale = 5.0f;
        this.mPaintColor = SupportMenu.CATEGORY_MASK;
        this.mSupportScaleItem = true;
        this.mOptimizeDrawing = true;
        this.mImagePath = parcel.readString();
        this.mUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mSavePath = parcel.readString();
        this.mSavePathIsDir = parcel.readByte() != 0;
        this.mIsDrawableOutside = parcel.readByte() != 0;
        this.mChangePanelVisibilityDelay = parcel.readLong();
        this.mZoomerScale = parcel.readFloat();
        this.mIsFullScreen = parcel.readByte() != 0;
        this.mPaintPixelSize = parcel.readFloat();
        this.mPaintUnitSize = parcel.readFloat();
        this.mMinScale = parcel.readFloat();
        this.mMaxScale = parcel.readFloat();
        this.mPaintColor = parcel.readInt();
        this.mSupportScaleItem = parcel.readByte() != 0;
        this.mOptimizeDrawing = parcel.readByte() != 0;
    }
}
