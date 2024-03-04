package io.grpc.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class m {

    /* renamed from: f  reason: collision with root package name */
    static final b f42878f = new a();

    /* renamed from: a  reason: collision with root package name */
    private final m2 f42879a;

    /* renamed from: b  reason: collision with root package name */
    private final e1 f42880b = f1.a();

    /* renamed from: c  reason: collision with root package name */
    private final e1 f42881c = f1.a();

    /* renamed from: d  reason: collision with root package name */
    private final e1 f42882d = f1.a();

    /* renamed from: e  reason: collision with root package name */
    private volatile long f42883e;

    /* loaded from: classes5.dex */
    class a implements b {
        a() {
        }

        @Override // io.grpc.internal.m.b
        public m a() {
            return new m(m2.f42901a);
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        m a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(m2 m2Var) {
        this.f42879a = m2Var;
    }

    public void a(boolean z10) {
        if (z10) {
            this.f42881c.add(1L);
        } else {
            this.f42882d.add(1L);
        }
    }

    public void b() {
        this.f42880b.add(1L);
        this.f42883e = this.f42879a.a();
    }
}
