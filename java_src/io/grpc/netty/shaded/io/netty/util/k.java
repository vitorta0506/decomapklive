package io.grpc.netty.shaded.io.netty.util;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public class k implements f {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<k, a[]> f45215b = AtomicReferenceFieldUpdater.newUpdater(k.class, a[].class, "a");

    /* renamed from: c  reason: collision with root package name */
    private static final a[] f45216c = new a[0];

    /* renamed from: a  reason: collision with root package name */
    private volatile a[] f45217a = f45216c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a<T> extends AtomicReference<T> implements d<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final AtomicReferenceFieldUpdater<a, k> f45218c = AtomicReferenceFieldUpdater.newUpdater(a.class, k.class, "a");
        private static final long serialVersionUID = -2661411462200283011L;

        /* renamed from: a  reason: collision with root package name */
        private volatile k f45219a;

        /* renamed from: b  reason: collision with root package name */
        private final e<T> f45220b;

        a(k kVar, e<T> eVar) {
            this.f45219a = kVar;
            this.f45220b = eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c() {
            return this.f45219a == null;
        }
    }

    private static void a(a[] aVarArr, int i9, a[] aVarArr2, a aVar) {
        int b10 = aVar.f45220b.b();
        int i10 = i9 - 1;
        while (i10 >= 0 && aVarArr[i10].f45220b.b() >= b10) {
            aVarArr2[i10 + 1] = aVarArr[i10];
            i10--;
        }
        int i11 = i10 + 1;
        aVarArr2[i11] = aVar;
        if (i11 > 0) {
            System.arraycopy(aVarArr, 0, aVarArr2, 0, i11);
        }
    }

    private static int b(a[] aVarArr, e<?> eVar) {
        int length = aVarArr.length - 1;
        int i9 = 0;
        while (i9 <= length) {
            int i10 = (i9 + length) >>> 1;
            e<?> eVar2 = aVarArr[i10].f45220b;
            if (eVar2 == eVar) {
                return i10;
            }
            if (eVar2.b() < eVar.b()) {
                i9 = i10 + 1;
            } else {
                length = i10 - 1;
            }
        }
        return -(i9 + 1);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.f
    public <T> d<T> T(e<T> eVar) {
        a[] aVarArr;
        a[] aVarArr2;
        io.grpc.netty.shaded.io.netty.util.internal.s.h(eVar, "key");
        a aVar = null;
        do {
            aVarArr = this.f45217a;
            int b10 = b(aVarArr, eVar);
            if (b10 >= 0) {
                a aVar2 = aVarArr[b10];
                if (!aVar2.c()) {
                    return aVar2;
                }
                if (aVar == null) {
                    aVar = new a(this, eVar);
                }
                aVarArr2 = (a[]) Arrays.copyOf(aVarArr, aVarArr.length);
                aVarArr2[b10] = aVar;
            } else {
                if (aVar == null) {
                    aVar = new a(this, eVar);
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                a(aVarArr, length, aVarArr2, aVar);
            }
        } while (!androidx.concurrent.futures.a.a(f45215b, this, aVarArr, aVarArr2));
        return aVar;
    }
}
