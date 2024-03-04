package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import j3.l;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class HttpDataSource$InvalidResponseCodeException extends HttpDataSource$HttpDataSourceException {
    public final Map<String, List<String>> headerFields;
    public final byte[] responseBody;
    public final int responseCode;
    @Nullable
    public final String responseMessage;

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i9, Map<String, List<String>> map, l lVar) {
        this(i9, null, null, map, lVar, l0.f6990f);
    }

    @Deprecated
    public HttpDataSource$InvalidResponseCodeException(int i9, @Nullable String str, Map<String, List<String>> map, l lVar) {
        this(i9, str, null, map, lVar, l0.f6990f);
    }

    public HttpDataSource$InvalidResponseCodeException(int i9, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, l lVar, byte[] bArr) {
        super("Response code: " + i9, iOException, lVar, 2004, 1);
        this.responseCode = i9;
        this.responseMessage = str;
        this.headerFields = map;
        this.responseBody = bArr;
    }
}
