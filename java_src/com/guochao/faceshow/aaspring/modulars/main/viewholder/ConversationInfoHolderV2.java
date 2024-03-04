package com.guochao.faceshow.aaspring.modulars.main.viewholder;

import android.content.DialogInterface;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.manager.im.d;
import com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager;
import com.guochao.faceshow.aaspring.views.DragIndicatorView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TimeUtil;
import com.tencent.imsdk.v2.V2TIMCallback;
import com.tencent.imsdk.v2.V2TIMConversation;
import com.tencent.imsdk.v2.V2TIMManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ \u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "bind", "", BaseConfig.ITEM, "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "bindToConversation", "alwaysTop", "Landroid/widget/ImageView;", "avatarView", "Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;", "clearUnRead", "conversationInfo", "showItemDialog", "showSummery", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ConversationInfoHolderV2 extends BaseViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationInfoHolderV2(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bind$lambda-0  reason: not valid java name */
    public static final boolean m517bind$lambda0(ConversationInfoHolderV2 this$0, ConversationInfo item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.showItemDialog(item);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bind$lambda-1  reason: not valid java name */
    public static final void m518bind$lambda1(ConversationInfoHolderV2 this$0, DragIndicatorView dragIndicatorView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (dragIndicatorView.getTag() instanceof ConversationInfo) {
            Object tag = dragIndicatorView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.ConversationInfo");
            this$0.clearUnRead((ConversationInfo) tag);
            dragIndicatorView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bind$lambda-2  reason: not valid java name */
    public static final void m519bind$lambda2(ConversationInfoHolderV2 holder, ConversationInfo item, ConversationInfoHolderV2 this$0, ImageView alwaysTop, HeadPortraitView avatarView, ConversationInfoDetail conversationInfoDetail) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(alwaysTop, "$alwaysTop");
        Intrinsics.checkNotNullParameter(avatarView, "$avatarView");
        if (holder.itemView.getContext() == null) {
            return;
        }
        if (conversationInfoDetail != null) {
            item.setConversationInfoDetail(conversationInfoDetail);
            this$0.bindToConversation(item, alwaysTop, avatarView);
            return;
        }
        holder.setText(R.id.user_name, "");
        avatarView.f(null, true);
    }

    private final void bindToConversation(ConversationInfo conversationInfo, ImageView imageView, HeadPortraitView headPortraitView) {
        ConversationInfoDetail conversationInfoDetail = conversationInfo.getConversationInfoDetail();
        VipIndicatorView vipIndicatorView = (VipIndicatorView) getView(R.id.vip_indicator);
        setText(R.id.user_name, conversationInfo.getConversationName());
        boolean z10 = false;
        if (conversationInfoDetail != null) {
            if (conversationInfo.isMvpConversation()) {
                headPortraitView.g(conversationInfoDetail, false, true);
                headPortraitView.setPendantRes(R.mipmap.ic_mvp_pendant);
            } else {
                headPortraitView.f(conversationInfoDetail, true);
            }
            if (conversationInfoDetail.getUserVipMsg() != null && conversationInfoDetail.getUserVipMsg().getIsVip() != 0) {
                vipIndicatorView.setVisibility(0);
                vipIndicatorView.setVipLevel(conversationInfoDetail.getUserVipMsg().getIsVip());
            } else {
                vipIndicatorView.setVisibility(8);
            }
        }
        if (conversationInfo.getConversationType() == 3) {
            headPortraitView.setAvatarOnly(conversationInfo.getLocalFaceRes());
        }
        imageView.setVisibility(conversationInfo.getAlwaysTop() == 1 ? 0 : 8);
        boolean z11 = conversationInfo.getConversationType() == 3;
        if (z11) {
            headPortraitView.t(8);
        } else {
            headPortraitView.t(5);
            if (conversationInfo.isMvpConversation()) {
                headPortraitView.r(false);
            }
        }
        if (!z11 && conversationInfo.getOnlineStatus() == 1) {
            z10 = true;
        }
        headPortraitView.setOnline(z10);
    }

    private final void clearUnRead(ConversationInfo conversationInfo) {
        conversationInfo.setUnreadNum(0);
        if (conversationInfo.getConversationType() == 3) {
            String conversationId = conversationInfo.getConversationId();
            Intrinsics.checkNotNullExpressionValue(conversationId, "conversationInfo.conversationId");
            SystemConversationManager.clearUnread(conversationId);
            return;
        }
        V2TIMConversation tIMConversation = conversationInfo.getTIMConversation();
        if (tIMConversation == null) {
            return;
        }
        V2TIMManager.getMessageManager().markC2CMessageAsRead(tIMConversation.getUserID(), new V2TIMCallback() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewholder.ConversationInfoHolderV2$clearUnRead$1
            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onError(int i9, @NotNull String desc) {
                Intrinsics.checkNotNullParameter(desc, "desc");
            }

            @Override // com.tencent.imsdk.v2.V2TIMCallback
            public void onSuccess() {
            }
        });
    }

    private final void showItemDialog(final ConversationInfo conversationInfo) {
        String string;
        String str;
        String[] strArr;
        final boolean z10 = conversationInfo.getConversationType() == 3;
        if (z10) {
            String string2 = this.itemView.getContext().getString(R.string.delete);
            Intrinsics.checkNotNullExpressionValue(string2, "itemView.context.getString(R.string.delete)");
            strArr = new String[]{string2};
        } else {
            if (conversationInfo.getAlwaysTop() == 1) {
                string = this.itemView.getContext().getString(R.string.Cancel_top);
                str = "itemView.context.getString(R.string.Cancel_top)";
            } else {
                string = this.itemView.getContext().getString(R.string.Roof_placement);
                str = "itemView.context.getStri…acement\n                )";
            }
            Intrinsics.checkNotNullExpressionValue(string, str);
            String string3 = this.itemView.getContext().getString(R.string.delete);
            Intrinsics.checkNotNullExpressionValue(string3, "itemView.context.getString(R.string.delete)");
            strArr = new String[]{string, string3};
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.itemView.getContext());
        builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewholder.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i9) {
                ConversationInfoHolderV2.m520showItemDialog$lambda4(z10, conversationInfo, dialogInterface, i9);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showItemDialog$lambda-4  reason: not valid java name */
    public static final void m520showItemDialog$lambda4(boolean z10, ConversationInfo conversationInfo, DialogInterface dialogInterface, int i9) {
        Intrinsics.checkNotNullParameter(conversationInfo, "$conversationInfo");
        if (z10) {
            SystemConversationManager.removeConversation(conversationInfo);
        } else if (i9 != 0) {
            if (i9 != 1) {
                return;
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().G0(conversationInfo);
        } else {
            if (conversationInfo.getAlwaysTop() == 1) {
                conversationInfo.setAlwaysTop(0);
            } else {
                conversationInfo.setAlwaysTop(1);
            }
            com.guochao.faceshow.aaspring.manager.im.b.l0().R0(true);
        }
    }

    private final void showSummery(ConversationInfo conversationInfo) {
        String lastMsgStr = conversationInfo.getLastMsgStr();
        ImageView imageView = (ImageView) getView(R.id.draft);
        if (!TextUtils.isEmpty(lastMsgStr)) {
            setText(R.id.msg, lastMsgStr);
        } else {
            setText(R.id.msg, "");
        }
        if (conversationInfo.getLastMsgTime() > 0) {
            setText(R.id.time, TimeUtil.getIMTime(this.itemView.getContext(), System.currentTimeMillis() - conversationInfo.getLastMsgTime()));
        } else {
            setText(R.id.time, "");
        }
        imageView.setVisibility(conversationInfo.getIsDraft() ? 0 : 8);
    }

    public final void bind(@NotNull final ConversationInfo item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (getItemViewType() != 1000) {
            this.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewholder.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m517bind$lambda0;
                    m517bind$lambda0 = ConversationInfoHolderV2.m517bind$lambda0(ConversationInfoHolderV2.this, item, view);
                    return m517bind$lambda0;
                }
            });
        }
        int unreadNum = item.getUnreadNum();
        DragIndicatorView dragIndicatorView = (DragIndicatorView) getView(R.id.unread_num);
        boolean z10 = item.getSilent() == 1;
        boolean z11 = item.getConversationType() == 3;
        if (unreadNum <= 0) {
            setText(R.id.unread_num, "0");
            dragIndicatorView.setVisibility(8);
        } else if (z10 && z11) {
            dragIndicatorView.setVisibility(8);
        } else {
            if (unreadNum > 99) {
                setText(R.id.unread_num, "99+");
            } else {
                setText(R.id.unread_num, unreadNum + "");
            }
            dragIndicatorView.setVisibility(0);
        }
        if (!z10) {
            dragIndicatorView.setDrawColor(Color.parseColor("#FF417D"));
        } else {
            dragIndicatorView.setDrawColor(ContextCompat.getColor(this.itemView.getContext(), R.color.color_text_level_3));
        }
        dragIndicatorView.setTag(item);
        dragIndicatorView.setOnDismissAction(new DragIndicatorView.b() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewholder.d
            @Override // com.guochao.faceshow.aaspring.views.DragIndicatorView.b
            public final void a(DragIndicatorView dragIndicatorView2) {
                ConversationInfoHolderV2.m518bind$lambda1(ConversationInfoHolderV2.this, dragIndicatorView2);
            }
        });
        final ImageView imageView = (ImageView) getView(R.id.icon_always_top);
        final HeadPortraitView headPortraitView = (HeadPortraitView) getView(R.id.avatar_view);
        boolean z12 = item.getConversationType() == 3;
        if (item.getConversationInfoDetail() == null && !z12) {
            if (item.getTIMConversation() != null) {
                com.guochao.faceshow.aaspring.manager.im.b.l0().v0(item.getTIMConversation().getUserID(), new d.b() { // from class: com.guochao.faceshow.aaspring.modulars.main.viewholder.c
                    @Override // com.guochao.faceshow.aaspring.manager.im.d.b
                    public final void a(Object obj) {
                        ConversationInfoHolderV2.m519bind$lambda2(ConversationInfoHolderV2.this, item, this, imageView, headPortraitView, (ConversationInfoDetail) obj);
                    }
                });
            }
        } else {
            bindToConversation(item, imageView, headPortraitView);
        }
        showSummery(item);
    }
}
