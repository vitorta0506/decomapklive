package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f7631a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    ParcelFileDescriptor f7632b;

    /* renamed from: c  reason: collision with root package name */
    final int f7633c;
    @Nullable
    private Bitmap zad = null;
    private boolean zae = false;
    private File zaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BitmapTeleporter(int i9, ParcelFileDescriptor parcelFileDescriptor, int i10) {
        this.f7631a = i9;
        this.f7632b = parcelFileDescriptor;
        this.f7633c = i10;
    }

    private static final void d(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e10) {
            Log.w("BitmapTeleporter", "Could not close stream", e10);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        if (this.f7632b == null) {
            Bitmap bitmap = (Bitmap) p.j(this.zad);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            File file = this.zaf;
            if (file != null) {
                try {
                    File createTempFile = File.createTempFile("teleporter", ".tmp", file);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                        this.f7632b = ParcelFileDescriptor.open(createTempFile, 268435456);
                        createTempFile.delete();
                        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                        try {
                            try {
                                dataOutputStream.writeInt(array.length);
                                dataOutputStream.writeInt(bitmap.getWidth());
                                dataOutputStream.writeInt(bitmap.getHeight());
                                dataOutputStream.writeUTF(bitmap.getConfig().toString());
                                dataOutputStream.write(array);
                            } catch (IOException e10) {
                                throw new IllegalStateException("Could not write into unlinked file", e10);
                            }
                        } finally {
                            d(dataOutputStream);
                        }
                    } catch (FileNotFoundException unused) {
                        throw new IllegalStateException("Temporary file is somehow already deleted");
                    }
                } catch (IOException e11) {
                    throw new IllegalStateException("Could not create temporary file", e11);
                }
            } else {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
        }
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7631a);
        x3.a.p(parcel, 2, this.f7632b, i9 | 1, false);
        x3.a.k(parcel, 3, this.f7633c);
        x3.a.b(parcel, a10);
        this.f7632b = null;
    }
}
