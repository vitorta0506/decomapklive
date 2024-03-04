package org.bouncycastle.pqc.crypto.xmss;
/* loaded from: classes7.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private final int f56176a;

    /* renamed from: b  reason: collision with root package name */
    private final long f56177b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56178c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56179d;

    /* loaded from: classes7.dex */
    protected static abstract class a<T extends a> {

        /* renamed from: a  reason: collision with root package name */
        private final int f56180a;

        /* renamed from: b  reason: collision with root package name */
        private int f56181b = 0;

        /* renamed from: c  reason: collision with root package name */
        private long f56182c = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f56183d = 0;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(int i9) {
            this.f56180a = i9;
        }

        protected abstract T e();

        /* JADX INFO: Access modifiers changed from: protected */
        public T f(int i9) {
            this.f56183d = i9;
            return e();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public T g(int i9) {
            this.f56181b = i9;
            return e();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public T h(long j10) {
            this.f56182c = j10;
            return e();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public m(a aVar) {
        this.f56176a = aVar.f56181b;
        this.f56177b = aVar.f56182c;
        this.f56178c = aVar.f56180a;
        this.f56179d = aVar.f56183d;
    }

    public final int a() {
        return this.f56179d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int b() {
        return this.f56176a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long c() {
        return this.f56177b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] d() {
        byte[] bArr = new byte[32];
        org.bouncycastle.util.g.c(this.f56176a, bArr, 0);
        org.bouncycastle.util.g.i(this.f56177b, bArr, 4);
        org.bouncycastle.util.g.c(this.f56178c, bArr, 12);
        org.bouncycastle.util.g.c(this.f56179d, bArr, 28);
        return bArr;
    }
}
