package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PopupMenuItem;
import com.guochao.faceshow.aaspring.modulars.chat.models.LiveInviteMessage;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.LiveInfoUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J\u001c\u0010\u0006\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016R$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;", "last", "message", "", "onBind", "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;", BaseConfig.ITEM, "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "onItemClick", "", "onCreatePopupMenus", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;", "liveInviteMessage", "Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;", "getLiveInviteMessage", "()Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;", "setLiveInviteMessage", "(Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;)V", "Landroid/content/Context;", "context", "itemView", "<init>", "(Landroid/content/Context;Landroid/view/View;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LiveHelloStartInviteViewHolder extends BaseMessageViewHolder {
    @Nullable
    private LiveInviteMessage liveInviteMessage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveHelloStartInviteViewHolder(@NotNull Context context, @NotNull View itemView) {
        super(context, itemView);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBind$lambda-3$lambda-2$lambda-1  reason: not valid java name */
    public static final void m359onBind$lambda3$lambda2$lambda1(LiveHelloStartInviteViewHolder this$0, LiveInviteMessage it, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        if (this$0.isSelf()) {
            return;
        }
        LiveInfoUtils.getLiveInfoAndJumpIfNeed(it.getLiveId(), this$0.mContext);
        EventTrackingUtils.getInstance().track(EventTrackingUtils.CLICK_IM_CHAT_LIVE_ROOM);
    }

    @Nullable
    public final LiveInviteMessage getLiveInviteMessage() {
        return this.liveInviteMessage;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    public void onBind(@Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar, @Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar2) {
        TextView textView = (TextView) this.itemView.findViewById(R.id.tv_content);
        TextView textView2 = (TextView) this.itemView.findViewById(R.id.tv_in_to_live);
        final LiveInviteMessage liveInviteMessage = (LiveInviteMessage) aVar2;
        this.liveInviteMessage = liveInviteMessage;
        if (liveInviteMessage != null) {
            if (textView != null) {
                if (liveInviteMessage.isSelf()) {
                    textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.white));
                } else {
                    textView.setTextColor(ContextCompat.getColor(this.mContext, R.color.color_ugc_text_level_1));
                }
                textView.setText(liveInviteMessage.getContent());
            }
            if (textView2 != null) {
                textView2.setText(liveInviteMessage.getContentEnd());
                if (liveInviteMessage.isSelf()) {
                    textView2.setTextColor(ContextCompat.getColor(this.mContext, R.color.white));
                } else {
                    textView2.setTextColor(ContextCompat.getColor(this.mContext, R.color.color_ugc_app_primary));
                }
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.chat.viewholder.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        LiveHelloStartInviteViewHolder.m359onBind$lambda3$lambda2$lambda1(LiveHelloStartInviteViewHolder.this, liveInviteMessage, view);
                    }
                });
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder
    @NotNull
    public List<PopupMenuItem> onCreatePopupMenus(@Nullable com.guochao.faceshow.aaspring.modulars.chat.models.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PopupMenuItem(1, this.mContext.getString(R.string.delete)));
        if (isSelf()) {
            Intrinsics.checkNotNull(aVar);
            if (aVar.getStatus() == 2 && !isErrorMsg()) {
                arrayList.add(new PopupMenuItem(2, this.mContext.getString(R.string.chat_pullback)));
            }
        }
        return arrayList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.viewholder.BaseMessageViewHolder, com.guochao.faceshow.aaspring.utils.PopupMenu.OnMenuItemClickListener
    public void onItemClick(@Nullable PopupMenuItem popupMenuItem, @Nullable View view) {
        super.onItemClick(popupMenuItem, view);
        if (popupMenuItem != null) {
            int id2 = popupMenuItem.getId();
            if (id2 == 1) {
                deleteCurrentMessage();
            } else if (id2 != 2) {
            } else {
                revokeCurrentMessage();
            }
        }
    }

    public final void setLiveInviteMessage(@Nullable LiveInviteMessage liveInviteMessage) {
        this.liveInviteMessage = liveInviteMessage;
    }
}
