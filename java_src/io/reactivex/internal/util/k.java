package io.reactivex.internal.util;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.r;
/* loaded from: classes7.dex */
public final class k {
    public static <T, U> boolean a(boolean z10, boolean z11, r<?> rVar, boolean z12, yh.g<?> gVar, th.b bVar, h<T, U> hVar) {
        if (hVar.y()) {
            gVar.clear();
            bVar.dispose();
            return true;
        } else if (z10) {
            if (z12) {
                if (z11) {
                    if (bVar != null) {
                        bVar.dispose();
                    }
                    Throwable u10 = hVar.u();
                    if (u10 != null) {
                        rVar.onError(u10);
                    } else {
                        rVar.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable u11 = hVar.u();
            if (u11 != null) {
                gVar.clear();
                if (bVar != null) {
                    bVar.dispose();
                }
                rVar.onError(u11);
                return true;
            } else if (z11) {
                if (bVar != null) {
                    bVar.dispose();
                }
                rVar.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public static <T> yh.g<T> b(int i9) {
        if (i9 < 0) {
            return new io.reactivex.internal.queue.b(-i9);
        }
        return new SpscArrayQueue(i9);
    }

    public static <T, U> void c(yh.f<T> fVar, r<? super U> rVar, boolean z10, th.b bVar, h<T, U> hVar) {
        int i9 = 1;
        while (!a(hVar.x(), fVar.isEmpty(), rVar, z10, fVar, bVar, hVar)) {
            while (true) {
                boolean x10 = hVar.x();
                T poll = fVar.poll();
                boolean z11 = poll == null;
                if (a(x10, z11, rVar, z10, fVar, bVar, hVar)) {
                    return;
                }
                if (z11) {
                    i9 = hVar.w(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    hVar.v(rVar, poll);
                }
            }
        }
    }

    public static void d(il.c cVar, int i9) {
        cVar.request(i9 < 0 ? Long.MAX_VALUE : i9);
    }
}
