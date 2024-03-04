package org.light.shared;

import android.os.Build;
import android.os.MemoryFile;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.SharedMemory;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class SharedBytes implements Parcelable {
    public static final Parcelable.Creator<SharedBytes> CREATOR = new Parcelable.Creator<SharedBytes>() { // from class: org.light.shared.SharedBytes.1
        @Override // android.os.Parcelable.Creator
        public SharedBytes createFromParcel(Parcel parcel) {
            return new SharedBytes(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SharedBytes[] newArray(int i9) {
            return new SharedBytes[i9];
        }
    };
    private static Constructor<?> Constructor_ParcelFileDescriptor = null;
    private static Method MemoryFile_getFileDescriptor = null;
    private static Field MemoryFile_mAddress = null;
    private static Field MemoryFile_mFD = null;
    private static Field MemoryFile_mLength = null;
    private static Method MemoryFile_native_mmap = null;
    private static final int PROT_READ = 1;
    private static final int PROT_WRITE = 2;
    private static final String TAG = "SharedBytes";
    private int bytesLength;
    private MemoryFile memoryFile;
    private ParcelFileDescriptor pfd;
    private SharedMemory sharedMemory;

    static {
        if (ApiLevelSharedMemory()) {
            return;
        }
        try {
            Constructor<?> declaredConstructor = ParcelFileDescriptor.class.getDeclaredConstructor(FileDescriptor.class);
            Constructor_ParcelFileDescriptor = declaredConstructor;
            declaredConstructor.setAccessible(true);
            Method[] declaredMethods = MemoryFile.class.getDeclaredMethods();
            for (int i9 = 0; declaredMethods != null && i9 < declaredMethods.length; i9++) {
                if (declaredMethods[i9].getName().equals("native_mmap")) {
                    MemoryFile_native_mmap = declaredMethods[i9];
                }
            }
            MemoryFile_getFileDescriptor = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            MemoryFile_mFD = MemoryFile.class.getDeclaredField("mFD");
            MemoryFile_mLength = MemoryFile.class.getDeclaredField("mLength");
            MemoryFile_mAddress = MemoryFile.class.getDeclaredField("mAddress");
            MemoryFile_getFileDescriptor.setAccessible(true);
            MemoryFile_native_mmap.setAccessible(true);
            MemoryFile_mFD.setAccessible(true);
            MemoryFile_mLength.setAccessible(true);
            MemoryFile_mAddress.setAccessible(true);
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "Reflect error: " + th2);
        }
    }

    public SharedBytes() {
        this.bytesLength = 0;
        this.sharedMemory = null;
        this.pfd = null;
        this.memoryFile = null;
    }

    public static boolean ApiLevelSharedMemory() {
        return Build.VERSION.SDK_INT >= 27;
    }

    private byte[] getBytesMemoryFile() {
        byte[] bArr = null;
        if (this.pfd != null) {
            try {
                MemoryFile memoryFile = this.memoryFile;
                if (memoryFile != null) {
                    memoryFile.close();
                    this.memoryFile = null;
                }
                MemoryFile memoryFile2 = new MemoryFile("MemoryFile-" + System.nanoTime(), 1);
                this.memoryFile = memoryFile2;
                memoryFile2.close();
                FileDescriptor fileDescriptor = this.pfd.getFileDescriptor();
                MemoryFile_mFD.set(this.memoryFile, fileDescriptor);
                MemoryFile_mLength.set(this.memoryFile, Integer.valueOf(this.bytesLength));
                MemoryFile_mAddress.set(this.memoryFile, Long.valueOf(((Long) MemoryFile_native_mmap.invoke(null, fileDescriptor, Integer.valueOf(this.bytesLength), 1)).longValue()));
                int i9 = this.bytesLength;
                bArr = new byte[i9];
                this.memoryFile.readBytes(bArr, 0, 0, i9);
                return bArr;
            } catch (Throwable th2) {
                LightLogUtil.e(TAG, "getBytesMemoryFile error:" + th2);
                return bArr;
            }
        }
        LightLogUtil.e(TAG, "getBytesMemoryFile pfd == null");
        return null;
    }

    private byte[] getBytesSharedMemory() {
        SharedMemory sharedMemory = this.sharedMemory;
        byte[] bArr = null;
        if (sharedMemory != null) {
            try {
                ByteBuffer mapReadOnly = sharedMemory.mapReadOnly();
                bArr = new byte[mapReadOnly.limit() - mapReadOnly.position()];
                mapReadOnly.get(bArr);
                SharedMemory.unmap(mapReadOnly);
                return bArr;
            } catch (Throwable th2) {
                LightLogUtil.e(TAG, "getBytesSharedMemory error:" + th2);
                return bArr;
            }
        }
        LightLogUtil.e(TAG, "getBytesSharedMemory sharedMemory == null");
        return null;
    }

    private void setBytesMemoryFile(byte[] bArr) {
        try {
            MemoryFile memoryFile = this.memoryFile;
            if (memoryFile != null) {
                memoryFile.close();
                this.memoryFile = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.pfd;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
                this.pfd = null;
            }
            if (this.bytesLength > 0) {
                MemoryFile memoryFile2 = new MemoryFile("MemoryFile-" + System.nanoTime(), bArr.length);
                this.memoryFile = memoryFile2;
                memoryFile2.writeBytes(bArr, 0, 0, bArr.length);
                this.pfd = (ParcelFileDescriptor) Constructor_ParcelFileDescriptor.newInstance((FileDescriptor) MemoryFile_getFileDescriptor.invoke(this.memoryFile, new Object[0]));
            }
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "setBytesSharedMemory error:" + th2);
        }
    }

    private void setBytesSharedMemory(byte[] bArr) {
        try {
            SharedMemory sharedMemory = this.sharedMemory;
            if (sharedMemory != null) {
                sharedMemory.close();
                this.sharedMemory = null;
            }
            SharedMemory create = SharedMemory.create("SharedMemory-" + System.nanoTime(), bArr.length);
            this.sharedMemory = create;
            ByteBuffer mapReadWrite = create.mapReadWrite();
            mapReadWrite.put(bArr);
            this.sharedMemory.setProtect(OsConstants.PROT_READ);
            SharedMemory.unmap(mapReadWrite);
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "setBytesSharedMemory error:" + th2);
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

    public byte[] getBytes() {
        if (this.bytesLength <= 0) {
            return null;
        }
        if (ApiLevelSharedMemory()) {
            return getBytesSharedMemory();
        }
        return getBytesMemoryFile();
    }

    public int getBytesLength() {
        return this.bytesLength;
    }

    public void release() {
        try {
            this.bytesLength = 0;
            SharedMemory sharedMemory = this.sharedMemory;
            if (sharedMemory != null) {
                sharedMemory.close();
                this.sharedMemory = null;
            }
            MemoryFile memoryFile = this.memoryFile;
            if (memoryFile != null) {
                memoryFile.close();
                this.memoryFile = null;
            }
            ParcelFileDescriptor parcelFileDescriptor = this.pfd;
            if (parcelFileDescriptor != null) {
                parcelFileDescriptor.close();
                this.pfd = null;
            }
        } catch (Throwable th2) {
            LightLogUtil.e(TAG, "release error:" + th2);
        }
    }

    public void setBytes(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        this.bytesLength = bArr.length;
        if (ApiLevelSharedMemory()) {
            setBytesSharedMemory(bArr);
        } else {
            setBytesMemoryFile(bArr);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.bytesLength);
        if (ApiLevelSharedMemory()) {
            parcel.writeParcelable(this.sharedMemory, i9);
        } else {
            parcel.writeParcelable(this.pfd, i9);
        }
    }

    protected SharedBytes(Parcel parcel) {
        this.bytesLength = 0;
        this.sharedMemory = null;
        this.pfd = null;
        this.memoryFile = null;
        this.bytesLength = parcel.readInt();
        if (ApiLevelSharedMemory()) {
            this.sharedMemory = (SharedMemory) parcel.readParcelable(SharedMemory.class.getClassLoader());
        } else {
            this.pfd = (ParcelFileDescriptor) parcel.readParcelable(ParcelFileDescriptor.class.getClassLoader());
        }
    }
}
