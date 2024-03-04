package v2;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLong f58847h = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    public final long f58848a;

    /* renamed from: b  reason: collision with root package name */
    public final j3.l f58849b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f58850c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f58851d;

    /* renamed from: e  reason: collision with root package name */
    public final long f58852e;

    /* renamed from: f  reason: collision with root package name */
    public final long f58853f;

    /* renamed from: g  reason: collision with root package name */
    public final long f58854g;

    public j(long j10, j3.l lVar, long j11) {
        this(j10, lVar, lVar.f53031a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f58847h.getAndIncrement();
    }

    public j(long j10, j3.l lVar, Uri uri, Map<String, List<String>> map, long j11, long j12, long j13) {
        this.f58848a = j10;
        this.f58849b = lVar;
        this.f58850c = uri;
        this.f58851d = map;
        this.f58852e = j11;
        this.f58853f = j12;
        this.f58854g = j13;
    }
}
