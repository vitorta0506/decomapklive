package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.Protobuf;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d implements d6.d {

    /* renamed from: f  reason: collision with root package name */
    private static final Charset f13845f = Charset.forName("UTF-8");

    /* renamed from: g  reason: collision with root package name */
    private static final d6.b f13846g = d6.b.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

    /* renamed from: h  reason: collision with root package name */
    private static final d6.b f13847h = d6.b.a("value").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

    /* renamed from: i  reason: collision with root package name */
    private static final d6.c<Map.Entry<Object, Object>> f13848i = new d6.c() { // from class: com.google.firebase.encoders.proto.c
        @Override // d6.c
        public final void a(Object obj, Object obj2) {
            d.t((Map.Entry) obj, (d6.d) obj2);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f13849a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, d6.c<?>> f13850b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, d6.e<?>> f13851c;

    /* renamed from: d  reason: collision with root package name */
    private final d6.c<Object> f13852d;

    /* renamed from: e  reason: collision with root package name */
    private final f f13853e = new f(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13854a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f13854a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13854a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13854a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(OutputStream outputStream, Map<Class<?>, d6.c<?>> map, Map<Class<?>, d6.e<?>> map2, d6.c<Object> cVar) {
        this.f13849a = outputStream;
        this.f13850b = map;
        this.f13851c = map2;
        this.f13852d = cVar;
    }

    private static ByteBuffer m(int i9) {
        return ByteBuffer.allocate(i9).order(ByteOrder.LITTLE_ENDIAN);
    }

    private <T> long n(d6.c<T> cVar, T t10) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f13849a;
            this.f13849a = bVar;
            cVar.a(t10, this);
            this.f13849a = outputStream;
            long a10 = bVar.a();
            bVar.close();
            return a10;
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private <T> d o(d6.c<T> cVar, d6.b bVar, T t10, boolean z10) throws IOException {
        long n9 = n(cVar, t10);
        if (z10 && n9 == 0) {
            return this;
        }
        u((s(bVar) << 3) | 2);
        v(n9);
        cVar.a(t10, this);
        return this;
    }

    private <T> d p(d6.e<T> eVar, d6.b bVar, T t10, boolean z10) throws IOException {
        this.f13853e.c(bVar, z10);
        eVar.a(t10, this.f13853e);
        return this;
    }

    private static Protobuf r(d6.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static int s(d6.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(Map.Entry entry, d6.d dVar) throws IOException {
        dVar.d(f13846g, entry.getKey());
        dVar.d(f13847h, entry.getValue());
    }

    private void u(int i9) throws IOException {
        while ((i9 & (-128)) != 0) {
            this.f13849a.write((i9 & 127) | 128);
            i9 >>>= 7;
        }
        this.f13849a.write(i9 & 127);
    }

    private void v(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f13849a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f13849a.write(((int) j10) & 127);
    }

    @Override // d6.d
    @NonNull
    public d6.d d(@NonNull d6.b bVar, @Nullable Object obj) throws IOException {
        return l(bVar, obj, true);
    }

    @Override // d6.d
    @NonNull
    /* renamed from: e */
    public d c(@NonNull d6.b bVar, int i9) throws IOException {
        return f(bVar, i9, true);
    }

    d f(@NonNull d6.b bVar, int i9, boolean z10) throws IOException {
        if (z10 && i9 == 0) {
            return this;
        }
        Protobuf r10 = r(bVar);
        int i10 = a.f13854a[r10.intEncoding().ordinal()];
        if (i10 == 1) {
            u(r10.tag() << 3);
            u(i9);
        } else if (i10 == 2) {
            u(r10.tag() << 3);
            u((i9 << 1) ^ (i9 >> 31));
        } else if (i10 == 3) {
            u((r10.tag() << 3) | 5);
            this.f13849a.write(m(4).putInt(i9).array());
        }
        return this;
    }

    @Override // d6.d
    @NonNull
    /* renamed from: g */
    public d b(@NonNull d6.b bVar, long j10) throws IOException {
        return h(bVar, j10, true);
    }

    d h(@NonNull d6.b bVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        Protobuf r10 = r(bVar);
        int i9 = a.f13854a[r10.intEncoding().ordinal()];
        if (i9 == 1) {
            u(r10.tag() << 3);
            v(j10);
        } else if (i9 == 2) {
            u(r10.tag() << 3);
            v((j10 >> 63) ^ (j10 << 1));
        } else if (i9 == 3) {
            u((r10.tag() << 3) | 1);
            this.f13849a.write(m(8).putLong(j10).array());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d i(@NonNull d6.b bVar, boolean z10, boolean z11) throws IOException {
        return f(bVar, z10 ? 1 : 0, z11);
    }

    d6.d j(@NonNull d6.b bVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        u((s(bVar) << 3) | 1);
        this.f13849a.write(m(8).putDouble(d10).array());
        return this;
    }

    d6.d k(@NonNull d6.b bVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        u((s(bVar) << 3) | 5);
        this.f13849a.write(m(4).putFloat(f10).array());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d6.d l(@NonNull d6.b bVar, @Nullable Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            u((s(bVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f13845f);
            u(bytes.length);
            this.f13849a.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                l(bVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                o(f13848i, bVar, entry, false);
            }
            return this;
        } else if (obj instanceof Double) {
            return j(bVar, ((Double) obj).doubleValue(), z10);
        } else {
            if (obj instanceof Float) {
                return k(bVar, ((Float) obj).floatValue(), z10);
            }
            if (obj instanceof Number) {
                return h(bVar, ((Number) obj).longValue(), z10);
            }
            if (obj instanceof Boolean) {
                return i(bVar, ((Boolean) obj).booleanValue(), z10);
            }
            if (obj instanceof byte[]) {
                byte[] bArr = (byte[]) obj;
                if (z10 && bArr.length == 0) {
                    return this;
                }
                u((s(bVar) << 3) | 2);
                u(bArr.length);
                this.f13849a.write(bArr);
                return this;
            }
            d6.c<?> cVar = this.f13850b.get(obj.getClass());
            if (cVar != null) {
                return o(cVar, bVar, obj, z10);
            }
            d6.e<?> eVar = this.f13851c.get(obj.getClass());
            if (eVar != null) {
                return p(eVar, bVar, obj, z10);
            }
            if (obj instanceof g6.a) {
                return c(bVar, ((g6.a) obj).getNumber());
            }
            if (obj instanceof Enum) {
                return c(bVar, ((Enum) obj).ordinal());
            }
            return o(this.f13852d, bVar, obj, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d q(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        d6.c<?> cVar = this.f13850b.get(obj.getClass());
        if (cVar != null) {
            cVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
