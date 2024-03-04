package com.chad.library.adapter.base.diff;

import android.os.Handler;
import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u00016B'\u0012\u0010\u0010$\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030#\u0012\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&¢\u0006\u0004\b4\u00105J(\u0010\n\u001a\u00020\t2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J \u0010\r\u001a\u00020\t2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u001d\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u0013J\u0016\u0010\u0015\u001a\u00020\t2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000bJ'\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u00002\b\u0010\u0017\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eJ\u0015\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00028\u0000¢\u0006\u0004\b\u001c\u0010\u0013J$\u0010\u001d\u001a\u00020\t2\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u0016\u0010 \u001a\u00020\t2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001eH\u0016J\u0014\u0010!\u001a\u00020\t2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001eJ\u0006\u0010\"\u001a\u00020\tR\u001e\u0010$\u001a\f\u0012\u0004\u0012\u00028\u0000\u0012\u0002\b\u00030#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010.R \u00100\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001e0\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00067"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "newList", "Landroidx/recyclerview/widget/DiffUtil$DiffResult;", "diffResult", "Ljava/lang/Runnable;", "commitCallback", "", "latchList", "", "previousList", "onCurrentListChanged", "", "index", "data", "addData", "(ILjava/lang/Object;)V", "(Ljava/lang/Object;)V", "list", "addList", "newData", "payload", "changeData", "(ILjava/lang/Object;Ljava/lang/Object;)V", "removeAt", "t", "remove", "submitList", "Lcom/chad/library/adapter/base/diff/c;", "listener", "addListListener", "removeListListener", "clearAllListListener", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", "config", "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;", "Landroidx/recyclerview/widget/ListUpdateCallback;", "mUpdateCallback", "Landroidx/recyclerview/widget/ListUpdateCallback;", "Ljava/util/concurrent/Executor;", "mMainThreadExecutor", "Ljava/util/concurrent/Executor;", "sMainThreadExecutor", "mListeners", "Ljava/util/List;", "mMaxScheduledGeneration", "I", "<init>", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V", "MainThreadExecutor", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class BrvahAsyncDiffer<T> {
    @NotNull
    private final BaseQuickAdapter<T, ?> adapter;
    @NotNull
    private final BrvahAsyncDifferConfig<T> config;
    @NotNull
    private final List<c<T>> mListeners;
    @NotNull
    private Executor mMainThreadExecutor;
    private int mMaxScheduledGeneration;
    @NotNull
    private final ListUpdateCallback mUpdateCallback;
    @NotNull
    private final Executor sMainThreadExecutor;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;", "Ljava/util/concurrent/Executor;", "()V", "mHandler", "Landroid/os/Handler;", "getMHandler", "()Landroid/os/Handler;", "execute", "", "command", "Ljava/lang/Runnable;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class MainThreadExecutor implements Executor {
        @NotNull
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NotNull Runnable command) {
            Intrinsics.checkNotNullParameter(command, "command");
            this.mHandler.post(command);
        }

        @NotNull
        public final Handler getMHandler() {
            return this.mHandler;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.concurrent.Executor] */
    public BrvahAsyncDiffer(@NotNull BaseQuickAdapter<T, ?> adapter, @NotNull BrvahAsyncDifferConfig<T> config) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(config, "config");
        this.adapter = adapter;
        this.config = config;
        this.mUpdateCallback = new BrvahListUpdateCallback(adapter);
        MainThreadExecutor mainThreadExecutor = new MainThreadExecutor();
        this.sMainThreadExecutor = mainThreadExecutor;
        ?? mainThreadExecutor2 = config.getMainThreadExecutor();
        this.mMainThreadExecutor = mainThreadExecutor2 != 0 ? mainThreadExecutor2 : mainThreadExecutor;
        this.mListeners = new CopyOnWriteArrayList();
    }

    private final void latchList(List<T> list, DiffUtil.DiffResult diffResult, Runnable runnable) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.setData$com_github_CymChad_brvah(list);
        diffResult.dispatchUpdatesTo(this.mUpdateCallback);
        onCurrentListChanged(data, runnable);
    }

    private final void onCurrentListChanged(List<? extends T> list, Runnable runnable) {
        for (c<T> cVar : this.mListeners) {
            cVar.onCurrentListChanged(list, this.adapter.getData());
        }
        if (runnable == null) {
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void submitList$default(BrvahAsyncDiffer brvahAsyncDiffer, List list, Runnable runnable, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            runnable = null;
        }
        brvahAsyncDiffer.submitList(list, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submitList$lambda-1  reason: not valid java name */
    public static final void m31submitList$lambda1(final BrvahAsyncDiffer this$0, final List oldList, final List list, final int i9, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(oldList, "$oldList");
        final DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: com.chad.library.adapter.base.diff.BrvahAsyncDiffer$submitList$1$result$1
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i10, int i11) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i10);
                Object obj2 = list.get(i11);
                if (obj != null && obj2 != null) {
                    brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                    return brvahAsyncDifferConfig.getDiffCallback().areContentsTheSame(obj, obj2);
                } else if (obj == null && obj2 == null) {
                    return true;
                } else {
                    throw new AssertionError();
                }
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i10, int i11) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i10);
                Object obj2 = list.get(i11);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                }
                brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                return brvahAsyncDifferConfig.getDiffCallback().areItemsTheSame(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            @Nullable
            public Object getChangePayload(int i10, int i11) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i10);
                Object obj2 = list.get(i11);
                if (obj == null || obj2 == null) {
                    throw new AssertionError();
                }
                brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                return brvahAsyncDifferConfig.getDiffCallback().getChangePayload(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return list.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return oldList.size();
            }
        });
        Intrinsics.checkNotNullExpressionValue(calculateDiff, "@JvmOverloads\n    fun su…        }\n        }\n    }");
        this$0.mMainThreadExecutor.execute(new Runnable() { // from class: com.chad.library.adapter.base.diff.a
            @Override // java.lang.Runnable
            public final void run() {
                BrvahAsyncDiffer.m32submitList$lambda1$lambda0(BrvahAsyncDiffer.this, i9, list, calculateDiff, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submitList$lambda-1$lambda-0  reason: not valid java name */
    public static final void m32submitList$lambda1$lambda0(BrvahAsyncDiffer this$0, int i9, List list, DiffUtil.DiffResult result, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "$result");
        if (this$0.mMaxScheduledGeneration == i9) {
            this$0.latchList(list, result, runnable);
        }
    }

    public final void addData(int i9, T t10) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.getData().add(i9, t10);
        this.mUpdateCallback.onInserted(i9, 1);
        onCurrentListChanged(data, null);
    }

    public final void addList(@Nullable List<? extends T> list) {
        if (list == null) {
            return;
        }
        List<? extends T> data = this.adapter.getData();
        this.adapter.getData().addAll(list);
        this.mUpdateCallback.onInserted(data.size(), list.size());
        onCurrentListChanged(data, null);
    }

    public void addListListener(@NotNull c<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mListeners.add(listener);
    }

    public final void changeData(int i9, T t10, @Nullable T t11) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.getData().set(i9, t10);
        this.mUpdateCallback.onChanged(i9, 1, t11);
        onCurrentListChanged(data, null);
    }

    public final void clearAllListListener() {
        this.mListeners.clear();
    }

    public final void remove(T t10) {
        List<? extends T> data = this.adapter.getData();
        int indexOf = this.adapter.getData().indexOf(t10);
        if (indexOf == -1) {
            return;
        }
        this.adapter.getData().remove(indexOf);
        this.mUpdateCallback.onRemoved(indexOf, 1);
        onCurrentListChanged(data, null);
    }

    public final void removeAt(int i9) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.getData().remove(i9);
        this.mUpdateCallback.onRemoved(i9, 1);
        onCurrentListChanged(data, null);
    }

    public final void removeListListener(@NotNull c<T> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.mListeners.remove(listener);
    }

    @JvmOverloads
    public final void submitList(@Nullable List<T> list) {
        submitList$default(this, list, null, 2, null);
    }

    @JvmOverloads
    public final void submitList(@Nullable final List<T> list, @Nullable final Runnable runnable) {
        final int i9 = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i9;
        if (list == this.adapter.getData()) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        final List<? extends T> data = this.adapter.getData();
        if (list == null) {
            int size = this.adapter.getData().size();
            this.adapter.setData$com_github_CymChad_brvah(new ArrayList());
            this.mUpdateCallback.onRemoved(0, size);
            onCurrentListChanged(data, runnable);
        } else if (this.adapter.getData().isEmpty()) {
            this.adapter.setData$com_github_CymChad_brvah(list);
            this.mUpdateCallback.onInserted(0, list.size());
            onCurrentListChanged(data, runnable);
        } else {
            this.config.getBackgroundThreadExecutor().execute(new Runnable() { // from class: com.chad.library.adapter.base.diff.b
                @Override // java.lang.Runnable
                public final void run() {
                    BrvahAsyncDiffer.m31submitList$lambda1(BrvahAsyncDiffer.this, data, list, i9, runnable);
                }
            });
        }
    }

    public final void addData(T t10) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.getData().add(t10);
        this.mUpdateCallback.onInserted(data.size(), 1);
        onCurrentListChanged(data, null);
    }
}
