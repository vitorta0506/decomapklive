package org.threeten.bp.format;

import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<f> f56618a = new AtomicReference<>();

    /* loaded from: classes7.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final f f56619a = a();

        static f a() {
            f.f56618a.compareAndSet(null, new h());
            return (f) f.f56618a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f b() {
        return a.f56619a;
    }

    public abstract String c(org.threeten.bp.temporal.g gVar, long j10, TextStyle textStyle, Locale locale);

    public abstract Iterator<Map.Entry<String, Long>> d(org.threeten.bp.temporal.g gVar, TextStyle textStyle, Locale locale);
}
