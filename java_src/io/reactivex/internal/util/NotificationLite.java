package io.reactivex.internal.util;

import io.reactivex.r;
import java.io.Serializable;
/* loaded from: classes7.dex */
public enum NotificationLite {
    COMPLETE;

    /* loaded from: classes7.dex */
    static final class a implements Serializable {
        private static final long serialVersionUID = -7482590109178395495L;

        /* renamed from: a  reason: collision with root package name */
        final th.b f52749a;

        a(th.b bVar) {
            this.f52749a = bVar;
        }

        public String toString() {
            return "NotificationLite.Disposable[" + this.f52749a + "]";
        }
    }

    /* loaded from: classes7.dex */
    static final class b implements Serializable {
        private static final long serialVersionUID = -8759979445933046293L;

        /* renamed from: a  reason: collision with root package name */
        final Throwable f52750a;

        b(Throwable th2) {
            this.f52750a = th2;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return xh.b.c(this.f52750a, ((b) obj).f52750a);
            }
            return false;
        }

        public int hashCode() {
            return this.f52750a.hashCode();
        }

        public String toString() {
            return "NotificationLite.Error[" + this.f52750a + "]";
        }
    }

    /* loaded from: classes7.dex */
    static final class c implements Serializable {
        private static final long serialVersionUID = -1322257508628817540L;

        /* renamed from: a  reason: collision with root package name */
        final il.c f52751a;

        c(il.c cVar) {
            this.f52751a = cVar;
        }

        public String toString() {
            return "NotificationLite.Subscription[" + this.f52751a + "]";
        }
    }

    public static <T> boolean accept(Object obj, il.b<? super T> bVar) {
        if (obj == COMPLETE) {
            bVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            bVar.onError(((b) obj).f52750a);
            return true;
        } else {
            bVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, il.b<? super T> bVar) {
        if (obj == COMPLETE) {
            bVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            bVar.onError(((b) obj).f52750a);
            return true;
        } else if (obj instanceof c) {
            bVar.onSubscribe(((c) obj).f52751a);
            return false;
        } else {
            bVar.onNext(obj);
            return false;
        }
    }

    public static Object complete() {
        return COMPLETE;
    }

    public static Object disposable(th.b bVar) {
        return new a(bVar);
    }

    public static Object error(Throwable th2) {
        return new b(th2);
    }

    public static th.b getDisposable(Object obj) {
        return ((a) obj).f52749a;
    }

    public static Throwable getError(Object obj) {
        return ((b) obj).f52750a;
    }

    public static il.c getSubscription(Object obj) {
        return ((c) obj).f52751a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T getValue(Object obj) {
        return obj;
    }

    public static boolean isComplete(Object obj) {
        return obj == COMPLETE;
    }

    public static boolean isDisposable(Object obj) {
        return obj instanceof a;
    }

    public static boolean isError(Object obj) {
        return obj instanceof b;
    }

    public static boolean isSubscription(Object obj) {
        return obj instanceof c;
    }

    public static <T> Object next(T t10) {
        return t10;
    }

    public static Object subscription(il.c cVar) {
        return new c(cVar);
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }

    public static <T> boolean accept(Object obj, r<? super T> rVar) {
        if (obj == COMPLETE) {
            rVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            rVar.onError(((b) obj).f52750a);
            return true;
        } else {
            rVar.onNext(obj);
            return false;
        }
    }

    public static <T> boolean acceptFull(Object obj, r<? super T> rVar) {
        if (obj == COMPLETE) {
            rVar.onComplete();
            return true;
        } else if (obj instanceof b) {
            rVar.onError(((b) obj).f52750a);
            return true;
        } else if (obj instanceof a) {
            rVar.onSubscribe(((a) obj).f52749a);
            return false;
        } else {
            rVar.onNext(obj);
            return false;
        }
    }
}
