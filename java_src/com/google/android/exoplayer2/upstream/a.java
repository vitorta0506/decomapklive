package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.b;
import j3.w;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes2.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final int f6918a;

    public a() {
        this(-1);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public long a(b.a aVar) {
        IOException iOException = aVar.f6921c;
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource$CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException) || DataSourceException.isCausedByPositionOutOfRange(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((aVar.f6922d - 1) * 1000, 5000);
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public int b(int i9) {
        int i10 = this.f6918a;
        return i10 == -1 ? i9 == 7 ? 6 : 3 : i10;
    }

    @Override // com.google.android.exoplayer2.upstream.b
    public /* synthetic */ void c(long j10) {
        w.a(this, j10);
    }

    public a(int i9) {
        this.f6918a = i9;
    }
}
