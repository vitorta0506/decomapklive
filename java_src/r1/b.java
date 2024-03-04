package r1;

import com.google.firebase.encoders.proto.Protobuf;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final b f57370b = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final d f57371a;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private d f57372a = null;

        a() {
        }

        public b a() {
            return new b(this.f57372a);
        }

        public a b(d dVar) {
            this.f57372a = dVar;
            return this;
        }
    }

    b(d dVar) {
        this.f57371a = dVar;
    }

    public static a b() {
        return new a();
    }

    @Protobuf(tag = 1)
    public d a() {
        return this.f57371a;
    }
}
