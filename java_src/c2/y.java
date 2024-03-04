package c2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;
import s2.b;
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f1573a = new com.google.android.exoplayer2.util.b0(10);

    @Nullable
    public Metadata a(m mVar, @Nullable b.a aVar) throws IOException {
        Metadata metadata = null;
        int i9 = 0;
        while (true) {
            try {
                mVar.m(this.f1573a.d(), 0, 10);
                this.f1573a.P(0);
                if (this.f1573a.G() != 4801587) {
                    break;
                }
                this.f1573a.Q(3);
                int C = this.f1573a.C();
                int i10 = C + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i10];
                    System.arraycopy(this.f1573a.d(), 0, bArr, 0, 10);
                    mVar.m(bArr, 10, C);
                    metadata = new s2.b(aVar).e(bArr, i10);
                } else {
                    mVar.i(C);
                }
                i9 += i10;
            } catch (EOFException unused) {
            }
        }
        mVar.f();
        mVar.i(i9);
        return metadata;
    }
}
