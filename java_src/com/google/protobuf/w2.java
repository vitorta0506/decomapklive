package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
final class w2 implements m1 {

    /* renamed from: a  reason: collision with root package name */
    private final ProtoSyntax f15315a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15316b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f15317c;

    /* renamed from: d  reason: collision with root package name */
    private final k0[] f15318d;

    /* renamed from: e  reason: collision with root package name */
    private final o1 f15319e;

    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<k0> f15320a;

        /* renamed from: b  reason: collision with root package name */
        private ProtoSyntax f15321b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f15322c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f15323d;

        /* renamed from: e  reason: collision with root package name */
        private int[] f15324e = null;

        /* renamed from: f  reason: collision with root package name */
        private Object f15325f;

        public a(int i9) {
            this.f15320a = new ArrayList(i9);
        }

        public w2 a() {
            if (!this.f15322c) {
                if (this.f15321b != null) {
                    this.f15322c = true;
                    Collections.sort(this.f15320a);
                    return new w2(this.f15321b, this.f15323d, this.f15324e, (k0[]) this.f15320a.toArray(new k0[0]), this.f15325f);
                }
                throw new IllegalStateException("Must specify a proto syntax");
            }
            throw new IllegalStateException("Builder can only build once");
        }

        public void b(int[] iArr) {
            this.f15324e = iArr;
        }

        public void c(Object obj) {
            this.f15325f = obj;
        }

        public void d(k0 k0Var) {
            if (!this.f15322c) {
                this.f15320a.add(k0Var);
                return;
            }
            throw new IllegalStateException("Builder can only build once");
        }

        public void e(boolean z10) {
            this.f15323d = z10;
        }

        public void f(ProtoSyntax protoSyntax) {
            this.f15321b = (ProtoSyntax) u0.b(protoSyntax, "syntax");
        }
    }

    w2(ProtoSyntax protoSyntax, boolean z10, int[] iArr, k0[] k0VarArr, Object obj) {
        this.f15315a = protoSyntax;
        this.f15316b = z10;
        this.f15317c = iArr;
        this.f15318d = k0VarArr;
        this.f15319e = (o1) u0.b(obj, "defaultInstance");
    }

    public static a f(int i9) {
        return new a(i9);
    }

    @Override // com.google.protobuf.m1
    public boolean a() {
        return this.f15316b;
    }

    @Override // com.google.protobuf.m1
    public o1 b() {
        return this.f15319e;
    }

    @Override // com.google.protobuf.m1
    public ProtoSyntax c() {
        return this.f15315a;
    }

    public int[] d() {
        return this.f15317c;
    }

    public k0[] e() {
        return this.f15318d;
    }
}
