package com.google.android.gms.common.server.response;

import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import e4.k;
import e4.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class FastJsonResponse {

    /* loaded from: classes2.dex */
    public interface a<I, O> {
        @NonNull
        Object c(@NonNull Object obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public static final Object f(@NonNull Field field, @Nullable Object obj) {
        return field.zak != null ? field.p0(obj) : obj;
    }

    private static final void g(StringBuilder sb2, Field field, Object obj) {
        int i9 = field.f7829a;
        if (i9 == 11) {
            Class cls = field.f7835g;
            p.j(cls);
            sb2.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else if (i9 == 7) {
            sb2.append("\"");
            sb2.append(k.a((String) obj));
            sb2.append("\"");
        } else {
            sb2.append(obj);
        }
    }

    @NonNull
    public abstract Map<String, Field<?, ?>> a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public Object b(@NonNull Field field) {
        String str = field.f7833e;
        if (field.f7835g != null) {
            p.p(c(str) == null, "Concrete field shouldn't be value object: %s", field.f7833e);
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                return getClass().getMethod("get" + upperCase + substring, new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
        return c(str);
    }

    @Nullable
    protected abstract Object c(@NonNull String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean d(@NonNull Field field) {
        if (field.f7831c == 11) {
            if (field.f7832d) {
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            }
            throw new UnsupportedOperationException("Concrete types not supported");
        }
        return e(field.f7833e);
    }

    protected abstract boolean e(@NonNull String str);

    @NonNull
    public String toString() {
        Map<String, Field<?, ?>> a10 = a();
        StringBuilder sb2 = new StringBuilder(100);
        for (String str : a10.keySet()) {
            Field<?, ?> field = a10.get(str);
            if (d(field)) {
                Object f10 = f(field, b(field));
                if (sb2.length() == 0) {
                    sb2.append("{");
                } else {
                    sb2.append(",");
                }
                sb2.append("\"");
                sb2.append(str);
                sb2.append("\":");
                if (f10 == null) {
                    sb2.append("null");
                } else {
                    switch (field.f7831c) {
                        case 8:
                            sb2.append("\"");
                            sb2.append(e4.c.a((byte[]) f10));
                            sb2.append("\"");
                            continue;
                        case 9:
                            sb2.append("\"");
                            sb2.append(e4.c.b((byte[]) f10));
                            sb2.append("\"");
                            continue;
                        case 10:
                            l.a(sb2, (HashMap) f10);
                            continue;
                        default:
                            if (field.f7830b) {
                                ArrayList arrayList = (ArrayList) f10;
                                sb2.append("[");
                                int size = arrayList.size();
                                for (int i9 = 0; i9 < size; i9++) {
                                    if (i9 > 0) {
                                        sb2.append(",");
                                    }
                                    Object obj = arrayList.get(i9);
                                    if (obj != null) {
                                        g(sb2, field, obj);
                                    }
                                }
                                sb2.append("]");
                                break;
                            } else {
                                g(sb2, field, f10);
                                continue;
                            }
                    }
                }
            }
        }
        if (sb2.length() > 0) {
            sb2.append("}");
        } else {
            sb2.append("{}");
        }
        return sb2.toString();
    }

    /* loaded from: classes2.dex */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.a CREATOR = new com.google.android.gms.common.server.response.a();

        /* renamed from: a  reason: collision with root package name */
        protected final int f7829a;

        /* renamed from: b  reason: collision with root package name */
        protected final boolean f7830b;

        /* renamed from: c  reason: collision with root package name */
        protected final int f7831c;

        /* renamed from: d  reason: collision with root package name */
        protected final boolean f7832d;
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        protected final String f7833e;

        /* renamed from: f  reason: collision with root package name */
        protected final int f7834f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        protected final Class f7835g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        protected final String f7836h;
        private final int zai;
        private zan zaj;
        @Nullable
        private a zak;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(int i9, int i10, boolean z10, int i11, boolean z11, String str, int i12, @Nullable String str2, @Nullable zaa zaaVar) {
            this.zai = i9;
            this.f7829a = i10;
            this.f7830b = z10;
            this.f7831c = i11;
            this.f7832d = z11;
            this.f7833e = str;
            this.f7834f = i12;
            if (str2 == null) {
                this.f7835g = null;
                this.f7836h = null;
            } else {
                this.f7835g = SafeParcelResponse.class;
                this.f7836h = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = zaaVar.I();
            }
        }

        @NonNull
        public static <T extends FastJsonResponse> Field<T, T> I(@NonNull String str, int i9, @NonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i9, cls, null);
        }

        @NonNull
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> K(@NonNull String str, int i9, @NonNull Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i9, cls, null);
        }

        @NonNull
        public static Field<Integer, Integer> L(@NonNull String str, int i9) {
            return new Field<>(0, false, 0, false, str, i9, null, null);
        }

        @NonNull
        public static Field<String, String> M(@NonNull String str, int i9) {
            return new Field<>(7, false, 7, false, str, i9, null, null);
        }

        @NonNull
        public static Field<ArrayList<String>, ArrayList<String>> P(@NonNull String str, int i9) {
            return new Field<>(7, true, 7, true, str, i9, null, null);
        }

        @NonNull
        public static Field<byte[], byte[]> d(@NonNull String str, int i9) {
            return new Field<>(8, false, 8, false, str, i9, null, null);
        }

        @NonNull
        public final Map A0() {
            p.j(this.f7836h);
            p.j(this.zaj);
            return (Map) p.j(this.zaj.K(this.f7836h));
        }

        public final void C0(zan zanVar) {
            this.zaj = zanVar;
        }

        public final boolean E0() {
            return this.zak != null;
        }

        public int R() {
            return this.f7834f;
        }

        @Nullable
        final zaa c0() {
            a aVar = this.zak;
            if (aVar == null) {
                return null;
            }
            return zaa.d(aVar);
        }

        @NonNull
        public final Object p0(@NonNull Object obj) {
            p.j(this.zak);
            return this.zak.c(obj);
        }

        @NonNull
        public final String toString() {
            n.a a10 = n.d(this).a("versionCode", Integer.valueOf(this.zai)).a("typeIn", Integer.valueOf(this.f7829a)).a("typeInArray", Boolean.valueOf(this.f7830b)).a("typeOut", Integer.valueOf(this.f7831c)).a("typeOutArray", Boolean.valueOf(this.f7832d)).a("outputFieldName", this.f7833e).a("safeParcelFieldId", Integer.valueOf(this.f7834f)).a("concreteTypeName", w0());
            Class cls = this.f7835g;
            if (cls != null) {
                a10.a("concreteType.class", cls.getCanonicalName());
            }
            a aVar = this.zak;
            if (aVar != null) {
                a10.a("converterName", aVar.getClass().getCanonicalName());
            }
            return a10.toString();
        }

        @Nullable
        final String w0() {
            String str = this.f7836h;
            if (str == null) {
                return null;
            }
            return str;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@NonNull Parcel parcel, int i9) {
            int a10 = x3.a.a(parcel);
            x3.a.k(parcel, 1, this.zai);
            x3.a.k(parcel, 2, this.f7829a);
            x3.a.c(parcel, 3, this.f7830b);
            x3.a.k(parcel, 4, this.f7831c);
            x3.a.c(parcel, 5, this.f7832d);
            x3.a.q(parcel, 6, this.f7833e, false);
            x3.a.k(parcel, 7, R());
            x3.a.q(parcel, 8, w0(), false);
            x3.a.p(parcel, 9, c0(), i9, false);
            x3.a.b(parcel, a10);
        }

        protected Field(int i9, boolean z10, int i10, boolean z11, @NonNull String str, int i11, @Nullable Class cls, @Nullable a aVar) {
            this.zai = 1;
            this.f7829a = i9;
            this.f7830b = z10;
            this.f7831c = i10;
            this.f7832d = z11;
            this.f7833e = str;
            this.f7834f = i11;
            this.f7835g = cls;
            if (cls == null) {
                this.f7836h = null;
            } else {
                this.f7836h = cls.getCanonicalName();
            }
            this.zak = aVar;
        }
    }
}
