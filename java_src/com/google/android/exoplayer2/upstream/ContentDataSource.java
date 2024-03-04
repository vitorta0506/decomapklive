package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import j3.e;
import j3.l;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes2.dex */
public final class ContentDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final ContentResolver f6872e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f6873f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private AssetFileDescriptor f6874g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private FileInputStream f6875h;

    /* renamed from: i  reason: collision with root package name */
    private long f6876i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f6877j;

    /* loaded from: classes2.dex */
    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(@Nullable IOException iOException, int i9) {
            super(iOException, i9);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f6872e = context.getContentResolver();
    }

    @Override // j3.i
    public long b(l lVar) throws ContentDataSourceException {
        AssetFileDescriptor openAssetFileDescriptor;
        try {
            Uri uri = lVar.f53031a;
            this.f6873f = uri;
            p(lVar);
            if ("content".equals(lVar.f53031a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                openAssetFileDescriptor = this.f6872e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f6872e.openAssetFileDescriptor(uri, "r");
            }
            this.f6874g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f6875h = fileInputStream;
                int i9 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i9 != 0 && lVar.f53037g > length) {
                    throw new ContentDataSourceException(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(lVar.f53037g + startOffset) - startOffset;
                if (skip == lVar.f53037g) {
                    if (i9 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f6876i = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f6876i = position;
                            if (position < 0) {
                                throw new ContentDataSourceException(null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f6876i = j10;
                        if (j10 < 0) {
                            throw new ContentDataSourceException(null, 2008);
                        }
                    }
                    long j11 = lVar.f53038h;
                    if (j11 != -1) {
                        long j12 = this.f6876i;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f6876i = j11;
                    }
                    this.f6877j = true;
                    q(lVar);
                    long j13 = lVar.f53038h;
                    return j13 != -1 ? j13 : this.f6876i;
                }
                throw new ContentDataSourceException(null, 2008);
            }
            throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uri), 2000);
        } catch (ContentDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new ContentDataSourceException(e11, e11 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // j3.i
    public void close() throws ContentDataSourceException {
        this.f6873f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f6875h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f6875h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f6874g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f6874g = null;
                        if (this.f6877j) {
                            this.f6877j = false;
                            o();
                        }
                    }
                } catch (IOException e10) {
                    throw new ContentDataSourceException(e10, 2000);
                }
            } catch (IOException e11) {
                throw new ContentDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f6875h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f6874g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f6874g = null;
                    if (this.f6877j) {
                        this.f6877j = false;
                        o();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new ContentDataSourceException(e12, 2000);
                }
            } finally {
                this.f6874g = null;
                if (this.f6877j) {
                    this.f6877j = false;
                    o();
                }
            }
        }
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        return this.f6873f;
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws ContentDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.f6876i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i10 = (int) Math.min(j10, i10);
            } catch (IOException e10) {
                throw new ContentDataSourceException(e10, 2000);
            }
        }
        int read = ((FileInputStream) l0.j(this.f6875h)).read(bArr, i9, i10);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f6876i;
        if (j11 != -1) {
            this.f6876i = j11 - read;
        }
        n(read);
        return read;
    }
}
