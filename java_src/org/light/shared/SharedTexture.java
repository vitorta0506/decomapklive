package org.light.shared;

import android.hardware.HardwareBuffer;
import android.os.Build;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.light.NativeBuffer;
import org.light.utils.LightGLUtils;
import org.light.utils.LightLogUtil;
import org.light.utils.SimpleRenderer;
/* loaded from: classes7.dex */
public class SharedTexture implements Parcelable {
    private static final String TAG = "SharedTexture";
    private ParcelFileDescriptor fenceFd;
    private HardwareBuffer hwb;
    private NativeBuffer nativeBuffer;
    private int originTextureId;
    private SimpleRenderer simpleRenderer;
    private int textureHeight;
    private int textureWidth;
    private static final ConcurrentHashMap<Integer, TexId> texMap = new ConcurrentHashMap<>();
    public static final Parcelable.Creator<SharedTexture> CREATOR = new Parcelable.Creator<SharedTexture>() { // from class: org.light.shared.SharedTexture.1
        @Override // android.os.Parcelable.Creator
        public SharedTexture createFromParcel(Parcel parcel) {
            return new SharedTexture(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SharedTexture[] newArray(int i9) {
            return new SharedTexture[i9];
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class TexId {
        public AtomicLong refCnt;
        public int texId;

        public TexId(int i9, AtomicLong atomicLong) {
            this.texId = -1;
            new AtomicLong(0L);
            this.texId = i9;
            this.refCnt = atomicLong;
        }
    }

    public SharedTexture() {
        this.originTextureId = -1;
        this.textureWidth = 0;
        this.textureHeight = 0;
        this.nativeBuffer = null;
        this.simpleRenderer = null;
        this.hwb = null;
        this.fenceFd = null;
        if (ApiLevelHardwareBuffer()) {
            NativeBuffer.setFenceEnabled(true);
        }
    }

    public static boolean ApiLevelHardwareBuffer() {
        return Build.VERSION.SDK_INT >= 26;
    }

    private int acquireTexture() {
        int i9;
        ConcurrentHashMap<Integer, TexId> concurrentHashMap = texMap;
        synchronized (concurrentHashMap) {
            TexId texId = concurrentHashMap.get(Integer.valueOf(this.originTextureId));
            if (texId == null) {
                TexId texId2 = new TexId(LightGLUtils.createTexture(3553), new AtomicLong(1L));
                concurrentHashMap.put(Integer.valueOf(this.originTextureId), texId2);
                texId = texId2;
            } else {
                texId.refCnt.getAndIncrement();
            }
            i9 = texId.texId;
        }
        return i9;
    }

    private void releaseTexture() {
        ConcurrentHashMap<Integer, TexId> concurrentHashMap = texMap;
        synchronized (concurrentHashMap) {
            int i9 = this.originTextureId;
            if (i9 > 0) {
                TexId texId = concurrentHashMap.get(Integer.valueOf(i9));
                if (texId != null && texId.refCnt.decrementAndGet() <= 0) {
                    concurrentHashMap.remove(Integer.valueOf(this.originTextureId));
                    LightGLUtils.deleteTexture(texId.texId);
                }
                this.originTextureId = -1;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() throws Throwable {
        super.finalize();
        release();
    }

    public int getTexture() {
        if (ApiLevelHardwareBuffer() && this.hwb != null && this.originTextureId > 0) {
            try {
                NativeBuffer nativeBuffer = this.nativeBuffer;
                if (nativeBuffer != null) {
                    nativeBuffer.release();
                }
                this.nativeBuffer = new NativeBuffer(this.hwb);
                int acquireTexture = acquireTexture();
                this.nativeBuffer.bindTexture(acquireTexture);
                ParcelFileDescriptor parcelFileDescriptor = this.fenceFd;
                if (parcelFileDescriptor != null) {
                    this.nativeBuffer.waitFence(parcelFileDescriptor);
                    this.fenceFd.close();
                }
                this.fenceFd = null;
                return acquireTexture;
            } catch (Throwable th2) {
                LightLogUtil.e(TAG, "getTexture error:" + th2);
            }
        }
        return -1;
    }

    public void release() {
        try {
            HardwareBuffer hardwareBuffer = this.hwb;
            if (hardwareBuffer != null) {
                hardwareBuffer.close();
                this.hwb = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.fenceFd;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
                this.fenceFd = null;
            }
            SimpleRenderer simpleRenderer = this.simpleRenderer;
            if (simpleRenderer != null) {
                simpleRenderer.release();
                this.simpleRenderer = null;
            }
            NativeBuffer nativeBuffer = this.nativeBuffer;
            if (nativeBuffer != null) {
                nativeBuffer.release();
                this.nativeBuffer = null;
            }
            releaseTexture();
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "release error:" + th2);
        }
    }

    public void setTexture(int i9, int i10, int i11) {
        if (ApiLevelHardwareBuffer()) {
            try {
                if (this.originTextureId != i9) {
                    releaseTexture();
                }
                this.originTextureId = i9;
                this.textureWidth = i10;
                this.textureHeight = i11;
                if (i9 <= 0) {
                    return;
                }
                NativeBuffer nativeBuffer = this.nativeBuffer;
                if (nativeBuffer == null) {
                    this.nativeBuffer = new NativeBuffer(i10, i11);
                } else {
                    nativeBuffer.updateSize(i10, i11);
                }
                this.nativeBuffer.bindTexture(acquireTexture());
                this.hwb = this.nativeBuffer.getHardwareBuffer();
                if (this.simpleRenderer == null) {
                    this.simpleRenderer = new SimpleRenderer();
                }
                this.simpleRenderer.setForHardwareBuffer(true);
                this.simpleRenderer.draw(this.originTextureId, this.nativeBuffer.getBindTexture(), i10, i11);
                ParcelFileDescriptor parcelFileDescriptor = this.fenceFd;
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
                this.fenceFd = this.nativeBuffer.createFence();
            } catch (Throwable th2) {
                LightLogUtil.e(TAG, "setTexture error:" + th2);
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        if (ApiLevelHardwareBuffer()) {
            parcel.writeInt(this.originTextureId);
            parcel.writeInt(this.textureWidth);
            parcel.writeInt(this.textureHeight);
            parcel.writeParcelable(this.hwb, i9);
            parcel.writeParcelable(this.fenceFd, i9);
        }
    }

    protected SharedTexture(Parcel parcel) {
        this.originTextureId = -1;
        this.textureWidth = 0;
        this.textureHeight = 0;
        this.nativeBuffer = null;
        this.simpleRenderer = null;
        this.hwb = null;
        this.fenceFd = null;
        if (ApiLevelHardwareBuffer()) {
            this.originTextureId = parcel.readInt();
            this.textureWidth = parcel.readInt();
            this.textureHeight = parcel.readInt();
            this.hwb = (HardwareBuffer) parcel.readParcelable(HardwareBuffer.class.getClassLoader());
            this.fenceFd = (ParcelFileDescriptor) parcel.readParcelable(ParcelFileDescriptor.class.getClassLoader());
        }
    }
}
