package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class Pools {

    /* loaded from: classes.dex */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NonNull T t10);
    }

    /* loaded from: classes.dex */
    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i9) {
            if (i9 > 0) {
                this.mPool = new Object[i9];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private boolean isInPool(@NonNull T t10) {
            for (int i9 = 0; i9 < this.mPoolSize; i9++) {
                if (this.mPool[i9] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
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

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t10) {
            if (!isInPool(t10)) {
                int i9 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (i9 < objArr.length) {
                    objArr[i9] = t10;
                    this.mPoolSize = i9 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* loaded from: classes.dex */
    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i9) {
            super(i9);
            this.mLock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t10;
            synchronized (this.mLock) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t10) {
            boolean release;
            synchronized (this.mLock) {
                release = super.release(t10);
            }
            return release;
        }
    }

    private Pools() {
    }
}
