package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.engine.u;
import j0.n;
import j0.o;
import j0.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class Registry {

    /* renamed from: a  reason: collision with root package name */
    private final p f4129a;

    /* renamed from: b  reason: collision with root package name */
    private final r0.a f4130b;

    /* renamed from: c  reason: collision with root package name */
    private final r0.e f4131c;

    /* renamed from: d  reason: collision with root package name */
    private final r0.f f4132d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.data.f f4133e;

    /* renamed from: f  reason: collision with root package name */
    private final o0.f f4134f;

    /* renamed from: g  reason: collision with root package name */
    private final r0.b f4135g;

    /* renamed from: h  reason: collision with root package name */
    private final r0.d f4136h = new r0.d();

    /* renamed from: i  reason: collision with root package name */
    private final r0.c f4137i = new r0.c();

    /* renamed from: j  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f4138j;

    /* loaded from: classes.dex */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> NoModelLoaderAvailableException(@NonNull M m10, @NonNull List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m10);
        }

        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* loaded from: classes.dex */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        Pools.Pool<List<Throwable>> e10 = w0.a.e();
        this.f4138j = e10;
        this.f4129a = new p(e10);
        this.f4130b = new r0.a();
        this.f4131c = new r0.e();
        this.f4132d = new r0.f();
        this.f4133e = new com.bumptech.glide.load.data.f();
        this.f4134f = new o0.f();
        this.f4135g = new r0.b();
        s(Arrays.asList("Animation", "Bitmap", "BitmapDrawable"));
    }

    @NonNull
    private <Data, TResource, Transcode> List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> f(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f4131c.d(cls, cls2)) {
            for (Class cls5 : this.f4134f.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.engine.i(cls, cls4, cls5, this.f4131c.b(cls, cls4), this.f4134f.a(cls4, cls5), this.f4138j));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Data> Registry a(@NonNull Class<Data> cls, @NonNull e0.a<Data> aVar) {
        this.f4130b.a(cls, aVar);
        return this;
    }

    @NonNull
    public <TResource> Registry b(@NonNull Class<TResource> cls, @NonNull e0.g<TResource> gVar) {
        this.f4132d.a(cls, gVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry c(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull e0.f<Data, TResource> fVar) {
        e("legacy_append", cls, cls2, fVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.f4129a.a(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry e(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull e0.f<Data, TResource> fVar) {
        this.f4131c.a(str, fVar, cls, cls2);
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> g() {
        List<ImageHeaderParser> b10 = this.f4135g.b();
        if (b10.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return b10;
    }

    @Nullable
    public <Data, TResource, Transcode> s<Data, TResource, Transcode> h(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        s<Data, TResource, Transcode> a10 = this.f4137i.a(cls, cls2, cls3);
        if (this.f4137i.c(a10)) {
            return null;
        }
        if (a10 == null) {
            List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> f10 = f(cls, cls2, cls3);
            a10 = f10.isEmpty() ? null : new s<>(cls, cls2, cls3, f10, this.f4138j);
            this.f4137i.d(cls, cls2, cls3, a10);
        }
        return a10;
    }

    @NonNull
    public <Model> List<n<Model, ?>> i(@NonNull Model model) {
        return this.f4129a.d(model);
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> j(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> a10 = this.f4136h.a(cls, cls2, cls3);
        if (a10 == null) {
            a10 = new ArrayList<>();
            for (Class<?> cls4 : this.f4129a.c(cls)) {
                for (Class<?> cls5 : this.f4131c.d(cls4, cls2)) {
                    if (!this.f4134f.b(cls5, cls3).isEmpty() && !a10.contains(cls5)) {
                        a10.add(cls5);
                    }
                }
            }
            this.f4136h.b(cls, cls2, cls3, Collections.unmodifiableList(a10));
        }
        return a10;
    }

    @NonNull
    public <X> e0.g<X> k(@NonNull u<X> uVar) throws NoResultEncoderAvailableException {
        e0.g<X> b10 = this.f4132d.b(uVar.a());
        if (b10 != null) {
            return b10;
        }
        throw new NoResultEncoderAvailableException(uVar.a());
    }

    @NonNull
    public <X> com.bumptech.glide.load.data.e<X> l(@NonNull X x10) {
        return this.f4133e.a(x10);
    }

    @NonNull
    public <X> e0.a<X> m(@NonNull X x10) throws NoSourceEncoderAvailableException {
        e0.a<X> b10 = this.f4130b.b(x10.getClass());
        if (b10 != null) {
            return b10;
        }
        throw new NoSourceEncoderAvailableException(x10.getClass());
    }

    public boolean n(@NonNull u<?> uVar) {
        return this.f4132d.b(uVar.a()) != null;
    }

    @NonNull
    public Registry o(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f4135g.a(imageHeaderParser);
        return this;
    }

    @NonNull
    public Registry p(@NonNull e.a<?> aVar) {
        this.f4133e.b(aVar);
        return this;
    }

    @NonNull
    public <TResource, Transcode> Registry q(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull o0.e<TResource, Transcode> eVar) {
        this.f4134f.c(cls, cls2, eVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry r(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f4129a.f(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public final Registry s(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.f4131c.e(arrayList);
        return this;
    }
}
