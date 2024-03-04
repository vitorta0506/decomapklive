package j3;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.net.URLDecoder;
/* loaded from: classes2.dex */
public final class g extends e {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private l f53021e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private byte[] f53022f;

    /* renamed from: g  reason: collision with root package name */
    private int f53023g;

    /* renamed from: h  reason: collision with root package name */
    private int f53024h;

    public g() {
        super(false);
    }

    @Override // j3.i
    public long b(l lVar) throws IOException {
        p(lVar);
        this.f53021e = lVar;
        Uri uri = lVar.f53031a;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        com.google.android.exoplayer2.util.a.b(equals, "Unsupported scheme: " + scheme);
        String[] G0 = l0.G0(uri.getSchemeSpecificPart(), ",");
        if (G0.length == 2) {
            String str = G0[1];
            if (G0[0].contains(";base64")) {
                try {
                    this.f53022f = Base64.decode(str, 0);
                } catch (IllegalArgumentException e10) {
                    throw ParserException.createForMalformedDataOfUnknownType("Error while parsing Base64 encoded string: " + str, e10);
                }
            } else {
                this.f53022f = l0.h0(URLDecoder.decode(str, com.google.common.base.e.f12354a.name()));
            }
            long j10 = lVar.f53037g;
            byte[] bArr = this.f53022f;
            if (j10 <= bArr.length) {
                int i9 = (int) j10;
                this.f53023g = i9;
                int length = bArr.length - i9;
                this.f53024h = length;
                long j11 = lVar.f53038h;
                if (j11 != -1) {
                    this.f53024h = (int) Math.min(length, j11);
                }
                q(lVar);
                long j12 = lVar.f53038h;
                return j12 != -1 ? j12 : this.f53024h;
            }
            this.f53022f = null;
            throw new DataSourceException(2008);
        }
        throw ParserException.createForMalformedDataOfUnknownType("Unexpected URI format: " + uri, null);
    }

    @Override // j3.i
    public void close() {
        if (this.f53022f != null) {
            this.f53022f = null;
            o();
        }
        this.f53021e = null;
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        l lVar = this.f53021e;
        if (lVar != null) {
            return lVar.f53031a;
        }
        return null;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) {
        if (i10 == 0) {
            return 0;
        }
        int i11 = this.f53024h;
        if (i11 == 0) {
            return -1;
        }
        int min = Math.min(i10, i11);
        System.arraycopy(l0.j(this.f53022f), this.f53023g, bArr, i9, min);
        this.f53023g += min;
        this.f53024h -= min;
        n(min);
        return min;
    }
}
