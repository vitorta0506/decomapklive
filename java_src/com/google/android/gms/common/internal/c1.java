package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public abstract class c1 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Object f7682a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7683b = false;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f7684c;

    public c1(d dVar, Object obj) {
        this.f7684c = dVar;
        this.f7682a = obj;
    }

    protected abstract void a(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b();

    public final void c() {
        Object obj;
        synchronized (this) {
            obj = this.f7682a;
            if (this.f7683b) {
                String obj2 = toString();
                Log.w("GmsClient", "Callback proxy " + obj2 + " being reused. This is not safe.");
            }
        }
        if (obj != null) {
            try {
                a(obj);
            } catch (RuntimeException e10) {
                throw e10;
            }
        }
        synchronized (this) {
            this.f7683b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f7682a = null;
        }
    }

    public final void e() {
        ArrayList arrayList;
        ArrayList arrayList2;
        d();
        arrayList = this.f7684c.f7702r;
        synchronized (arrayList) {
            arrayList2 = this.f7684c.f7702r;
            arrayList2.remove(this);
        }
    }
}
