package com.guochao.faceshow.component.f2fmatch.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment;
import com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder;
import com.guochao.faceshow.component.f2fmatch.holder.F2fMessageFocusUserHolder;
import com.guochao.faceshow.component.f2fmatch.holder.F2fMessageGiftHolder;
import com.guochao.faceshow.component.f2fmatch.holder.F2fMessageNormalHolder;
import com.guochao.faceshow.component.f2fmatch.holder.F2fMessageSystemHolder;
import com.guochao.faceshow.component.f2fmatch.holder.F2fSpeechTextHolder;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.utils.F2fSpanTipsUtils;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b(\u0010)J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u0003R\u0014\u0010\u0014\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR'\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u000f0 j\b\u0012\u0004\u0012\u00020\u000f`!8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%¨\u0006+"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "", "randomTips", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "position", "getItemViewType", "holder", "", "onBindViewHolder", "getItemCount", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "msg", "index", "add", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "f2fChatMessageFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "", "focused", "Z", "getFocused", "()Z", "setFocused", "(Z)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "msgList", "Ljava/util/ArrayList;", "getMsgList", "()Ljava/util/ArrayList;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/model/GCUser;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class F2fChatMessageAdapter extends RecyclerView.Adapter<F2fBaseHolder> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FOCUS_USER_TIP_TYPE = 4;
    public static final int NORMAL_MSG_TYPE = 7;
    public static final int SEND_FOLLOW_BACK_TIPS = 2;
    public static final int SEND_GIFT_TIP_TYPE = 5;
    public static final int SPEECH_TO_TEXT = 1005;
    public static final int SYSTEM_ENTER_SPEECH_TIP = 1001;
    public static final int SYSTEM_ENTER_TEXT_TIP = 1000;
    public static final int SYSTEM_TIP_TYPE = 1;
    public static final int SYSTEM_TIP_TYPE_BLUE_BG = 8;
    public static final int SYSTEM_TIP_TYPE_TRANSPARENT_BG = 9;
    @NotNull
    private final F2fChatMessageFragment f2fChatMessageFragment;
    private boolean focused;
    @NotNull
    private final GCUser gcUser;
    @NotNull
    private final ArrayList<F2fChatMessageModel> msgList;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/adapter/F2fChatMessageAdapter$Companion;", "", "()V", "FOCUS_USER_TIP_TYPE", "", "NORMAL_MSG_TYPE", "SEND_FOLLOW_BACK_TIPS", "SEND_GIFT_TIP_TYPE", "SPEECH_TO_TEXT", "SYSTEM_ENTER_SPEECH_TIP", "SYSTEM_ENTER_TEXT_TIP", "SYSTEM_TIP_TYPE", "SYSTEM_TIP_TYPE_BLUE_BG", "SYSTEM_TIP_TYPE_TRANSPARENT_BG", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public F2fChatMessageAdapter(@NotNull Context context, @NotNull GCUser gcUser, @NotNull F2fChatMessageFragment f2fChatMessageFragment) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        Intrinsics.checkNotNullParameter(f2fChatMessageFragment, "f2fChatMessageFragment");
        this.gcUser = gcUser;
        this.f2fChatMessageFragment = f2fChatMessageFragment;
        ArrayList<F2fChatMessageModel> arrayList = new ArrayList<>();
        this.msgList = arrayList;
        arrayList.add(new F2fChatMessageModel(1, context.getString(randomTips()), null, null, null, 24, null));
        Intrinsics.checkNotNull(gcUser, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel.F2fMatchRoomInfo");
        int attentionStatus = ((F2fMatchModel.F2fMatchRoomInfo) gcUser).getAttentionStatus();
        if (attentionStatus == 0) {
            arrayList.add(new F2fChatMessageModel(8, context.getString(R.string.f2f_focusd_you_apply, gcUser.getNickName()), null, null, null, 24, null));
            arrayList.add(new F2fChatMessageModel(4, null, null, null, null, 30, null));
        } else if (attentionStatus == 1) {
            this.focused = true;
        } else if (attentionStatus != 2) {
        } else {
            this.focused = true;
            arrayList.add(new F2fChatMessageModel(9, F2fSpanTipsUtils.INSTANCE.followEachOtherTip((F2fMatchModel.F2fMatchRoomInfo) gcUser), null, null, null, 24, null));
        }
    }

    public static /* synthetic */ void add$default(F2fChatMessageAdapter f2fChatMessageAdapter, F2fChatMessageModel f2fChatMessageModel, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i9 = -1;
        }
        f2fChatMessageAdapter.add(f2fChatMessageModel, i9);
    }

    private final int randomTips() {
        int random;
        random = ArraysKt___ArraysKt.random(new int[]{R.string.f2f_tips, R.string.f2f_tips_follow_each_other_to_chat_free, R.string.f2f_matching_tips1, R.string.f2f_matching_tips2, R.string.f2f_matching_tips3, R.string.f2f_matching_tips4}, (Random) Random.Default);
        return random;
    }

    public final void add(@NotNull F2fChatMessageModel msg, int i9) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (i9 == -1) {
            this.msgList.add(msg);
        } else {
            this.msgList.add(i9, msg);
        }
        notifyDataSetChanged();
    }

    public final boolean getFocused() {
        return this.focused;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.msgList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        F2fChatMessageModel f2fChatMessageModel = this.msgList.get(i9);
        Intrinsics.checkNotNullExpressionValue(f2fChatMessageModel, "msgList[position]");
        return f2fChatMessageModel.getMessageType();
    }

    @NotNull
    public final ArrayList<F2fChatMessageModel> getMsgList() {
        return this.msgList;
    }

    public final void setFocused(boolean z10) {
        this.focused = z10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull F2fBaseHolder holder, int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        F2fChatMessageModel f2fChatMessageModel = this.msgList.get(i9);
        Intrinsics.checkNotNullExpressionValue(f2fChatMessageModel, "msgList[position]");
        holder.convert(f2fChatMessageModel);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public F2fBaseHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i9 != 1) {
            if (i9 == 1005) {
                View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_f2f_msg_normal, parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …sg_normal, parent, false)");
                return new F2fSpeechTextHolder(inflate, this.gcUser, this.f2fChatMessageFragment);
            } else if (i9 == 4) {
                View inflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_broadcaster_share_my_room, parent, false);
                ViewGroup.LayoutParams layoutParams = inflate2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.setMargins(0, 0, 0, 0);
                marginLayoutParams.topMargin = DensityUtil.dp2px(10.0f);
                marginLayoutParams.width = -2;
                inflate2.setLayoutParams(marginLayoutParams);
                Intrinsics.checkNotNullExpressionValue(inflate2, "from(parent.context)\n   …  }\n                    }");
                GCUser gCUser = this.gcUser;
                Intrinsics.checkNotNull(gCUser, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel.F2fMatchRoomInfo");
                return new F2fMessageFocusUserHolder(inflate2, (F2fMatchModel.F2fMatchRoomInfo) gCUser, this.f2fChatMessageFragment);
            } else if (i9 == 5) {
                View inflate3 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_f2f_msg_gift, parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate3, "from(parent.context)\n   …_msg_gift, parent, false)");
                return new F2fMessageGiftHolder(inflate3, this.gcUser);
            } else if (i9 != 8 && i9 != 9 && i9 != 1000 && i9 != 1001) {
                View inflate4 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_f2f_msg_normal, parent, false);
                Intrinsics.checkNotNullExpressionValue(inflate4, "from(parent.context)\n   …sg_normal, parent, false)");
                return new F2fMessageNormalHolder(inflate4, this.gcUser);
            }
        }
        View inflate5 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_f2f_msg_system, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate5, "from(parent.context)\n   …sg_system, parent, false)");
        return new F2fMessageSystemHolder(inflate5);
    }
}
