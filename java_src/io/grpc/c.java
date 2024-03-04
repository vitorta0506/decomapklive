package io.grpc;

import com.google.common.base.j;
import io.grpc.k;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public final class c {

    /* renamed from: k  reason: collision with root package name */
    public static final c f42037k = new c();

    /* renamed from: a  reason: collision with root package name */
    private t f42038a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f42039b;

    /* renamed from: c  reason: collision with root package name */
    private String f42040c;

    /* renamed from: d  reason: collision with root package name */
    private b f42041d;

    /* renamed from: e  reason: collision with root package name */
    private String f42042e;

    /* renamed from: f  reason: collision with root package name */
    private Object[][] f42043f;

    /* renamed from: g  reason: collision with root package name */
    private List<k.a> f42044g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f42045h;

    /* renamed from: i  reason: collision with root package name */
    private Integer f42046i;

    /* renamed from: j  reason: collision with root package name */
    private Integer f42047j;

    /* loaded from: classes5.dex */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f42048a;

        /* renamed from: b  reason: collision with root package name */
        private final T f42049b;

        private a(String str, T t10) {
            this.f42048a = str;
            this.f42049b = t10;
        }

        public static <T> a<T> b(String str) {
            com.google.common.base.o.t(str, "debugString");
            return new a<>(str, null);
        }

        public static <T> a<T> c(String str, T t10) {
            com.google.common.base.o.t(str, "debugString");
            return new a<>(str, t10);
        }

        public String toString() {
            return this.f42048a;
        }
    }

    private c() {
        this.f42044g = Collections.emptyList();
        this.f42043f = (Object[][]) Array.newInstance(Object.class, 0, 2);
    }

    public String a() {
        return this.f42040c;
    }

    public String b() {
        return this.f42042e;
    }

    public b c() {
        return this.f42041d;
    }

    public t d() {
        return this.f42038a;
    }

    public Executor e() {
        return this.f42039b;
    }

    public Integer f() {
        return this.f42046i;
    }

    public Integer g() {
        return this.f42047j;
    }

    public <T> T h(a<T> aVar) {
        com.google.common.base.o.t(aVar, "key");
        int i9 = 0;
        while (true) {
            Object[][] objArr = this.f42043f;
            if (i9 < objArr.length) {
                if (aVar.equals(objArr[i9][0])) {
                    return (T) this.f42043f[i9][1];
                }
                i9++;
            } else {
                return (T) ((a) aVar).f42049b;
            }
        }
    }

    public List<k.a> i() {
        return this.f42044g;
    }

    public boolean j() {
        return Boolean.TRUE.equals(this.f42045h);
    }

    public c k(b bVar) {
        c cVar = new c(this);
        cVar.f42041d = bVar;
        return cVar;
    }

    public c l(t tVar) {
        c cVar = new c(this);
        cVar.f42038a = tVar;
        return cVar;
    }

    public c m(long j10, TimeUnit timeUnit) {
        return l(t.a(j10, timeUnit));
    }

    public c n(Executor executor) {
        c cVar = new c(this);
        cVar.f42039b = executor;
        return cVar;
    }

    public c o(int i9) {
        com.google.common.base.o.h(i9 >= 0, "invalid maxsize %s", i9);
        c cVar = new c(this);
        cVar.f42046i = Integer.valueOf(i9);
        return cVar;
    }

    public c p(int i9) {
        com.google.common.base.o.h(i9 >= 0, "invalid maxsize %s", i9);
        c cVar = new c(this);
        cVar.f42047j = Integer.valueOf(i9);
        return cVar;
    }

    public <T> c q(a<T> aVar, T t10) {
        com.google.common.base.o.t(aVar, "key");
        com.google.common.base.o.t(t10, "value");
        c cVar = new c(this);
        int i9 = 0;
        while (true) {
            Object[][] objArr = this.f42043f;
            if (i9 >= objArr.length) {
                i9 = -1;
                break;
            } else if (aVar.equals(objArr[i9][0])) {
                break;
            } else {
                i9++;
            }
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance(Object.class, this.f42043f.length + (i9 == -1 ? 1 : 0), 2);
        cVar.f42043f = objArr2;
        Object[][] objArr3 = this.f42043f;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        if (i9 == -1) {
            Object[][] objArr4 = cVar.f42043f;
            int length = this.f42043f.length;
            Object[] objArr5 = new Object[2];
            objArr5[0] = aVar;
            objArr5[1] = t10;
            objArr4[length] = objArr5;
        } else {
            Object[][] objArr6 = cVar.f42043f;
            Object[] objArr7 = new Object[2];
            objArr7[0] = aVar;
            objArr7[1] = t10;
            objArr6[i9] = objArr7;
        }
        return cVar;
    }

    public c r(k.a aVar) {
        c cVar = new c(this);
        ArrayList arrayList = new ArrayList(this.f42044g.size() + 1);
        arrayList.addAll(this.f42044g);
        arrayList.add(aVar);
        cVar.f42044g = Collections.unmodifiableList(arrayList);
        return cVar;
    }

    public c s() {
        c cVar = new c(this);
        cVar.f42045h = Boolean.TRUE;
        return cVar;
    }

    public c t() {
        c cVar = new c(this);
        cVar.f42045h = Boolean.FALSE;
        return cVar;
    }

    public String toString() {
        j.b d10 = com.google.common.base.j.c(this).d("deadline", this.f42038a).d("authority", this.f42040c).d("callCredentials", this.f42041d);
        Executor executor = this.f42039b;
        return d10.d("executor", executor != null ? executor.getClass() : null).d("compressorName", this.f42042e).d("customOptions", Arrays.deepToString(this.f42043f)).e("waitForReady", j()).d("maxInboundMessageSize", this.f42046i).d("maxOutboundMessageSize", this.f42047j).d("streamTracerFactories", this.f42044g).toString();
    }

    private c(c cVar) {
        this.f42044g = Collections.emptyList();
        this.f42038a = cVar.f42038a;
        this.f42040c = cVar.f42040c;
        this.f42041d = cVar.f42041d;
        this.f42039b = cVar.f42039b;
        this.f42042e = cVar.f42042e;
        this.f42043f = cVar.f42043f;
        this.f42045h = cVar.f42045h;
        this.f42046i = cVar.f42046i;
        this.f42047j = cVar.f42047j;
        this.f42044g = cVar.f42044g;
    }
}
