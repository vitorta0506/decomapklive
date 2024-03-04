package io.grpc;

import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public final class MethodDescriptor<ReqT, RespT> {

    /* renamed from: a  reason: collision with root package name */
    private final MethodType f41684a;

    /* renamed from: b  reason: collision with root package name */
    private final String f41685b;

    /* renamed from: c  reason: collision with root package name */
    private final String f41686c;

    /* renamed from: d  reason: collision with root package name */
    private final c<ReqT> f41687d;

    /* renamed from: e  reason: collision with root package name */
    private final c<RespT> f41688e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f41689f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f41690g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f41691h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f41692i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicReferenceArray<Object> f41693j;

    /* loaded from: classes5.dex */
    public enum MethodType {
        UNARY,
        CLIENT_STREAMING,
        SERVER_STREAMING,
        BIDI_STREAMING,
        UNKNOWN;

        public final boolean clientSendsOneMessage() {
            return this == UNARY || this == SERVER_STREAMING;
        }

        public final boolean serverSendsOneMessage() {
            return this == UNARY || this == CLIENT_STREAMING;
        }
    }

    /* loaded from: classes5.dex */
    public static final class b<ReqT, RespT> {

        /* renamed from: a  reason: collision with root package name */
        private c<ReqT> f41694a;

        /* renamed from: b  reason: collision with root package name */
        private c<RespT> f41695b;

        /* renamed from: c  reason: collision with root package name */
        private MethodType f41696c;

        /* renamed from: d  reason: collision with root package name */
        private String f41697d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f41698e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f41699f;

        /* renamed from: g  reason: collision with root package name */
        private Object f41700g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f41701h;

        private b() {
        }

        public MethodDescriptor<ReqT, RespT> a() {
            return new MethodDescriptor<>(this.f41696c, this.f41697d, this.f41694a, this.f41695b, this.f41700g, this.f41698e, this.f41699f, this.f41701h);
        }

        public b<ReqT, RespT> b(String str) {
            this.f41697d = str;
            return this;
        }

        public b<ReqT, RespT> c(c<ReqT> cVar) {
            this.f41694a = cVar;
            return this;
        }

        public b<ReqT, RespT> d(c<RespT> cVar) {
            this.f41695b = cVar;
            return this;
        }

        public b<ReqT, RespT> e(boolean z10) {
            this.f41701h = z10;
            return this;
        }

        public b<ReqT, RespT> f(Object obj) {
            this.f41700g = obj;
            return this;
        }

        public b<ReqT, RespT> g(MethodType methodType) {
            this.f41696c = methodType;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public interface c<T> {
        InputStream a(T t10);

        T b(InputStream inputStream);
    }

    public static String a(String str) {
        int lastIndexOf = ((String) com.google.common.base.o.t(str, "fullMethodName")).lastIndexOf(47);
        if (lastIndexOf == -1) {
            return null;
        }
        return str.substring(0, lastIndexOf);
    }

    public static String b(String str, String str2) {
        return ((String) com.google.common.base.o.t(str, "fullServiceName")) + FileUtils.RES_PREFIX_STORAGE + ((String) com.google.common.base.o.t(str2, "methodName"));
    }

    public static <ReqT, RespT> b<ReqT, RespT> h() {
        return i(null, null);
    }

    public static <ReqT, RespT> b<ReqT, RespT> i(c<ReqT> cVar, c<RespT> cVar2) {
        return new b().c(cVar).d(cVar2);
    }

    public String c() {
        return this.f41685b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object d(int i9) {
        return this.f41693j.get(i9);
    }

    public String e() {
        return this.f41686c;
    }

    public MethodType f() {
        return this.f41684a;
    }

    public boolean g() {
        return this.f41691h;
    }

    public RespT j(InputStream inputStream) {
        return this.f41688e.b(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(int i9, Object obj) {
        this.f41693j.lazySet(i9, obj);
    }

    public InputStream l(ReqT reqt) {
        return this.f41687d.a(reqt);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("fullMethodName", this.f41685b).d("type", this.f41684a).e("idempotent", this.f41690g).e("safe", this.f41691h).e("sampledToLocalTracing", this.f41692i).d("requestMarshaller", this.f41687d).d("responseMarshaller", this.f41688e).d("schemaDescriptor", this.f41689f).m().toString();
    }

    private MethodDescriptor(MethodType methodType, String str, c<ReqT> cVar, c<RespT> cVar2, Object obj, boolean z10, boolean z11, boolean z12) {
        this.f41693j = new AtomicReferenceArray<>(2);
        this.f41684a = (MethodType) com.google.common.base.o.t(methodType, "type");
        this.f41685b = (String) com.google.common.base.o.t(str, "fullMethodName");
        this.f41686c = a(str);
        this.f41687d = (c) com.google.common.base.o.t(cVar, "requestMarshaller");
        this.f41688e = (c) com.google.common.base.o.t(cVar2, "responseMarshaller");
        this.f41689f = obj;
        this.f41690g = z10;
        this.f41691h = z11;
        this.f41692i = z12;
    }
}
