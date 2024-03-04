package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class s<Data, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<Data> f4429a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f4430b;

    /* renamed from: c  reason: collision with root package name */
    private final List<? extends i<Data, ResourceType, Transcode>> f4431c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4432d;

    public s(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f4429a = cls;
        this.f4430b = pool;
        this.f4431c = (List) v0.j.c(list);
        this.f4432d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    private u<Transcode> b(com.bumptech.glide.load.data.e<Data> eVar, @NonNull e0.e eVar2, int i9, int i10, i.a<ResourceType> aVar, List<Throwable> list) throws GlideException {
        int size = this.f4431c.size();
        u<Transcode> uVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            try {
                uVar = this.f4431c.get(i11).a(eVar, i9, i10, eVar2, aVar);
            } catch (GlideException e10) {
                list.add(e10);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f4432d, new ArrayList(list));
    }

    public u<Transcode> a(com.bumptech.glide.load.data.e<Data> eVar, @NonNull e0.e eVar2, int i9, int i10, i.a<ResourceType> aVar) throws GlideException {
        List<Throwable> list = (List) v0.j.d(this.f4430b.acquire());
        try {
            return b(eVar, eVar2, i9, i10, aVar, list);
        } finally {
            this.f4430b.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f4431c.toArray()) + '}';
    }
}
