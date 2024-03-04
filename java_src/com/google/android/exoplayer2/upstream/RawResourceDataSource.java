package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.exoplayer2.util.l0;
import j3.e;
import j3.l;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public final class RawResourceDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final Resources f6902e;

    /* renamed from: f  reason: collision with root package name */
    private final String f6903f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f6904g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private AssetFileDescriptor f6905h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private InputStream f6906i;

    /* renamed from: j  reason: collision with root package name */
    private long f6907j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f6908k;

    /* loaded from: classes2.dex */
    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        @Deprecated
        public RawResourceDataSourceException(Throwable th2) {
            super(th2, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th2, int i9) {
            super(str, th2, i9);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f6902e = context.getResources();
        this.f6903f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i9) {
        return Uri.parse("rawresource:///" + i9);
    }

    @Override // j3.i
    public long b(l lVar) throws RawResourceDataSourceException {
        int parseInt;
        String str;
        Uri uri = lVar.f53031a;
        this.f6904g = uri;
        if (!TextUtils.equals("rawresource", uri.getScheme()) && (!TextUtils.equals("android.resource", uri.getScheme()) || uri.getPathSegments().size() != 1 || !((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            if (TextUtils.equals("android.resource", uri.getScheme())) {
                String str2 = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
                if (str2.startsWith(FileUtils.RES_PREFIX_STORAGE)) {
                    str2 = str2.substring(1);
                }
                String host = uri.getHost();
                StringBuilder sb2 = new StringBuilder();
                if (TextUtils.isEmpty(host)) {
                    str = "";
                } else {
                    str = host + CertificateUtil.DELIMITER;
                }
                sb2.append(str);
                sb2.append(str2);
                parseInt = this.f6902e.getIdentifier(sb2.toString(), "raw", this.f6903f);
                if (parseInt == 0) {
                    throw new RawResourceDataSourceException("Resource not found.", null, 2005);
                }
            } else {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
        } else {
            try {
                parseInt = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        }
        p(lVar);
        try {
            AssetFileDescriptor openRawResourceFd = this.f6902e.openRawResourceFd(parseInt);
            this.f6905h = openRawResourceFd;
            if (openRawResourceFd != null) {
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f6906i = fileInputStream;
                int i9 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i9 != 0) {
                    try {
                        if (lVar.f53037g > length) {
                            throw new RawResourceDataSourceException(null, null, 2008);
                        }
                    } catch (RawResourceDataSourceException e10) {
                        throw e10;
                    } catch (IOException e11) {
                        throw new RawResourceDataSourceException(null, e11, 2000);
                    }
                }
                long startOffset = openRawResourceFd.getStartOffset();
                long skip = fileInputStream.skip(lVar.f53037g + startOffset) - startOffset;
                if (skip == lVar.f53037g) {
                    if (i9 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        if (channel.size() == 0) {
                            this.f6907j = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.f6907j = size;
                            if (size < 0) {
                                throw new RawResourceDataSourceException(null, null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f6907j = j10;
                        if (j10 < 0) {
                            throw new DataSourceException(2008);
                        }
                    }
                    long j11 = lVar.f53038h;
                    if (j11 != -1) {
                        long j12 = this.f6907j;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f6907j = j11;
                    }
                    this.f6908k = true;
                    q(lVar);
                    long j13 = lVar.f53038h;
                    return j13 != -1 ? j13 : this.f6907j;
                }
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            throw new RawResourceDataSourceException("Resource is compressed: " + uri, null, 2000);
        } catch (Resources.NotFoundException e12) {
            throw new RawResourceDataSourceException(null, e12, 2005);
        }
    }

    @Override // j3.i
    public void close() throws RawResourceDataSourceException {
        this.f6904g = null;
        try {
            try {
                InputStream inputStream = this.f6906i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f6906i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f6905h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f6905h = null;
                        if (this.f6908k) {
                            this.f6908k = false;
                            o();
                        }
                    }
                } catch (IOException e10) {
                    throw new RawResourceDataSourceException(null, e10, 2000);
                }
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        } catch (Throwable th2) {
            this.f6906i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f6905h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f6905h = null;
                    if (this.f6908k) {
                        this.f6908k = false;
                        o();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new RawResourceDataSourceException(null, e12, 2000);
                }
            } finally {
                this.f6905h = null;
                if (this.f6908k) {
                    this.f6908k = false;
                    o();
                }
            }
        }
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f6904g;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws RawResourceDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.f6907j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i10 = (int) Math.min(j10, i10);
            } catch (IOException e10) {
                throw new RawResourceDataSourceException(null, e10, 2000);
            }
        }
        int read = ((InputStream) l0.j(this.f6906i)).read(bArr, i9, i10);
        if (read == -1) {
            if (this.f6907j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f6907j;
        if (j11 != -1) {
            this.f6907j = j11 - read;
        }
        n(read);
        return read;
    }
}
