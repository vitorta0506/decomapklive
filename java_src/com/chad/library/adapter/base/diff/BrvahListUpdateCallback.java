package com.chad.library.adapter.base.diff;

import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.tencent.ugc.videoprocessor.watermark.data.AnimatedPasterJsonConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;", "Landroidx/recyclerview/widget/ListUpdateCallback;", "mAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "onChanged", "", "position", "", AnimatedPasterJsonConfig.CONFIG_COUNT, "payload", "", "onInserted", "onMoved", "fromPosition", "toPosition", "onRemoved", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class BrvahListUpdateCallback implements ListUpdateCallback {
    @NotNull
    private final BaseQuickAdapter<?, ?> mAdapter;

    public BrvahListUpdateCallback(@NotNull BaseQuickAdapter<?, ?> mAdapter) {
        Intrinsics.checkNotNullParameter(mAdapter, "mAdapter");
        this.mAdapter = mAdapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i9, int i10, @Nullable Object obj) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeChanged(i9 + baseQuickAdapter.getHeaderLayoutCount(), i10, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i9, int i10) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeInserted(i9 + baseQuickAdapter.getHeaderLayoutCount(), i10);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i9, int i10) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemMoved(i9 + baseQuickAdapter.getHeaderLayoutCount(), i10 + this.mAdapter.getHeaderLayoutCount());
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i9, int i10) {
        BaseLoadMoreModule mLoadMoreModule$com_github_CymChad_brvah = this.mAdapter.getMLoadMoreModule$com_github_CymChad_brvah();
        boolean z10 = false;
        if (mLoadMoreModule$com_github_CymChad_brvah != null && mLoadMoreModule$com_github_CymChad_brvah.hasLoadMoreView()) {
            z10 = true;
        }
        if (z10 && this.mAdapter.getItemCount() == 0) {
            BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
            baseQuickAdapter.notifyItemRangeRemoved(i9 + baseQuickAdapter.getHeaderLayoutCount(), i10 + 1);
            return;
        }
        BaseQuickAdapter<?, ?> baseQuickAdapter2 = this.mAdapter;
        baseQuickAdapter2.notifyItemRangeRemoved(i9 + baseQuickAdapter2.getHeaderLayoutCount(), i10);
    }
}
