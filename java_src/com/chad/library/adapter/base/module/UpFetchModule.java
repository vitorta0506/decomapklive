package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.BaseQuickAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lcom/chad/library/adapter/base/module/UpFetchModule;", "", "addUpFetchModule", "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface UpFetchModule {

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @NotNull
        public static BaseUpFetchModule addUpFetchModule(@NotNull UpFetchModule upFetchModule, @NotNull BaseQuickAdapter<?, ?> baseQuickAdapter) {
            Intrinsics.checkNotNullParameter(upFetchModule, "this");
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
            return new BaseUpFetchModule(baseQuickAdapter);
        }
    }

    @NotNull
    BaseUpFetchModule addUpFetchModule(@NotNull BaseQuickAdapter<?, ?> baseQuickAdapter);
}
