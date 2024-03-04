package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class i<DataType, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<DataType> f4342a;

    /* renamed from: b  reason: collision with root package name */
    private final List<? extends e0.f<DataType, ResourceType>> f4343b;

    /* renamed from: c  reason: collision with root package name */
    private final o0.e<ResourceType, Transcode> f4344c;

    /* renamed from: d  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f4345d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4346e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a<ResourceType> {
        @NonNull
        u<ResourceType> a(@NonNull u<ResourceType> uVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends e0.f<DataType, ResourceType>> list, o0.e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.f4342a = cls;
        this.f4343b = list;
        this.f4344c = eVar;
        this.f4345d = pool;
        this.f4346e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    @NonNull
    private u<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int i9, int i10, @NonNull e0.e eVar2) throws GlideException {
        List<Throwable> list = (List) v0.j.d(this.f4345d.acquire());
        try {
            return c(eVar, i9, i10, eVar2, list);
        } finally {
            this.f4345d.release(list);
        }
    }

    @NonNull
    private u<ResourceType> c(com.bumptech.glide.load.data.e<DataType> eVar, int i9, int i10, @NonNull e0.e eVar2, List<Throwable> list) throws GlideException {
        int size = this.f4343b.size();
        u<ResourceType> uVar = null;
        for (int i11 = 0; i11 < size; i11++) {
            e0.f<DataType, ResourceType> fVar = this.f4343b.get(i11);
            try {
                if (fVar.a(eVar.a(), eVar2)) {
                    uVar = fVar.b(eVar.a(), i9, i10, eVar2);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e10) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + fVar, e10);
                }
                list.add(e10);
            }
            if (uVar != null) {
                break;
            }
        }
        if (uVar != null) {
            return uVar;
        }
        throw new GlideException(this.f4346e, new ArrayList(list));
    }

    public u<Transcode> a(com.bumptech.glide.load.data.e<DataType> eVar, int i9, int i10, @NonNull e0.e eVar2, a<ResourceType> aVar) throws GlideException {
        return this.f4344c.a(aVar.a(b(eVar, i9, i10, eVar2)), eVar2);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f4342a + ", decoders=" + this.f4343b + ", transcoder=" + this.f4344c + '}';
    }
}
