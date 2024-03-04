package com.guochao.lib_service_center.liveroom.service;

import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.guochao.lib_service_center.share.service.ShareProxy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\nJ\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&¨\u0006\u000b"}, d2 = {"Lcom/guochao/lib_service_center/liveroom/service/LiveBannedListProxy;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "start", "", "context", "Landroidx/fragment/app/FragmentActivity;", "roomId", "", "actionFinish", "Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;", "ActionFinish", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface LiveBannedListProxy extends IProvider {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/guochao/lib_service_center/liveroom/service/LiveBannedListProxy$ActionFinish;", "", "finish", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ActionFinish {
        void finish();
    }

    void start(@NotNull FragmentActivity fragmentActivity, @NotNull String str, @Nullable ShareProxy.ActionFinish actionFinish);
}
