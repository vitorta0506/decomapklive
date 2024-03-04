package com.meizu.cloud.pushsdk.c.e;

import com.facebook.GraphResponse;
import com.meizu.cloud.pushsdk.c.a.e;
import com.meizu.cloud.pushsdk.c.c.k;
/* loaded from: classes4.dex */
public final class c {
    public static <T> com.meizu.cloud.pushsdk.c.a.c<T> a(com.meizu.cloud.pushsdk.c.a.b bVar) {
        int g10 = bVar.g();
        return g10 != 0 ? g10 != 1 ? g10 != 2 ? new com.meizu.cloud.pushsdk.c.a.c<>(new com.meizu.cloud.pushsdk.c.b.a()) : d(bVar) : c(bVar) : b(bVar);
    }

    private static <T> com.meizu.cloud.pushsdk.c.a.c<T> b(com.meizu.cloud.pushsdk.c.a.b bVar) {
        try {
            try {
                k a10 = a.a(bVar);
                if (a10 == null) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a()));
                    com.meizu.cloud.pushsdk.c.h.a.a(a10, bVar);
                    return cVar;
                } else if (bVar.f() == e.OK_HTTP_RESPONSE) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar2 = new com.meizu.cloud.pushsdk.c.a.c<>(a10);
                    cVar2.a(a10);
                    com.meizu.cloud.pushsdk.c.h.a.a(a10, bVar);
                    return cVar2;
                } else if (a10.a() >= 400) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar3 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a(a10), bVar, a10.a()));
                    cVar3.a(a10);
                    com.meizu.cloud.pushsdk.c.h.a.a(a10, bVar);
                    return cVar3;
                } else {
                    com.meizu.cloud.pushsdk.c.a.c<T> a11 = bVar.a(a10);
                    a11.a(a10);
                    com.meizu.cloud.pushsdk.c.h.a.a(a10, bVar);
                    return a11;
                }
            } catch (com.meizu.cloud.pushsdk.c.b.a e10) {
                com.meizu.cloud.pushsdk.c.a.c<T> cVar4 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a(e10)));
                com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
                return cVar4;
            } catch (Exception e11) {
                com.meizu.cloud.pushsdk.c.a.c<T> cVar5 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(e11));
                com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
                return cVar5;
            }
        } catch (Throwable th2) {
            com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
            throw th2;
        }
    }

    private static <T> com.meizu.cloud.pushsdk.c.a.c<T> c(com.meizu.cloud.pushsdk.c.a.b bVar) {
        try {
            k b10 = a.b(bVar);
            if (b10 == null) {
                return new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a()));
            }
            if (b10.a() >= 400) {
                com.meizu.cloud.pushsdk.c.a.c<T> cVar = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a(b10), bVar, b10.a()));
                cVar.a(b10);
                return cVar;
            }
            com.meizu.cloud.pushsdk.c.a.c<T> cVar2 = new com.meizu.cloud.pushsdk.c.a.c<>(GraphResponse.SUCCESS_KEY);
            cVar2.a(b10);
            return cVar2;
        } catch (com.meizu.cloud.pushsdk.c.b.a e10) {
            return new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a(e10)));
        } catch (Exception e11) {
            return new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(e11));
        }
    }

    private static <T> com.meizu.cloud.pushsdk.c.a.c<T> d(com.meizu.cloud.pushsdk.c.a.b bVar) {
        try {
            try {
                k c10 = a.c(bVar);
                if (c10 == null) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a()));
                    com.meizu.cloud.pushsdk.c.h.a.a(c10, bVar);
                    return cVar;
                } else if (bVar.f() == e.OK_HTTP_RESPONSE) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar2 = new com.meizu.cloud.pushsdk.c.a.c<>(c10);
                    cVar2.a(c10);
                    com.meizu.cloud.pushsdk.c.h.a.a(c10, bVar);
                    return cVar2;
                } else if (c10.a() >= 400) {
                    com.meizu.cloud.pushsdk.c.a.c<T> cVar3 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(new com.meizu.cloud.pushsdk.c.b.a(c10), bVar, c10.a()));
                    cVar3.a(c10);
                    com.meizu.cloud.pushsdk.c.h.a.a(c10, bVar);
                    return cVar3;
                } else {
                    com.meizu.cloud.pushsdk.c.a.c<T> a10 = bVar.a(c10);
                    a10.a(c10);
                    com.meizu.cloud.pushsdk.c.h.a.a(c10, bVar);
                    return a10;
                }
            } catch (com.meizu.cloud.pushsdk.c.b.a e10) {
                com.meizu.cloud.pushsdk.c.a.c<T> cVar4 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(e10));
                com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
                return cVar4;
            } catch (Exception e11) {
                com.meizu.cloud.pushsdk.c.a.c<T> cVar5 = new com.meizu.cloud.pushsdk.c.a.c<>(com.meizu.cloud.pushsdk.c.h.b.a(e11));
                com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
                return cVar5;
            }
        } catch (Throwable th2) {
            com.meizu.cloud.pushsdk.c.h.a.a(null, bVar);
            throw th2;
        }
    }
}
