package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
/* loaded from: classes.dex */
public abstract class a {

    @AnyThread
    /* renamed from: com.android.billingclient.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0058a {

        /* renamed from: a  reason: collision with root package name */
        private volatile boolean f3916a;

        /* renamed from: b  reason: collision with root package name */
        private final Context f3917b;

        /* renamed from: c  reason: collision with root package name */
        private volatile k f3918c;

        /* synthetic */ C0058a(Context context, g0 g0Var) {
            this.f3917b = context;
        }

        @NonNull
        public a a() {
            if (this.f3917b != null) {
                if (this.f3918c != null) {
                    if (this.f3916a) {
                        return new b(null, this.f3916a, this.f3917b, this.f3918c);
                    }
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        @NonNull
        public C0058a b() {
            this.f3916a = true;
            return this;
        }

        @NonNull
        public C0058a c(@NonNull k kVar) {
            this.f3918c = kVar;
            return this;
        }
    }

    @NonNull
    @AnyThread
    public static C0058a c(@NonNull Context context) {
        return new C0058a(context, null);
    }

    @AnyThread
    public abstract void a(@NonNull f fVar, @NonNull g gVar);

    @NonNull
    @UiThread
    public abstract e b(@NonNull Activity activity, @NonNull d dVar);

    @AnyThread
    public abstract void d(@NonNull String str, @NonNull i iVar);

    @AnyThread
    public abstract void e(@NonNull String str, @NonNull j jVar);

    @AnyThread
    public abstract void f(@NonNull l lVar, @NonNull m mVar);

    @AnyThread
    public abstract void g(@NonNull c cVar);
}
