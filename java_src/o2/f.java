package o2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class f implements b {
    @Override // o2.b
    @Nullable
    public final Metadata a(d dVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(dVar.f5708c);
        com.google.android.exoplayer2.util.a.a(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.j()) {
            return null;
        }
        return b(dVar, byteBuffer);
    }

    @Nullable
    protected abstract Metadata b(d dVar, ByteBuffer byteBuffer);
}
