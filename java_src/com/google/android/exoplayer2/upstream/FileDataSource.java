package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.l0;
import j3.e;
import j3.l;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public final class FileDataSource extends e {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f6878e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f6879f;

    /* renamed from: g  reason: collision with root package name */
    private long f6880g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6881h;

    /* loaded from: classes2.dex */
    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(Throwable th2, int i9) {
            super(th2, i9);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th2, int i9) {
            super(str, th2, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes2.dex */
    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        public static boolean b(@Nullable Throwable th2) {
            return (th2 instanceof ErrnoException) && ((ErrnoException) th2).errno == OsConstants.EACCES;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile r(Uri uri) throws FileDataSourceException {
        int i9 = 2006;
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.e(uri.getPath()), "r");
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e10, (l0.f6985a < 21 || !a.b(e10.getCause())) ? 2005 : 2005);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new FileDataSourceException(e11, 2006);
        } catch (RuntimeException e12) {
            throw new FileDataSourceException(e12, 2000);
        }
    }

    @Override // j3.i
    public long b(l lVar) throws FileDataSourceException {
        Uri uri = lVar.f53031a;
        this.f6879f = uri;
        p(lVar);
        RandomAccessFile r10 = r(uri);
        this.f6878e = r10;
        try {
            r10.seek(lVar.f53037g);
            long j10 = lVar.f53038h;
            if (j10 == -1) {
                j10 = this.f6878e.length() - lVar.f53037g;
            }
            this.f6880g = j10;
            if (j10 >= 0) {
                this.f6881h = true;
                q(lVar);
                return this.f6880g;
            }
            throw new FileDataSourceException(null, null, 2008);
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }

    @Override // j3.i
    public void close() throws FileDataSourceException {
        this.f6879f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f6878e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e10) {
                throw new FileDataSourceException(e10, 2000);
            }
        } finally {
            this.f6878e = null;
            if (this.f6881h) {
                this.f6881h = false;
                o();
            }
        }
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f6879f;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws FileDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        if (this.f6880g == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) l0.j(this.f6878e)).read(bArr, i9, (int) Math.min(this.f6880g, i10));
            if (read > 0) {
                this.f6880g -= read;
                n(read);
            }
            return read;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }
}
