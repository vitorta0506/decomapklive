package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.c;
import com.bumptech.glide.load.engine.k;
import java.util.List;
import java.util.Map;
import s0.l;
/* loaded from: classes.dex */
public class e extends ContextWrapper {
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    static final i<?, ?> f4170k = new b();

    /* renamed from: a  reason: collision with root package name */
    private final g0.b f4171a;

    /* renamed from: b  reason: collision with root package name */
    private final Registry f4172b;

    /* renamed from: c  reason: collision with root package name */
    private final s0.g f4173c;

    /* renamed from: d  reason: collision with root package name */
    private final c.a f4174d;

    /* renamed from: e  reason: collision with root package name */
    private final List<com.bumptech.glide.request.g<Object>> f4175e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, i<?, ?>> f4176f;

    /* renamed from: g  reason: collision with root package name */
    private final k f4177g;

    /* renamed from: h  reason: collision with root package name */
    private final f f4178h;

    /* renamed from: i  reason: collision with root package name */
    private final int f4179i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private com.bumptech.glide.request.h f4180j;

    public e(@NonNull Context context, @NonNull g0.b bVar, @NonNull Registry registry, @NonNull s0.g gVar, @NonNull c.a aVar, @NonNull Map<Class<?>, i<?, ?>> map, @NonNull List<com.bumptech.glide.request.g<Object>> list, @NonNull k kVar, @NonNull f fVar, int i9) {
        super(context.getApplicationContext());
        this.f4171a = bVar;
        this.f4172b = registry;
        this.f4173c = gVar;
        this.f4174d = aVar;
        this.f4175e = list;
        this.f4176f = map;
        this.f4177g = kVar;
        this.f4178h = fVar;
        this.f4179i = i9;
    }

    @NonNull
    public <X> l<ImageView, X> a(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f4173c.a(imageView, cls);
    }

    @NonNull
    public g0.b b() {
        return this.f4171a;
    }

    public List<com.bumptech.glide.request.g<Object>> c() {
        return this.f4175e;
    }

    public synchronized com.bumptech.glide.request.h d() {
        if (this.f4180j == null) {
            this.f4180j = this.f4174d.build().T();
        }
        return this.f4180j;
    }

    @NonNull
    public <T> i<?, T> e(@NonNull Class<T> cls) {
        i<?, T> iVar = (i<?, T>) this.f4176f.get(cls);
        if (iVar == null) {
            for (Map.Entry<Class<?>, i<?, ?>> entry : this.f4176f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    iVar = (i<?, T>) entry.getValue();
                }
            }
        }
        return iVar == null ? (i<?, T>) f4170k : iVar;
    }

    @NonNull
    public k f() {
        return this.f4177g;
    }

    public f g() {
        return this.f4178h;
    }

    public int h() {
        return this.f4179i;
    }

    @NonNull
    public Registry i() {
        return this.f4172b;
    }
}
