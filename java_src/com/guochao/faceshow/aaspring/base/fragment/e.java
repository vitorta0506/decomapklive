package com.guochao.faceshow.aaspring.base.fragment;
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f16207a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f16208b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16209c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16210d;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f16211a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f16212b = true;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16213c = true;

        /* renamed from: d  reason: collision with root package name */
        private boolean f16214d = true;

        public e a() {
            e eVar = new e();
            eVar.f16207a = this.f16211a;
            eVar.f16208b = this.f16212b;
            eVar.f16210d = this.f16214d;
            eVar.f16209c = this.f16213c;
            return eVar;
        }

        public a b(boolean z10) {
            this.f16211a = z10;
            return this;
        }

        public a c(boolean z10) {
            this.f16213c = z10;
            return this;
        }

        public a d(boolean z10) {
            this.f16214d = z10;
            return this;
        }

        public a e(boolean z10) {
            this.f16212b = z10;
            return this;
        }
    }

    e() {
    }

    public boolean e() {
        return this.f16207a;
    }

    public boolean f() {
        return this.f16209c;
    }

    public boolean g() {
        return this.f16210d;
    }

    public boolean h() {
        return this.f16208b;
    }
}
