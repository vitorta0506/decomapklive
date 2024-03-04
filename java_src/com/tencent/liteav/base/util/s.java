package com.tencent.liteav.base.util;

import android.text.TextUtils;
import java.util.concurrent.Callable;
/* loaded from: classes4.dex */
public final class s<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f31034a;

    /* renamed from: b  reason: collision with root package name */
    private Callable<T> f31035b;

    public s(Callable<T> callable) {
        this.f31035b = callable;
    }

    public final void a(T t10) {
        synchronized (this) {
            this.f31034a = t10;
        }
    }

    public final T a() {
        T t10 = this.f31034a;
        if (t10 instanceof String) {
            if (!TextUtils.isEmpty((CharSequence) t10)) {
                return this.f31034a;
            }
        } else if (t10 != null) {
            return t10;
        }
        synchronized (this) {
            T t11 = this.f31034a;
            if (t11 instanceof String) {
                if (!TextUtils.isEmpty((CharSequence) t11)) {
                    return this.f31034a;
                }
            } else if (t11 != null) {
                return t11;
            }
            try {
                this.f31034a = this.f31035b.call();
            } catch (Exception e10) {
                e10.printStackTrace();
                LiteavLog.e("Stash", "Get value failed. msg:" + e10.getMessage());
            }
            return this.f31034a;
        }
    }
}
