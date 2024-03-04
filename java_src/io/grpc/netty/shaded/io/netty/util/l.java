package io.grpc.netty.shaded.io.netty.util;
/* loaded from: classes5.dex */
public interface l<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final l f45221a = new a();

    /* loaded from: classes5.dex */
    static class a implements l {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        public int b(Object obj) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.l
        public boolean c(Object obj, Object obj2) {
            return obj == obj2 || (obj != null && obj.equals(obj2));
        }
    }

    int b(T t10);

    boolean c(T t10, T t11);
}
