package o0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public class a implements e<Bitmap, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap.CompressFormat f55457a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55458b;

    public a() {
        this(Bitmap.CompressFormat.JPEG, 100);
    }

    @Override // o0.e
    @Nullable
    public u<byte[]> a(@NonNull u<Bitmap> uVar, @NonNull e0.e eVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        uVar.get().compress(this.f55457a, this.f55458b, byteArrayOutputStream);
        uVar.recycle();
        return new l0.b(byteArrayOutputStream.toByteArray());
    }

    public a(@NonNull Bitmap.CompressFormat compressFormat, int i9) {
        this.f55457a = compressFormat;
        this.f55458b = i9;
    }
}
