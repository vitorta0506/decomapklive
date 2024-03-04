package j3;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a0 implements i {

    /* renamed from: a  reason: collision with root package name */
    private final i f53005a;

    /* renamed from: b  reason: collision with root package name */
    private long f53006b;

    /* renamed from: c  reason: collision with root package name */
    private Uri f53007c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, List<String>> f53008d = Collections.emptyMap();

    public a0(i iVar) {
        this.f53005a = (i) com.google.android.exoplayer2.util.a.e(iVar);
    }

    @Override // j3.i
    public long b(l lVar) throws IOException {
        this.f53007c = lVar.f53031a;
        this.f53008d = Collections.emptyMap();
        long b10 = this.f53005a.b(lVar);
        this.f53007c = (Uri) com.google.android.exoplayer2.util.a.e(getUri());
        this.f53008d = e();
        return b10;
    }

    @Override // j3.i
    public void c(b0 b0Var) {
        com.google.android.exoplayer2.util.a.e(b0Var);
        this.f53005a.c(b0Var);
    }

    @Override // j3.i
    public void close() throws IOException {
        this.f53005a.close();
    }

    @Override // j3.i
    public Map<String, List<String>> e() {
        return this.f53005a.e();
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f53005a.getUri();
    }

    public long n() {
        return this.f53006b;
    }

    public Uri o() {
        return this.f53007c;
    }

    public Map<String, List<String>> p() {
        return this.f53008d;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int read = this.f53005a.read(bArr, i9, i10);
        if (read != -1) {
            this.f53006b += read;
        }
        return read;
    }
}
