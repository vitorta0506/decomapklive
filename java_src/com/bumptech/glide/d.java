package com.bumptech.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.c;
import com.bumptech.glide.f;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.manager.h;
import g0.j;
import h0.a;
import h0.i;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    private k f4154c;

    /* renamed from: d  reason: collision with root package name */
    private g0.d f4155d;

    /* renamed from: e  reason: collision with root package name */
    private g0.b f4156e;

    /* renamed from: f  reason: collision with root package name */
    private h0.h f4157f;

    /* renamed from: g  reason: collision with root package name */
    private i0.a f4158g;

    /* renamed from: h  reason: collision with root package name */
    private i0.a f4159h;

    /* renamed from: i  reason: collision with root package name */
    private a.InterfaceC0436a f4160i;

    /* renamed from: j  reason: collision with root package name */
    private h0.i f4161j;

    /* renamed from: k  reason: collision with root package name */
    private p0.b f4162k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private h.b f4165n;

    /* renamed from: o  reason: collision with root package name */
    private i0.a f4166o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f4167p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<com.bumptech.glide.request.g<Object>> f4168q;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, i<?, ?>> f4152a = new ArrayMap();

    /* renamed from: b  reason: collision with root package name */
    private final f.a f4153b = new f.a();

    /* renamed from: l  reason: collision with root package name */
    private int f4163l = 4;

    /* renamed from: m  reason: collision with root package name */
    private c.a f4164m = new a();

    /* loaded from: classes.dex */
    class a implements c.a {
        a() {
        }

        @Override // com.bumptech.glide.c.a
        @NonNull
        public com.bumptech.glide.request.h build() {
            return new com.bumptech.glide.request.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {
        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c {
        c() {
        }
    }

    /* renamed from: com.bumptech.glide.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0062d {
    }

    /* loaded from: classes.dex */
    public static final class e {
        private e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public com.bumptech.glide.c a(@NonNull Context context) {
        if (this.f4158g == null) {
            this.f4158g = i0.a.h();
        }
        if (this.f4159h == null) {
            this.f4159h = i0.a.f();
        }
        if (this.f4166o == null) {
            this.f4166o = i0.a.d();
        }
        if (this.f4161j == null) {
            this.f4161j = new i.a(context).a();
        }
        if (this.f4162k == null) {
            this.f4162k = new p0.d();
        }
        if (this.f4155d == null) {
            int b10 = this.f4161j.b();
            if (b10 > 0) {
                this.f4155d = new j(b10);
            } else {
                this.f4155d = new g0.e();
            }
        }
        if (this.f4156e == null) {
            this.f4156e = new g0.i(this.f4161j.a());
        }
        if (this.f4157f == null) {
            this.f4157f = new h0.g(this.f4161j.d());
        }
        if (this.f4160i == null) {
            this.f4160i = new h0.f(context);
        }
        if (this.f4154c == null) {
            this.f4154c = new k(this.f4157f, this.f4160i, this.f4159h, this.f4158g, i0.a.i(), this.f4166o, this.f4167p);
        }
        List<com.bumptech.glide.request.g<Object>> list = this.f4168q;
        if (list == null) {
            this.f4168q = Collections.emptyList();
        } else {
            this.f4168q = Collections.unmodifiableList(list);
        }
        f b11 = this.f4153b.b();
        return new com.bumptech.glide.c(context, this.f4154c, this.f4157f, this.f4155d, this.f4156e, new com.bumptech.glide.manager.h(this.f4165n, b11), this.f4162k, this.f4163l, this.f4164m, this.f4152a, this.f4168q, b11);
    }

    @NonNull
    public d b(@Nullable a.InterfaceC0436a interfaceC0436a) {
        this.f4160i = interfaceC0436a;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@Nullable h.b bVar) {
        this.f4165n = bVar;
    }
}
