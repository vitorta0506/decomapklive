package com.tencent.liteav.videobase.b;

import android.os.Looper;
import android.os.SystemClock;
import com.tencent.liteav.base.util.CustomHandler;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final CustomHandler f31715a;

    /* renamed from: d  reason: collision with root package name */
    e f31718d;

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f31716b = new AtomicInteger(-1);

    /* renamed from: c  reason: collision with root package name */
    public Object f31717c = null;

    /* renamed from: e  reason: collision with root package name */
    private final String f31719e = String.format(Locale.ENGLISH, "// %s-%s E8083882-0D59-47A1-B4B6-25C15A69875A\nvoid main() {gl_FragColor = vec4(0, 0, 0, 0);}", Integer.valueOf(hashCode()), Long.valueOf(SystemClock.uptimeMillis()));

    public c(Looper looper) {
        this.f31715a = new CustomHandler(looper);
    }
}
