package com.google.android.exoplayer2.drm;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class MediaDrmCallbackException extends IOException {
    public final long bytesLoaded;
    public final j3.l dataSpec;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uriAfterRedirects;

    public MediaDrmCallbackException(j3.l lVar, Uri uri, Map<String, List<String>> map, long j10, Throwable th2) {
        super(th2);
        this.dataSpec = lVar;
        this.uriAfterRedirects = uri;
        this.responseHeaders = map;
        this.bytesLoaded = j10;
    }
}
