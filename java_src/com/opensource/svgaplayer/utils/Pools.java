package com.opensource.svgaplayer.utils;

import androidx.exifinterface.media.ExifInterface;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/opensource/svgaplayer/utils/Pools;", "", "()V", "Pool", "SimplePool", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Pools {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u000f\u0010\u0003\u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/opensource/svgaplayer/utils/Pools$Pool;", ExifInterface.GPS_DIRECTION_TRUE, "", "acquire", "()Ljava/lang/Object;", "release", "", "instance", "(Ljava/lang/Object;)Z", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(T t10);
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u000f\u0010\u000b\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\fJ\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0010R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/opensource/svgaplayer/utils/Pools$SimplePool;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/opensource/svgaplayer/utils/Pools$Pool;", "maxPoolSize", "", "(I)V", "mPool", "", "", "[Ljava/lang/Object;", "mPoolSize", "acquire", "()Ljava/lang/Object;", "isInPool", "", "instance", "(Ljava/lang/Object;)Z", "release", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class SimplePool<T> implements Pool<T> {
        @NotNull
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i9) {
            if (i9 > 0) {
                this.mPool = new Object[i9];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0".toString());
        }

        private final boolean isInPool(T t10) {
            int i9 = this.mPoolSize;
            if (i9 > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (this.mPool[i10] == t10) {
                        return true;
                    }
                    if (i11 >= i9) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return false;
        }

        @Override // com.opensource.svgaplayer.utils.Pools.Pool
        @Nullable
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

        @Override // com.opensource.svgaplayer.utils.Pools.Pool
        public boolean release(T t10) {
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
            throw new IllegalStateException("Already in the pool!".toString());
        }
    }

    private Pools() {
    }
}
