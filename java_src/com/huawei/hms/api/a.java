package com.huawei.hms.api;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
class a {

    /* renamed from: b  reason: collision with root package name */
    static final a f27246b = new a();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f27247c = new Object();

    /* renamed from: a  reason: collision with root package name */
    List<Activity> f27248a = new ArrayList(1);

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        synchronized (f27247c) {
            for (Activity activity2 : this.f27248a) {
                if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                    activity2.finish();
                }
            }
            this.f27248a.add(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Activity activity) {
        synchronized (f27247c) {
            this.f27248a.remove(activity);
        }
    }
}
