package j5;
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<char[]> f53162a = new a();

    /* loaded from: classes2.dex */
    static class a extends ThreadLocal<char[]> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] a() {
        return f53162a.get();
    }
}
