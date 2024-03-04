package q2;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.b0;
import java.nio.ByteBuffer;
import java.util.Arrays;
import o2.d;
import o2.f;
/* loaded from: classes.dex */
public final class a extends f {
    @Override // o2.f
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        return new Metadata(c(new b0(byteBuffer.array(), byteBuffer.limit())));
    }

    public EventMessage c(b0 b0Var) {
        return new EventMessage((String) com.google.android.exoplayer2.util.a.e(b0Var.x()), (String) com.google.android.exoplayer2.util.a.e(b0Var.x()), b0Var.w(), b0Var.w(), Arrays.copyOfRange(b0Var.d(), b0Var.e(), b0Var.f()));
    }
}
