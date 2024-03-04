package com.chad.library.adapter.base.diff;

import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u000eB%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", ExifInterface.GPS_DIRECTION_TRUE, "", "mainThreadExecutor", "Ljava/util/concurrent/Executor;", "backgroundThreadExecutor", "diffCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "getBackgroundThreadExecutor", "()Ljava/util/concurrent/Executor;", "getDiffCallback", "()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "getMainThreadExecutor", "Builder", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class BrvahAsyncDifferConfig<T> {
    @NotNull
    private final Executor backgroundThreadExecutor;
    @NotNull
    private final DiffUtil.ItemCallback<T> diffCallback;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    private final Executor mainThreadExecutor;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000e*\u0004\b\u0001\u0010\u00012\u00020\u0002:\u0001\u000eB\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0005J\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\nJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;", ExifInterface.GPS_DIRECTION_TRUE, "", "mDiffCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V", "mBackgroundThreadExecutor", "Ljava/util/concurrent/Executor;", "mMainThreadExecutor", "build", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", "setBackgroundThreadExecutor", "executor", "setMainThreadExecutor", "Companion", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder<T> {
        @Nullable
        private static Executor sDiffExecutor;
        @Nullable
        private Executor mBackgroundThreadExecutor;
        @NotNull
        private final DiffUtil.ItemCallback<T> mDiffCallback;
        @Nullable
        private Executor mMainThreadExecutor;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final Object sExecutorLock = new Object();

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;", "", "()V", "sDiffExecutor", "Ljava/util/concurrent/Executor;", "sExecutorLock", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public Builder(@NotNull DiffUtil.ItemCallback<T> mDiffCallback) {
            Intrinsics.checkNotNullParameter(mDiffCallback, "mDiffCallback");
            this.mDiffCallback = mDiffCallback;
        }

        @NotNull
        public final BrvahAsyncDifferConfig<T> build() {
            if (this.mBackgroundThreadExecutor == null) {
                synchronized (sExecutorLock) {
                    if (sDiffExecutor == null) {
                        sDiffExecutor = Executors.newFixedThreadPool(2);
                    }
                    Unit unit = Unit.INSTANCE;
                }
                this.mBackgroundThreadExecutor = sDiffExecutor;
            }
            Executor executor = this.mMainThreadExecutor;
            Executor executor2 = this.mBackgroundThreadExecutor;
            Intrinsics.checkNotNull(executor2);
            return new BrvahAsyncDifferConfig<>(executor, executor2, this.mDiffCallback);
        }

        @NotNull
        public final Builder<T> setBackgroundThreadExecutor(@Nullable Executor executor) {
            this.mBackgroundThreadExecutor = executor;
            return this;
        }

        @NotNull
        public final Builder<T> setMainThreadExecutor(@Nullable Executor executor) {
            this.mMainThreadExecutor = executor;
            return this;
        }
    }

    public BrvahAsyncDifferConfig(@Nullable Executor executor, @NotNull Executor backgroundThreadExecutor, @NotNull DiffUtil.ItemCallback<T> diffCallback) {
        Intrinsics.checkNotNullParameter(backgroundThreadExecutor, "backgroundThreadExecutor");
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        this.mainThreadExecutor = executor;
        this.backgroundThreadExecutor = backgroundThreadExecutor;
        this.diffCallback = diffCallback;
    }

    @NotNull
    public final Executor getBackgroundThreadExecutor() {
        return this.backgroundThreadExecutor;
    }

    @NotNull
    public final DiffUtil.ItemCallback<T> getDiffCallback() {
        return this.diffCallback;
    }

    @Nullable
    public final Executor getMainThreadExecutor() {
        return this.mainThreadExecutor;
    }
}
