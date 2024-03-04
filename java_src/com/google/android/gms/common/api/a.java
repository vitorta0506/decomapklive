package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.p;
import java.util.Set;
/* loaded from: classes2.dex */
public final class a<O extends d> {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC0083a f7468a;

    /* renamed from: b  reason: collision with root package name */
    private final g f7469b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7470c;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC0083a<T extends f, O> extends e<T, O> {
        @NonNull
        @Deprecated
        public T a(@NonNull Context context, @NonNull Looper looper, @NonNull com.google.android.gms.common.internal.e eVar, @NonNull O o10, @NonNull d.a aVar, @NonNull d.b bVar) {
            return b(context, looper, eVar, o10, aVar, bVar);
        }

        @NonNull
        public T b(@NonNull Context context, @NonNull Looper looper, @NonNull com.google.android.gms.common.internal.e eVar, @NonNull O o10, @NonNull v3.c cVar, @NonNull v3.h hVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
    }

    /* loaded from: classes2.dex */
    public static class c<C extends b> {
    }

    /* loaded from: classes2.dex */
    public interface d {
        @NonNull
        public static final c T = new c(null);

        /* renamed from: com.google.android.gms.common.api.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0084a extends d {
            @NonNull
            Account F();
        }

        /* loaded from: classes2.dex */
        public interface b extends d {
            @Nullable
            GoogleSignInAccount y();
        }

        /* loaded from: classes2.dex */
        public static final class c implements d {
            private c() {
            }

            /* synthetic */ c(k kVar) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class e<T extends b, O> {
    }

    /* loaded from: classes2.dex */
    public interface f extends b {
        void b(@NonNull String str);

        @NonNull
        String c();

        void d(@NonNull d.c cVar);

        void disconnect();

        boolean e();

        boolean f();

        @NonNull
        Set<Scope> h();

        void i(@Nullable com.google.android.gms.common.internal.i iVar, @Nullable Set<Scope> set);

        boolean isConnected();

        boolean isConnecting();

        void j(@NonNull d.e eVar);

        int k();

        @NonNull
        Feature[] l();

        @Nullable
        String m();
    }

    /* loaded from: classes2.dex */
    public static final class g<C extends f> extends c<C> {
    }

    public <C extends f> a(@NonNull String str, @NonNull AbstractC0083a<C, O> abstractC0083a, @NonNull g<C> gVar) {
        p.k(abstractC0083a, "Cannot construct an Api with a null ClientBuilder");
        p.k(gVar, "Cannot construct an Api with a null ClientKey");
        this.f7470c = str;
        this.f7468a = abstractC0083a;
        this.f7469b = gVar;
    }

    @NonNull
    public final AbstractC0083a a() {
        return this.f7468a;
    }

    @NonNull
    public final c b() {
        return this.f7469b;
    }

    @NonNull
    public final String c() {
        return this.f7470c;
    }
}
