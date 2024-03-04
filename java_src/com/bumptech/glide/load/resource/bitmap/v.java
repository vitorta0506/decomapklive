package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import org.light.device.DeviceInstance;
@RequiresApi(21)
/* loaded from: classes.dex */
public final class v implements e0.f<ParcelFileDescriptor, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private final m f4564a;

    public v(m mVar) {
        this.f4564a = mVar;
    }

    private boolean e(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        String str = Build.MANUFACTURER;
        return !(DeviceInstance.BRAND_HUAWEI.equalsIgnoreCase(str) || "HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912;
    }

    @Override // e0.f
    @Nullable
    /* renamed from: c */
    public com.bumptech.glide.load.engine.u<Bitmap> b(@NonNull ParcelFileDescriptor parcelFileDescriptor, int i9, int i10, @NonNull e0.e eVar) throws IOException {
        return this.f4564a.d(parcelFileDescriptor, i9, i10, eVar);
    }

    @Override // e0.f
    /* renamed from: d */
    public boolean a(@NonNull ParcelFileDescriptor parcelFileDescriptor, @NonNull e0.e eVar) {
        return e(parcelFileDescriptor) && this.f4564a.o(parcelFileDescriptor);
    }
}
