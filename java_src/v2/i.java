package v2;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class i implements j3.i {

    /* renamed from: a  reason: collision with root package name */
    private final j3.i f58842a;

    /* renamed from: b  reason: collision with root package name */
    private final int f58843b;

    /* renamed from: c  reason: collision with root package name */
    private final a f58844c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f58845d;

    /* renamed from: e  reason: collision with root package name */
    private int f58846e;

    /* loaded from: classes.dex */
    public interface a {
        void b(com.google.android.exoplayer2.util.b0 b0Var);
    }

    public i(j3.i iVar, int i9, a aVar) {
        com.google.android.exoplayer2.util.a.a(i9 > 0);
        this.f58842a = iVar;
        this.f58843b = i9;
        this.f58844c = aVar;
        this.f58845d = new byte[1];
        this.f58846e = i9;
    }

    private boolean n() throws IOException {
        if (this.f58842a.read(this.f58845d, 0, 1) == -1) {
            return false;
        }
        int i9 = (this.f58845d[0] & 255) << 4;
        if (i9 == 0) {
            return true;
        }
        byte[] bArr = new byte[i9];
        int i10 = i9;
        int i11 = 0;
        while (i10 > 0) {
            int read = this.f58842a.read(bArr, i11, i10);
            if (read == -1) {
                return false;
            }
            i11 += read;
            i10 -= read;
        }
        while (i9 > 0 && bArr[i9 - 1] == 0) {
            i9--;
        }
        if (i9 > 0) {
            this.f58844c.b(new com.google.android.exoplayer2.util.b0(bArr, i9));
        }
        return true;
    }

    @Override // j3.i
    public long b(j3.l lVar) {
        throw new UnsupportedOperationException();
    }

    @Override // j3.i
    public void c(j3.b0 b0Var) {
        com.google.android.exoplayer2.util.a.e(b0Var);
        this.f58842a.c(b0Var);
    }

    @Override // j3.i
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // j3.i
    public Map<String, List<String>> e() {
        return this.f58842a.e();
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f58842a.getUri();
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        if (this.f58846e == 0) {
            if (!n()) {
                return -1;
            }
            this.f58846e = this.f58843b;
        }
        int read = this.f58842a.read(bArr, i9, Math.min(this.f58846e, i10));
        if (read != -1) {
            this.f58846e -= read;
        }
        return read;
    }
}
