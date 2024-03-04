package x2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class g extends b2.h<k, l, SubtitleDecoderException> implements i {

    /* renamed from: n  reason: collision with root package name */
    private final String f59592n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends l {
        a() {
        }

        @Override // b2.f
        public void p() {
            g.this.q(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(String str) {
        super(new k[2], new l[2]);
        this.f59592n = str;
        t(1024);
    }

    @Override // x2.i
    public void a(long j10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b2.h
    /* renamed from: v */
    public final k f() {
        return new k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b2.h
    /* renamed from: w */
    public final l g() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b2.h
    /* renamed from: x */
    public final SubtitleDecoderException h(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b2.h
    @Nullable
    /* renamed from: y */
    public final SubtitleDecoderException i(k kVar, l lVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(kVar.f5708c);
            lVar.q(kVar.f5710e, z(byteBuffer.array(), byteBuffer.limit(), z10), kVar.f59595i);
            lVar.g(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e10) {
            return e10;
        }
    }

    protected abstract h z(byte[] bArr, int i9, boolean z10) throws SubtitleDecoderException;
}
