package com.guochao.component.liveroom.helper;

import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\r"}, d2 = {"Lcom/guochao/component/liveroom/helper/VideoLiveRoomViewLayoutHelper;", "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V", "layoutAdsView", "", "layoutBottomActionView", "layoutEventView", "layoutLiveRoomPlayerView", "layoutTopInfoView", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoLiveRoomViewLayoutHelper extends LiveRoomViewLayoutHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoLiveRoomViewLayoutHelper(@NotNull View view, @NotNull GCLiveRoomModel gcLiveRoomModel) {
        super(view, gcLiveRoomModel);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(gcLiveRoomModel, "gcLiveRoomModel");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutAdsView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutBottomActionView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutEventView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutLiveRoomPlayerView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutTopInfoView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
