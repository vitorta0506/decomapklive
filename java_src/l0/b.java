package l0;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.u;
import v0.j;
/* loaded from: classes.dex */
public class b implements u<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f54109a;

    public b(byte[] bArr) {
        this.f54109a = (byte[]) j.d(bArr);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<byte[]> a() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public byte[] get() {
        return this.f54109a;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return this.f54109a.length;
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}
