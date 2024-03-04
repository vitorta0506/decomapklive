package r1;

import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n1.l;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: e  reason: collision with root package name */
    private static final a f57361e = new C0628a().b();

    /* renamed from: a  reason: collision with root package name */
    private final e f57362a;

    /* renamed from: b  reason: collision with root package name */
    private final List<c> f57363b;

    /* renamed from: c  reason: collision with root package name */
    private final b f57364c;

    /* renamed from: d  reason: collision with root package name */
    private final String f57365d;

    /* renamed from: r1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0628a {

        /* renamed from: a  reason: collision with root package name */
        private e f57366a = null;

        /* renamed from: b  reason: collision with root package name */
        private List<c> f57367b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private b f57368c = null;

        /* renamed from: d  reason: collision with root package name */
        private String f57369d = "";

        C0628a() {
        }

        public C0628a a(c cVar) {
            this.f57367b.add(cVar);
            return this;
        }

        public a b() {
            return new a(this.f57366a, Collections.unmodifiableList(this.f57367b), this.f57368c, this.f57369d);
        }

        public C0628a c(String str) {
            this.f57369d = str;
            return this;
        }

        public C0628a d(b bVar) {
            this.f57368c = bVar;
            return this;
        }

        public C0628a e(e eVar) {
            this.f57366a = eVar;
            return this;
        }
    }

    a(e eVar, List<c> list, b bVar, String str) {
        this.f57362a = eVar;
        this.f57363b = list;
        this.f57364c = bVar;
        this.f57365d = str;
    }

    public static C0628a e() {
        return new C0628a();
    }

    @Protobuf(tag = 4)
    public String a() {
        return this.f57365d;
    }

    @Protobuf(tag = 3)
    public b b() {
        return this.f57364c;
    }

    @Protobuf(tag = 2)
    public List<c> c() {
        return this.f57363b;
    }

    @Protobuf(tag = 1)
    public e d() {
        return this.f57362a;
    }

    public byte[] f() {
        return l.a(this);
    }
}
