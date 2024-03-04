package eh;
/* loaded from: classes5.dex */
final class w0<T> {

    /* renamed from: a  reason: collision with root package name */
    final String f39397a;

    /* renamed from: b  reason: collision with root package name */
    final T f39398b;

    private w0(T t10) {
        this.f39398b = (T) com.google.common.base.o.t(t10, "config");
        this.f39397a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> w0<T> a(T t10) {
        return new w0<>(t10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> w0<T> b(String str) {
        return new w0<>(str);
    }

    private w0(String str) {
        this.f39398b = null;
        this.f39397a = (String) com.google.common.base.o.t(str, "errorDetail");
    }
}
