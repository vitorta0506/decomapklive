package gh;

import io.grpc.internal.m2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g implements c {

    /* renamed from: a  reason: collision with root package name */
    final f f40086a;

    /* renamed from: b  reason: collision with root package name */
    private final a f40087b;

    /* renamed from: c  reason: collision with root package name */
    private final m2 f40088c;

    /* loaded from: classes5.dex */
    static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f40089a = new C0434a();

        /* renamed from: gh.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0434a extends a {
            C0434a() {
            }
        }

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g() {
        this(f.a(), a.f40089a, m2.f42901a);
    }

    @Override // gh.c
    public String getName() {
        return "file_watcher";
    }

    g(f fVar, a aVar, m2 m2Var) {
        this.f40086a = fVar;
        this.f40087b = aVar;
        this.f40088c = m2Var;
    }
}
