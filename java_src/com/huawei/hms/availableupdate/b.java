package com.huawei.hms.availableupdate;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    public static final b f27253c = new b();

    /* renamed from: d  reason: collision with root package name */
    public static final Object f27254d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f27255a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public List<Activity> f27256b = new ArrayList(1);

    public void a(Activity activity) {
        synchronized (f27254d) {
            for (Activity activity2 : this.f27256b) {
                if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                    activity2.finish();
                }
            }
            this.f27256b.add(activity);
        }
    }

    public void b(Activity activity) {
        synchronized (f27254d) {
            this.f27256b.remove(activity);
        }
    }

    public void a(boolean z10) {
        this.f27255a.set(z10);
    }

    public AtomicBoolean a() {
        return this.f27255a;
    }
}
