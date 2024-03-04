package ug;

import ug.q;
/* loaded from: classes5.dex */
public class z<V, F extends q<V>> implements r<F> {

    /* renamed from: c  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58525c = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(z.class);

    /* renamed from: a  reason: collision with root package name */
    private final x<? super V>[] f58526a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f58527b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f58528a;

        a(q qVar) {
            this.f58528a = qVar;
        }

        @Override // ug.r
        public void e(q qVar) {
            if (qVar.isCancelled()) {
                this.f58528a.cancel(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b extends z {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ x f58529d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ q f58530e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, x[] xVarArr, x xVar, q qVar) {
            super(z10, xVarArr);
            this.f58529d = xVar;
            this.f58530e = qVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ug.z, ug.r
        public void e(q qVar) throws Exception {
            if (this.f58529d.isCancelled() && qVar.isCancelled()) {
                return;
            }
            super.e(this.f58530e);
        }
    }

    @SafeVarargs
    public z(boolean z10, x<? super V>... xVarArr) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(xVarArr, "promises");
        for (x<? super V> xVar : xVarArr) {
            io.grpc.netty.shaded.io.netty.util.internal.s.j(xVar, "promise");
        }
        this.f58526a = (x[]) xVarArr.clone();
        this.f58527b = z10;
    }

    public static <V, F extends q<V>> F a(F f10, x<? super V> xVar) {
        return (F) b(true, f10, xVar);
    }

    public static <V, F extends q<V>> F b(boolean z10, F f10, x<? super V> xVar) {
        xVar.c((r<? extends q<? super Object>>) new a(f10));
        f10.c(new b(z10, new x[]{xVar}, xVar, f10));
        return f10;
    }

    @Override // ug.r
    public void e(F f10) throws Exception {
        io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar = this.f58527b ? f58525c : null;
        int i9 = 0;
        if (f10.p0()) {
            Object obj = f10.get();
            x<? super V>[] xVarArr = this.f58526a;
            int length = xVarArr.length;
            while (i9 < length) {
                io.grpc.netty.shaded.io.netty.util.internal.x.c(xVarArr[i9], obj, bVar);
                i9++;
            }
        } else if (f10.isCancelled()) {
            x<? super V>[] xVarArr2 = this.f58526a;
            int length2 = xVarArr2.length;
            while (i9 < length2) {
                io.grpc.netty.shaded.io.netty.util.internal.x.a(xVarArr2[i9], bVar);
                i9++;
            }
        } else {
            Throwable L = f10.L();
            x<? super V>[] xVarArr3 = this.f58526a;
            int length3 = xVarArr3.length;
            while (i9 < length3) {
                io.grpc.netty.shaded.io.netty.util.internal.x.b(xVarArr3[i9], L, bVar);
                i9++;
            }
        }
    }
}
