package androidx.constraintlayout.core;
/* loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    /* loaded from: classes.dex */
    interface Pool<T> {
        T acquire();

        boolean release(T t10);

        void releaseAll(T[] tArr, int i9);
    }

    /* loaded from: classes.dex */
    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SimplePool(int i9) {
            if (i9 > 0) {
                this.mPool = new Object[i9];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean isInPool(T t10) {
            for (int i9 = 0; i9 < this.mPoolSize; i9++) {
                if (this.mPool[i9] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public T acquire() {
            int i9 = this.mPoolSize;
            if (i9 > 0) {
                int i10 = i9 - 1;
                Object[] objArr = this.mPool;
                T t10 = (T) objArr[i10];
                objArr[i10] = null;
                this.mPoolSize = i9 - 1;
                return t10;
            }
            return null;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public boolean release(T t10) {
            int i9 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (i9 < objArr.length) {
                objArr[i9] = t10;
                this.mPoolSize = i9 + 1;
                return true;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.Pools.Pool
        public void releaseAll(T[] tArr, int i9) {
            if (i9 > tArr.length) {
                i9 = tArr.length;
            }
            for (int i10 = 0; i10 < i9; i10++) {
                T t10 = tArr[i10];
                int i11 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i11 < objArr.length) {
                    objArr[i11] = t10;
                    this.mPoolSize = i11 + 1;
                }
            }
        }
    }

    private Pools() {
    }
}
