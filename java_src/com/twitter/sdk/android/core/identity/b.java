package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.l;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a> f35134a = new AtomicReference<>(null);

    public boolean a(Activity activity, a aVar) {
        if (d()) {
            l.g().w(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Authorize already in progress");
        } else if (aVar.a(activity)) {
            boolean compareAndSet = this.f35134a.compareAndSet(null, aVar);
            if (compareAndSet) {
                return compareAndSet;
            }
            l.g().w(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to update authHandler, authorize already in progress.");
            return compareAndSet;
        }
        return false;
    }

    public void b() {
        this.f35134a.set(null);
    }

    public a c() {
        return this.f35134a.get();
    }

    public boolean d() {
        return this.f35134a.get() != null;
    }
}
