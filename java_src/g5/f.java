package g5;

import com.google.api.client.json.JsonToken;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.b0;
import com.google.api.client.util.g0;
import com.google.api.client.util.j;
import com.google.api.client.util.m;
import com.google.api.client.util.z;
import g5.g;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2.dex */
public abstract class f implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static WeakHashMap<Class<?>, Field> f39961a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final Lock f39962b = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39963a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f39963a = iArr;
            try {
                iArr[JsonToken.START_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39963a[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f39963a[JsonToken.END_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f39963a[JsonToken.FIELD_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f39963a[JsonToken.END_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f39963a[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f39963a[JsonToken.VALUE_FALSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f39963a[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f39963a[JsonToken.VALUE_NUMBER_INT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f39963a[JsonToken.VALUE_STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f39963a[JsonToken.VALUE_NULL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    private void I(ArrayList<Type> arrayList, Object obj, g5.a aVar) throws IOException {
        if (obj instanceof b) {
            ((b) obj).h(p());
        }
        JsonToken Y = Y();
        Class<?> cls = obj.getClass();
        com.google.api.client.util.h e10 = com.google.api.client.util.h.e(cls);
        boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
        if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
            T(null, (Map) obj, g0.e(cls), arrayList, aVar);
            return;
        }
        while (Y == JsonToken.FIELD_NAME) {
            String v10 = v();
            w();
            m b10 = e10.b(v10);
            if (b10 != null) {
                if (b10.h() && !b10.i()) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field b11 = b10.b();
                int size = arrayList.size();
                arrayList.add(b11.getGenericType());
                Object U = U(b11, b10.d(), arrayList, obj, aVar, true);
                arrayList.remove(size);
                b10.m(obj, U);
            } else if (isAssignableFrom) {
                ((GenericData) obj).e(v10, U(null, null, arrayList, obj, aVar, true));
            } else {
                V();
            }
            Y = w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void P(Field field, Collection<T> collection, Type type, ArrayList<Type> arrayList, g5.a aVar) throws IOException {
        JsonToken Y = Y();
        while (Y != JsonToken.END_ARRAY) {
            collection.add(U(field, type, arrayList, collection, aVar, true));
            Y = w();
        }
    }

    private void T(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, g5.a aVar) throws IOException {
        JsonToken Y = Y();
        while (Y == JsonToken.FIELD_NAME) {
            String v10 = v();
            w();
            map.put(v10, U(field, type, arrayList, map, aVar, true));
            Y = w();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x01aa A[Catch: IllegalArgumentException -> 0x0308, TryCatch #1 {IllegalArgumentException -> 0x0308, blocks: (B:14:0x002d, B:21:0x0041, B:24:0x0048, B:26:0x004f, B:28:0x0057, B:30:0x005f, B:32:0x006c, B:34:0x0074, B:36:0x0081, B:38:0x008a, B:41:0x009e, B:51:0x00be, B:54:0x00c8, B:57:0x00d1, B:58:0x00d6, B:44:0x00a4, B:46:0x00ac, B:48:0x00b4, B:61:0x00e1, B:64:0x00ea, B:66:0x00f1, B:71:0x00ff, B:74:0x0106, B:79:0x0110, B:83:0x0117, B:88:0x0120, B:93:0x0129, B:98:0x0132, B:101:0x0137, B:102:0x014d, B:103:0x014e, B:105:0x0157, B:107:0x0160, B:109:0x0169, B:111:0x0172, B:113:0x017b, B:115:0x0184, B:118:0x018b, B:121:0x0191, B:126:0x019d, B:128:0x01aa, B:129:0x01ad, B:131:0x01b0, B:135:0x01ba, B:140:0x01c6, B:142:0x01d5, B:147:0x01e8, B:149:0x01f9, B:144:0x01dc, B:146:0x01e4, B:152:0x0203, B:156:0x020c, B:158:0x0217, B:161:0x021f, B:166:0x022c, B:173:0x0242, B:175:0x0248, B:177:0x024d, B:179:0x0255, B:181:0x025d, B:184:0x0266, B:171:0x0238, B:172:0x023d), top: B:223:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01ad A[Catch: IllegalArgumentException -> 0x0308, TryCatch #1 {IllegalArgumentException -> 0x0308, blocks: (B:14:0x002d, B:21:0x0041, B:24:0x0048, B:26:0x004f, B:28:0x0057, B:30:0x005f, B:32:0x006c, B:34:0x0074, B:36:0x0081, B:38:0x008a, B:41:0x009e, B:51:0x00be, B:54:0x00c8, B:57:0x00d1, B:58:0x00d6, B:44:0x00a4, B:46:0x00ac, B:48:0x00b4, B:61:0x00e1, B:64:0x00ea, B:66:0x00f1, B:71:0x00ff, B:74:0x0106, B:79:0x0110, B:83:0x0117, B:88:0x0120, B:93:0x0129, B:98:0x0132, B:101:0x0137, B:102:0x014d, B:103:0x014e, B:105:0x0157, B:107:0x0160, B:109:0x0169, B:111:0x0172, B:113:0x017b, B:115:0x0184, B:118:0x018b, B:121:0x0191, B:126:0x019d, B:128:0x01aa, B:129:0x01ad, B:131:0x01b0, B:135:0x01ba, B:140:0x01c6, B:142:0x01d5, B:147:0x01e8, B:149:0x01f9, B:144:0x01dc, B:146:0x01e4, B:152:0x0203, B:156:0x020c, B:158:0x0217, B:161:0x021f, B:166:0x022c, B:173:0x0242, B:175:0x0248, B:177:0x024d, B:179:0x0255, B:181:0x025d, B:184:0x0266, B:171:0x0238, B:172:0x023d), top: B:223:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01d5 A[Catch: IllegalArgumentException -> 0x0308, TryCatch #1 {IllegalArgumentException -> 0x0308, blocks: (B:14:0x002d, B:21:0x0041, B:24:0x0048, B:26:0x004f, B:28:0x0057, B:30:0x005f, B:32:0x006c, B:34:0x0074, B:36:0x0081, B:38:0x008a, B:41:0x009e, B:51:0x00be, B:54:0x00c8, B:57:0x00d1, B:58:0x00d6, B:44:0x00a4, B:46:0x00ac, B:48:0x00b4, B:61:0x00e1, B:64:0x00ea, B:66:0x00f1, B:71:0x00ff, B:74:0x0106, B:79:0x0110, B:83:0x0117, B:88:0x0120, B:93:0x0129, B:98:0x0132, B:101:0x0137, B:102:0x014d, B:103:0x014e, B:105:0x0157, B:107:0x0160, B:109:0x0169, B:111:0x0172, B:113:0x017b, B:115:0x0184, B:118:0x018b, B:121:0x0191, B:126:0x019d, B:128:0x01aa, B:129:0x01ad, B:131:0x01b0, B:135:0x01ba, B:140:0x01c6, B:142:0x01d5, B:147:0x01e8, B:149:0x01f9, B:144:0x01dc, B:146:0x01e4, B:152:0x0203, B:156:0x020c, B:158:0x0217, B:161:0x021f, B:166:0x022c, B:173:0x0242, B:175:0x0248, B:177:0x024d, B:179:0x0255, B:181:0x025d, B:184:0x0266, B:171:0x0238, B:172:0x023d), top: B:223:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01f9 A[Catch: IllegalArgumentException -> 0x0308, TryCatch #1 {IllegalArgumentException -> 0x0308, blocks: (B:14:0x002d, B:21:0x0041, B:24:0x0048, B:26:0x004f, B:28:0x0057, B:30:0x005f, B:32:0x006c, B:34:0x0074, B:36:0x0081, B:38:0x008a, B:41:0x009e, B:51:0x00be, B:54:0x00c8, B:57:0x00d1, B:58:0x00d6, B:44:0x00a4, B:46:0x00ac, B:48:0x00b4, B:61:0x00e1, B:64:0x00ea, B:66:0x00f1, B:71:0x00ff, B:74:0x0106, B:79:0x0110, B:83:0x0117, B:88:0x0120, B:93:0x0129, B:98:0x0132, B:101:0x0137, B:102:0x014d, B:103:0x014e, B:105:0x0157, B:107:0x0160, B:109:0x0169, B:111:0x0172, B:113:0x017b, B:115:0x0184, B:118:0x018b, B:121:0x0191, B:126:0x019d, B:128:0x01aa, B:129:0x01ad, B:131:0x01b0, B:135:0x01ba, B:140:0x01c6, B:142:0x01d5, B:147:0x01e8, B:149:0x01f9, B:144:0x01dc, B:146:0x01e4, B:152:0x0203, B:156:0x020c, B:158:0x0217, B:161:0x021f, B:166:0x022c, B:173:0x0242, B:175:0x0248, B:177:0x024d, B:179:0x0255, B:181:0x025d, B:184:0x0266, B:171:0x0238, B:172:0x023d), top: B:223:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0202 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object U(java.lang.reflect.Field r14, java.lang.reflect.Type r15, java.util.ArrayList<java.lang.reflect.Type> r16, java.lang.Object r17, g5.a r18, boolean r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g5.f.U(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, java.lang.Object, g5.a, boolean):java.lang.Object");
    }

    private JsonToken X() throws IOException {
        JsonToken j10 = j();
        if (j10 == null) {
            j10 = w();
        }
        z.b(j10 != null, "no JSON input found");
        return j10;
    }

    private JsonToken Y() throws IOException {
        JsonToken X = X();
        int i9 = a.f39963a[X.ordinal()];
        boolean z10 = true;
        if (i9 != 1) {
            return i9 != 2 ? X : w();
        }
        JsonToken w6 = w();
        if (w6 != JsonToken.FIELD_NAME && w6 != JsonToken.END_OBJECT) {
            z10 = false;
        }
        z.b(z10, w6);
        return w6;
    }

    private static Field d(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        Lock lock = f39962b;
        lock.lock();
        try {
            if (f39961a.containsKey(cls)) {
                Field field2 = f39961a.get(cls);
                lock.unlock();
                return field2;
            }
            for (m mVar : com.google.api.client.util.h.e(cls).c()) {
                Field b10 = mVar.b();
                g gVar = (g) b10.getAnnotation(g.class);
                if (gVar != null) {
                    z.c(field == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls);
                    z.c(j.e(b10.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, b10.getType());
                    g.a[] typeDefinitions = gVar.typeDefinitions();
                    HashSet a10 = b0.a();
                    z.b(typeDefinitions.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    for (g.a aVar : typeDefinitions) {
                        z.c(a10.add(aVar.key()), "Class contains two @TypeDef annotations with identical key: %s", aVar.key());
                    }
                    field = b10;
                }
            }
            f39961a.put(cls, field);
            return field;
        } finally {
            f39962b.unlock();
        }
    }

    public final <T> T A(Class<T> cls, g5.a aVar) throws IOException {
        return (T) F(cls, false, aVar);
    }

    public Object C(Type type, boolean z10) throws IOException {
        return F(type, z10, null);
    }

    public Object F(Type type, boolean z10, g5.a aVar) throws IOException {
        try {
            if (!Void.class.equals(type)) {
                X();
            }
            return U(null, type, new ArrayList<>(), null, aVar, true);
        } finally {
            if (z10) {
                close();
            }
        }
    }

    public final <T> T K(Class<T> cls) throws IOException {
        return (T) L(cls, null);
    }

    public final <T> T L(Class<T> cls, g5.a aVar) throws IOException {
        try {
            return (T) A(cls, aVar);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> M(Class<?> cls, Class<T> cls2) throws IOException {
        return N(cls, cls2, null);
    }

    public final <T> Collection<T> N(Class<?> cls, Class<T> cls2, g5.a aVar) throws IOException {
        Collection<T> collection = (Collection<T>) j.g(cls);
        R(collection, cls2, aVar);
        return collection;
    }

    public final <T> void R(Collection<? super T> collection, Class<T> cls, g5.a aVar) throws IOException {
        P(null, collection, cls, new ArrayList<>(), aVar);
    }

    public abstract f V() throws IOException;

    public final String W(Set<String> set) throws IOException {
        JsonToken Y = Y();
        while (Y == JsonToken.FIELD_NAME) {
            String v10 = v();
            w();
            if (set.contains(v10)) {
                return v10;
            }
            V();
            Y = w();
        }
        return null;
    }

    public abstract BigInteger a() throws IOException;

    public abstract byte c() throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract String e() throws IOException;

    public abstract JsonToken j();

    public abstract BigDecimal k() throws IOException;

    public abstract double o() throws IOException;

    public abstract c p();

    public abstract float q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract short t() throws IOException;

    public abstract String v() throws IOException;

    public abstract JsonToken w() throws IOException;

    public final <T> T y(Class<T> cls) throws IOException {
        return (T) A(cls, null);
    }
}
