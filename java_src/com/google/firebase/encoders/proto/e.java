package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.e;
import d6.d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, d6.c<?>> f13855a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, d6.e<?>> f13856b;

    /* renamed from: c  reason: collision with root package name */
    private final d6.c<Object> f13857c;

    /* loaded from: classes2.dex */
    public static final class a implements e6.b<a> {

        /* renamed from: d  reason: collision with root package name */
        private static final d6.c<Object> f13858d = new d6.c() { // from class: g6.b
            @Override // d6.c
            public final void a(Object obj, Object obj2) {
                e.a.e(obj, (d) obj2);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Map<Class<?>, d6.c<?>> f13859a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<Class<?>, d6.e<?>> f13860b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private d6.c<Object> f13861c = f13858d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, d6.d dVar) throws IOException {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public e c() {
            return new e(new HashMap(this.f13859a), new HashMap(this.f13860b), this.f13861c);
        }

        @NonNull
        public a d(@NonNull e6.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override // e6.b
        @NonNull
        /* renamed from: f */
        public <U> a a(@NonNull Class<U> cls, @NonNull d6.c<? super U> cVar) {
            this.f13859a.put(cls, cVar);
            this.f13860b.remove(cls);
            return this;
        }
    }

    e(Map<Class<?>, d6.c<?>> map, Map<Class<?>, d6.e<?>> map2, d6.c<Object> cVar) {
        this.f13855a = map;
        this.f13856b = map2;
        this.f13857c = cVar;
    }

    public static a a() {
        return new a();
    }

    public void b(@NonNull Object obj, @NonNull OutputStream outputStream) throws IOException {
        new d(outputStream, this.f13855a, this.f13856b, this.f13857c).q(obj);
    }

    @NonNull
    public byte[] c(@NonNull Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
