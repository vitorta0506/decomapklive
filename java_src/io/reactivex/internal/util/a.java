package io.reactivex.internal.util;

import vh.q;
/* loaded from: classes7.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f52752a;

    /* renamed from: b  reason: collision with root package name */
    final Object[] f52753b;

    /* renamed from: c  reason: collision with root package name */
    Object[] f52754c;

    /* renamed from: d  reason: collision with root package name */
    int f52755d;

    /* renamed from: io.reactivex.internal.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public interface InterfaceC0530a<T> extends q<T> {
        @Override // vh.q
        boolean test(T t10);
    }

    public a(int i9) {
        this.f52752a = i9;
        Object[] objArr = new Object[i9 + 1];
        this.f52753b = objArr;
        this.f52754c = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0019, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <U> boolean a(io.reactivex.r<? super U> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f52753b
            int r1 = r4.f52752a
        L4:
            r2 = 0
            if (r0 == 0) goto L1e
        L7:
            if (r2 >= r1) goto L19
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L19
        Le:
            boolean r3 = io.reactivex.internal.util.NotificationLite.acceptFull(r3, r5)
            if (r3 == 0) goto L16
            r5 = 1
            return r5
        L16:
            int r2 = r2 + 1
            goto L7
        L19:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.a(io.reactivex.r):boolean");
    }

    public void b(T t10) {
        int i9 = this.f52752a;
        int i10 = this.f52755d;
        if (i10 == i9) {
            Object[] objArr = new Object[i9 + 1];
            this.f52754c[i9] = objArr;
            this.f52754c = objArr;
            i10 = 0;
        }
        this.f52754c[i10] = t10;
        this.f52755d = i10 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0018, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(io.reactivex.internal.util.a.InterfaceC0530a<? super T> r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f52753b
            int r1 = r4.f52752a
        L4:
            if (r0 == 0) goto L1d
            r2 = 0
        L7:
            if (r2 >= r1) goto L18
            r3 = r0[r2]
            if (r3 != 0) goto Le
            goto L18
        Le:
            boolean r3 = r5.test(r3)
            if (r3 == 0) goto L15
            return
        L15:
            int r2 = r2 + 1
            goto L7
        L18:
            r0 = r0[r1]
            java.lang.Object[] r0 = (java.lang.Object[]) r0
            goto L4
        L1d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.a.c(io.reactivex.internal.util.a$a):void");
    }

    public void d(T t10) {
        this.f52753b[0] = t10;
    }
}
