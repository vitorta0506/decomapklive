package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.k;
import x0.l;
@Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000b¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016R\u001c\u0010\f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u0006¨\u0006\u001d"}, d2 = {"Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "Lx0/l;", "", "position", "", "autoUpFetch$com_github_CymChad_brvah", "(I)V", "autoUpFetch", "Lx0/k;", "listener", "setOnUpFetchListener", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "isUpFetchEnable", "Z", "()Z", "setUpFetchEnable", "(Z)V", "isUpFetching", "setUpFetching", "startUpFetchPosition", "I", "getStartUpFetchPosition", "()I", "setStartUpFetchPosition", "<init>", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public class BaseUpFetchModule implements l {
    @NotNull
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean isUpFetchEnable;
    private boolean isUpFetching;
    @Nullable
    private k mUpFetchListener;
    private int startUpFetchPosition;

    public BaseUpFetchModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        this.startUpFetchPosition = 1;
    }

    public final void autoUpFetch$com_github_CymChad_brvah(int i9) {
        k kVar;
        if (!this.isUpFetchEnable || this.isUpFetching || i9 > this.startUpFetchPosition || (kVar = this.mUpFetchListener) == null) {
            return;
        }
        kVar.a();
    }

    public final int getStartUpFetchPosition() {
        return this.startUpFetchPosition;
    }

    public final boolean isUpFetchEnable() {
        return this.isUpFetchEnable;
    }

    public final boolean isUpFetching() {
        return this.isUpFetching;
    }

    @Override // x0.l
    public void setOnUpFetchListener(@Nullable k kVar) {
        this.mUpFetchListener = kVar;
    }

    public final void setStartUpFetchPosition(int i9) {
        this.startUpFetchPosition = i9;
    }

    public final void setUpFetchEnable(boolean z10) {
        this.isUpFetchEnable = z10;
    }

    public final void setUpFetching(boolean z10) {
        this.isUpFetching = z10;
    }
}
