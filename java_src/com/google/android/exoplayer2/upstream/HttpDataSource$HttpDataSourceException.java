package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.common.base.c;
import j3.l;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes2.dex */
public class HttpDataSource$HttpDataSourceException extends DataSourceException {
    public static final int TYPE_CLOSE = 3;
    public static final int TYPE_OPEN = 1;
    public static final int TYPE_READ = 2;
    public final l dataSpec;
    public final int type;

    @Deprecated
    public HttpDataSource$HttpDataSourceException(l lVar, int i9) {
        this(lVar, 2000, i9);
    }

    private static int assignErrorCode(int i9, int i10) {
        if (i9 == 2000 && i10 == 1) {
            return 2001;
        }
        return i9;
    }

    public static HttpDataSource$HttpDataSourceException createForIOException(final IOException iOException, final l lVar, int i9) {
        int i10;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i10 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i10 = 1004;
        } else {
            i10 = (message == null || !c.f(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        if (i10 == 2007) {
            return new HttpDataSource$HttpDataSourceException(iOException, lVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$CleartextNotPermittedException
            };
        }
        return new HttpDataSource$HttpDataSourceException(iOException, lVar, i10, i9);
    }

    public HttpDataSource$HttpDataSourceException(l lVar, int i9, int i10) {
        super(assignErrorCode(i9, i10));
        this.dataSpec = lVar;
        this.type = i10;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, l lVar, int i9) {
        this(str, lVar, 2000, i9);
    }

    public HttpDataSource$HttpDataSourceException(String str, l lVar, int i9, int i10) {
        super(str, assignErrorCode(i9, i10));
        this.dataSpec = lVar;
        this.type = i10;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(IOException iOException, l lVar, int i9) {
        this(iOException, lVar, 2000, i9);
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, l lVar, int i9, int i10) {
        super(iOException, assignErrorCode(i9, i10));
        this.dataSpec = lVar;
        this.type = i10;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, IOException iOException, l lVar, int i9) {
        this(str, iOException, lVar, 2000, i9);
    }

    public HttpDataSource$HttpDataSourceException(String str, @Nullable IOException iOException, l lVar, int i9, int i10) {
        super(str, iOException, assignErrorCode(i9, i10));
        this.dataSpec = lVar;
        this.type = i10;
    }
}
