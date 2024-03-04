package com.google.common.base;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
/* loaded from: classes2.dex */
public final class j {

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final String f12364a;

        /* renamed from: b  reason: collision with root package name */
        private final C0101b f12365b;

        /* renamed from: c  reason: collision with root package name */
        private C0101b f12366c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f12367d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f12368e;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static final class a extends C0101b {
            private a() {
                super();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.common.base.j$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0101b {

            /* renamed from: a  reason: collision with root package name */
            String f12369a;

            /* renamed from: b  reason: collision with root package name */
            Object f12370b;

            /* renamed from: c  reason: collision with root package name */
            C0101b f12371c;

            private C0101b() {
            }
        }

        private C0101b f() {
            C0101b c0101b = new C0101b();
            this.f12366c.f12371c = c0101b;
            this.f12366c = c0101b;
            return c0101b;
        }

        private b g(Object obj) {
            f().f12370b = obj;
            return this;
        }

        private b h(String str, Object obj) {
            C0101b f10 = f();
            f10.f12370b = obj;
            f10.f12369a = (String) o.s(str);
            return this;
        }

        private a i() {
            a aVar = new a();
            this.f12366c.f12371c = aVar;
            this.f12366c = aVar;
            return aVar;
        }

        private b j(String str, Object obj) {
            a i9 = i();
            i9.f12370b = obj;
            i9.f12369a = (String) o.s(str);
            return this;
        }

        private static boolean l(Object obj) {
            if (obj instanceof CharSequence) {
                return ((CharSequence) obj).length() == 0;
            } else if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            } else {
                if (obj instanceof Map) {
                    return ((Map) obj).isEmpty();
                }
                if (obj instanceof java.util.Optional) {
                    return !((java.util.Optional) obj).isPresent();
                }
                if (obj instanceof OptionalInt) {
                    return !((OptionalInt) obj).isPresent();
                }
                if (obj instanceof OptionalLong) {
                    return !((OptionalLong) obj).isPresent();
                }
                if (obj instanceof OptionalDouble) {
                    return !((OptionalDouble) obj).isPresent();
                }
                if (obj instanceof Optional) {
                    return !((Optional) obj).isPresent();
                }
                return obj.getClass().isArray() && Array.getLength(obj) == 0;
            }
        }

        public b a(String str, double d10) {
            return j(str, String.valueOf(d10));
        }

        public b b(String str, int i9) {
            return j(str, String.valueOf(i9));
        }

        public b c(String str, long j10) {
            return j(str, String.valueOf(j10));
        }

        public b d(String str, Object obj) {
            return h(str, obj);
        }

        public b e(String str, boolean z10) {
            return j(str, String.valueOf(z10));
        }

        public b k(Object obj) {
            return g(obj);
        }

        public b m() {
            this.f12367d = true;
            return this;
        }

        public String toString() {
            boolean z10 = this.f12367d;
            boolean z11 = this.f12368e;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f12364a);
            sb2.append('{');
            String str = "";
            for (C0101b c0101b = this.f12365b.f12371c; c0101b != null; c0101b = c0101b.f12371c) {
                Object obj = c0101b.f12370b;
                if (!(c0101b instanceof a)) {
                    if (obj == null) {
                        if (z10) {
                        }
                    } else if (z11 && l(obj)) {
                    }
                }
                sb2.append(str);
                String str2 = c0101b.f12369a;
                if (str2 != null) {
                    sb2.append(str2);
                    sb2.append('=');
                }
                if (obj != null && obj.getClass().isArray()) {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb2.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                } else {
                    sb2.append(obj);
                }
                str = ", ";
            }
            sb2.append('}');
            return sb2.toString();
        }

        private b(String str) {
            C0101b c0101b = new C0101b();
            this.f12365b = c0101b;
            this.f12366c = c0101b;
            this.f12367d = false;
            this.f12368e = false;
            this.f12364a = (String) o.s(str);
        }
    }

    public static <T> T a(T t10, T t11) {
        if (t10 != null) {
            return t10;
        }
        Objects.requireNonNull(t11, "Both parameters are null");
        return t11;
    }

    public static b b(Class<?> cls) {
        return new b(cls.getSimpleName());
    }

    public static b c(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
