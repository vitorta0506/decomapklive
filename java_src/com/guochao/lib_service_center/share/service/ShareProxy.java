package com.guochao.lib_service_center.share.service;

import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u000eJ:\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH&¨\u0006\u000f"}, d2 = {"Lcom/guochao/lib_service_center/share/service/ShareProxy;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "start", "", "context", "Landroidx/fragment/app/FragmentActivity;", "roomId", "", "coverImg", "shareUrl", "isOwner", "", "actionFinish", "Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;", "ActionFinish", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ShareProxy extends IProvider {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;", "", "finish", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ActionFinish {
        void finish();
    }

    void start(@NotNull FragmentActivity fragmentActivity, @NotNull String str, @NotNull String str2, @NotNull String str3, boolean z10, @Nullable ActionFinish actionFinish);
}
