package eh;

import java.util.concurrent.ThreadLocalRandom;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public interface j2 {

    /* loaded from: classes5.dex */
    public static final class a implements j2 {

        /* renamed from: a  reason: collision with root package name */
        static final j2 f38802a = new a();

        private a() {
        }

        @Override // eh.j2
        public long a() {
            return ThreadLocalRandom.current().nextLong();
        }

        @Override // eh.j2
        public int b(int i9) {
            return ThreadLocalRandom.current().nextInt(i9);
        }
    }

    long a();

    int b(int i9);
}
