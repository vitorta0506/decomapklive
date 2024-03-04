package com.huawei.hms.availableupdate;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final c f27257b = new c();

    /* renamed from: c  reason: collision with root package name */
    public static final Object f27258c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final List<Activity> f27259a = new ArrayList(1);

    public void a(Activity activity) {
        synchronized (f27258c) {
            for (Activity activity2 : this.f27259a) {
                if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                    activity2.finish();
                }
            }
            this.f27259a.add(activity);
        }
    }

    public void b(Activity activity) {
        synchronized (f27258c) {
            this.f27259a.remove(activity);
        }
    }
}
