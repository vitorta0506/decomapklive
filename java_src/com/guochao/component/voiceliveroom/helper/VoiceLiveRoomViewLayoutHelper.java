package com.guochao.component.voiceliveroom.helper;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.R$id;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper;
import com.guochao.component.liveroomcommon.view.LiveRoomRootView;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u001e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0012"}, d2 = {"Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;", "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V", "layoutAdsView", "", "layoutBottomActionView", "layoutChatContentListView", "chat", "voice", "root", "Lcom/guochao/component/liveroomcommon/view/LiveRoomRootView;", "layoutEventView", "layoutLiveRoomPlayerView", "layoutTopInfoView", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceLiveRoomViewLayoutHelper extends LiveRoomViewLayoutHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceLiveRoomViewLayoutHelper(@NotNull final View view, @NotNull GCLiveRoomModel gcLiveRoomModel) {
        super(view, gcLiveRoomModel);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(gcLiveRoomModel, "gcLiveRoomModel");
        if (view instanceof LiveRoomRootView) {
            ((LiveRoomRootView) view).setOnLayoutListener(new LiveRoomRootView.OnLayoutListener() { // from class: com.guochao.component.voiceliveroom.helper.VoiceLiveRoomViewLayoutHelper.1
                @Override // com.guochao.component.liveroomcommon.view.LiveRoomRootView.OnLayoutListener
                public void onLayout(@NotNull LiveRoomRootView root, boolean z10, int i9, int i10, int i11, int i12) {
                    Intrinsics.checkNotNullParameter(root, "root");
                    View findView = root.findView(R$id.voice_room_seat_area);
                    if (findView != null) {
                        View findView2 = root.findView(R$id.user_info_fragment);
                        if (findView2 != null) {
                            int left = findView2.getLeft();
                            int bottom = findView2.getBottom();
                            findView.layout(left, bottom, findView.getMeasuredWidth() + left, findView.getMeasuredHeight() + bottom);
                        }
                        View findView3 = ((LiveRoomRootView) view).findView(R$id.chat_fragment);
                        if (findView3 != null) {
                            this.layoutChatContentListView(findView3, findView, root);
                        }
                    }
                }
            });
        }
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutAdsView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper
    public void layoutBottomActionView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public final void layoutChatContentListView(@NotNull View chat, @NotNull View voice, @NotNull LiveRoomRootView root) {
        Intrinsics.checkNotNullParameter(chat, "chat");
        Intrinsics.checkNotNullParameter(voice, "voice");
        Intrinsics.checkNotNullParameter(root, "root");
        int bottom = voice.getBottom() + DensityUtil.dp2px(8.0f);
        ViewGroup.LayoutParams layoutParams = chat.getLayoutParams();
        int measuredHeight = root.getMeasuredHeight() - bottom;
        if (layoutParams.height != measuredHeight) {
            layoutParams.height = measuredHeight;
            chat.measure(View.MeasureSpec.makeMeasureSpec(chat.getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams.height, BasicMeasure.EXACTLY));
            chat.layout(root.getLeft(), bottom, root.getLeft() + chat.getMeasuredWidth(), chat.getMeasuredHeight() + bottom);
        }
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
