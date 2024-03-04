package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import j3.e;
import j3.l;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public final class AssetDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final AssetManager f6867e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f6868f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private InputStream f6869g;

    /* renamed from: h  reason: collision with root package name */
    private long f6870h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f6871i;

    /* loaded from: classes2.dex */
    public static final class AssetDataSourceException extends DataSourceException {
        @Deprecated
        public AssetDataSourceException(IOException iOException) {
            super(iOException, 2000);
        }

        public AssetDataSourceException(@Nullable Throwable th2, int i9) {
            super(th2, i9);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f6867e = context.getAssets();
    }

    @Override // j3.i
    public long b(l lVar) throws AssetDataSourceException {
        try {
            Uri uri = lVar.f53031a;
            this.f6868f = uri;
            String str = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith(FileUtils.RES_PREFIX_STORAGE)) {
                str = str.substring(1);
            }
            p(lVar);
            InputStream open = this.f6867e.open(str, 1);
            this.f6869g = open;
            if (open.skip(lVar.f53037g) >= lVar.f53037g) {
                long j10 = lVar.f53038h;
                if (j10 != -1) {
                    this.f6870h = j10;
                } else {
                    long available = this.f6869g.available();
                    this.f6870h = available;
                    if (available == 2147483647L) {
                        this.f6870h = -1L;
                    }
                }
                this.f6871i = true;
                q(lVar);
                return this.f6870h;
            }
            throw new AssetDataSourceException(null, 2008);
        } catch (AssetDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new AssetDataSourceException(e11, e11 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // j3.i
    public void close() throws AssetDataSourceException {
        this.f6868f = null;
        try {
            try {
                InputStream inputStream = this.f6869g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        } finally {
            this.f6869g = null;
            if (this.f6871i) {
                this.f6871i = false;
                o();
            }
        }
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f6868f;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws AssetDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.f6870h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i10 = (int) Math.min(j10, i10);
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        }
        int read = ((InputStream) l0.j(this.f6869g)).read(bArr, i9, i10);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f6870h;
        if (j11 != -1) {
            this.f6870h = j11 - read;
        }
        n(read);
        return read;
    }
}
