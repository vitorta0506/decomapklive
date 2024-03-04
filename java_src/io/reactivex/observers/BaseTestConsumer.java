package io.reactivex.observers;

import io.reactivex.internal.util.VolatileSizeArrayList;
import io.reactivex.observers.BaseTestConsumer;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes7.dex */
public abstract class BaseTestConsumer<T, U extends BaseTestConsumer<T, U>> implements th.b {

    /* renamed from: d  reason: collision with root package name */
    protected long f52769d;

    /* renamed from: e  reason: collision with root package name */
    protected Thread f52770e;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f52771f;

    /* renamed from: g  reason: collision with root package name */
    protected int f52772g;

    /* renamed from: h  reason: collision with root package name */
    protected int f52773h;

    /* renamed from: b  reason: collision with root package name */
    protected final List<T> f52767b = new VolatileSizeArrayList();

    /* renamed from: c  reason: collision with root package name */
    protected final List<Throwable> f52768c = new VolatileSizeArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected final CountDownLatch f52766a = new CountDownLatch(1);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes7.dex */
    public static abstract class TestWaitStrategy implements Runnable {
        private static final /* synthetic */ TestWaitStrategy[] $VALUES;
        public static final TestWaitStrategy SLEEP_1000MS;
        public static final TestWaitStrategy SLEEP_100MS;
        public static final TestWaitStrategy SLEEP_10MS;
        public static final TestWaitStrategy SLEEP_1MS;
        public static final TestWaitStrategy SPIN;
        public static final TestWaitStrategy YIELD;

        /* loaded from: classes7.dex */
        enum a extends TestWaitStrategy {
            a(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
            }
        }

        /* loaded from: classes7.dex */
        enum b extends TestWaitStrategy {
            b(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                Thread.yield();
            }
        }

        /* loaded from: classes7.dex */
        enum c extends TestWaitStrategy {
            c(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1);
            }
        }

        /* loaded from: classes7.dex */
        enum d extends TestWaitStrategy {
            d(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(10);
            }
        }

        /* loaded from: classes7.dex */
        enum e extends TestWaitStrategy {
            e(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(100);
            }
        }

        /* loaded from: classes7.dex */
        enum f extends TestWaitStrategy {
            f(String str, int i9) {
                super(str, i9);
            }

            @Override // io.reactivex.observers.BaseTestConsumer.TestWaitStrategy, java.lang.Runnable
            public void run() {
                TestWaitStrategy.sleep(1000);
            }
        }

        static {
            a aVar = new a("SPIN", 0);
            SPIN = aVar;
            b bVar = new b("YIELD", 1);
            YIELD = bVar;
            c cVar = new c("SLEEP_1MS", 2);
            SLEEP_1MS = cVar;
            d dVar = new d("SLEEP_10MS", 3);
            SLEEP_10MS = dVar;
            e eVar = new e("SLEEP_100MS", 4);
            SLEEP_100MS = eVar;
            f fVar = new f("SLEEP_1000MS", 5);
            SLEEP_1000MS = fVar;
            $VALUES = new TestWaitStrategy[]{aVar, bVar, cVar, dVar, eVar, fVar};
        }

        private TestWaitStrategy(String str, int i9) {
        }

        static void sleep(int i9) {
            try {
                Thread.sleep(i9);
            } catch (InterruptedException e10) {
                throw new RuntimeException(e10);
            }
        }

        public static TestWaitStrategy valueOf(String str) {
            return (TestWaitStrategy) Enum.valueOf(TestWaitStrategy.class, str);
        }

        public static TestWaitStrategy[] values() {
            return (TestWaitStrategy[]) $VALUES.clone();
        }

        @Override // java.lang.Runnable
        public abstract void run();
    }
}
