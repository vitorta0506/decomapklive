package com.guochao.faceshow.component.f2fmatch.holder;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.resource.bitmap.l;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment;
import com.guochao.faceshow.component.f2fmatch.model.F2fChatMessageModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/holder/F2fMessageFocusUserHolder;", "Lcom/guochao/faceshow/component/f2fmatch/holder/F2fBaseHolder;", "itemView", "Landroid/view/View;", "gcUser", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "f2fChatMessageFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;", "(Landroid/view/View;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;)V", "convert", "", "f2FChatMessageModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMessageFocusUserHolder extends F2fBaseHolder {
    @NotNull
    private final F2fChatMessageFragment f2fChatMessageFragment;
    @NotNull
    private final F2fMatchModel.F2fMatchRoomInfo gcUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F2fMessageFocusUserHolder(@NotNull View itemView, @NotNull F2fMatchModel.F2fMatchRoomInfo gcUser, @NotNull F2fChatMessageFragment f2fChatMessageFragment) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        Intrinsics.checkNotNullParameter(f2fChatMessageFragment, "f2fChatMessageFragment");
        this.gcUser = gcUser;
        this.f2fChatMessageFragment = f2fChatMessageFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-3  reason: not valid java name */
    public static final void m636convert$lambda3(final F2fMessageFocusUserHolder this$0, final TextView textView, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.f2fChatMessageFragment.getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        final F2fMatchContainer f2fMatchContainer = (F2fMatchContainer) activity;
        ib.b.b(this$0.gcUser.getUserId(), FriendFromSource.DEFAULT, this$0.f2fChatMessageFragment.getActivity(), new hb.b<String>() { // from class: com.guochao.faceshow.component.f2fmatch.holder.F2fMessageFocusUserHolder$convert$4$1
            @Override // hb.b
            public /* bridge */ /* synthetic */ void onFail(String str) {
                hb.a.a(this, str);
            }

            @Override // hb.b
            public void onResponse(@Nullable String str) {
                F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo;
                F2fMatchContainer f2fMatchContainer2 = F2fMatchContainer.this;
                f2fMatchRoomInfo = this$0.gcUser;
                Intrinsics.checkNotNull(f2fMatchRoomInfo, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel.F2fMatchRoomInfo");
                f2fMatchContainer2.focusSomebody(f2fMatchRoomInfo, false);
                textView.setText(R.string.focused);
                this$0.itemView.findViewById(R.id.avatar).setVisibility(8);
                ((ImageView) this$0.itemView.findViewById(R.id.icon_left)).setImageResource(R.drawable.follow_im_dui);
                TextView textView2 = textView;
                ViewGroup.LayoutParams layoutParams = textView2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.weight = 0.0f;
                layoutParams2.width = -2;
                textView2.setLayoutParams(layoutParams2);
                this$0.itemView.setClickable(false);
                this$0.itemView.setEnabled(false);
            }
        });
    }

    @Override // com.guochao.faceshow.component.f2fmatch.holder.F2fBaseHolder
    public void convert(@NotNull F2fChatMessageModel f2FChatMessageModel) {
        Intrinsics.checkNotNullParameter(f2FChatMessageModel, "f2FChatMessageModel");
        getTextView().setText(this.itemView.getResources().getString(R.string.foucs_back));
        final TextView textView = (TextView) this.itemView.findViewById(R.id.text_view);
        this.itemView.findViewById(R.id.icon).setVisibility(8);
        int attentionStatus = this.gcUser.getAttentionStatus();
        if (attentionStatus != 1 && attentionStatus != 2) {
            this.itemView.findViewById(R.id.icon_left).setVisibility(0);
            ImageView imageView = (ImageView) this.itemView.findViewById(R.id.avatar);
            imageView.setVisibility(0);
            com.bumptech.glide.c.w(this.f2fChatMessageFragment).r(this.gcUser.getSmallAvatarUrl()).q0(new l()).b0(R.mipmap.default_head).Q0(imageView);
        } else {
            textView.setText(R.string.focused);
            this.itemView.findViewById(R.id.avatar).setVisibility(8);
            ((ImageView) this.itemView.findViewById(R.id.icon_left)).setImageResource(R.drawable.follow_im_dui);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.weight = 0.0f;
            layoutParams2.width = -2;
            textView.setLayoutParams(layoutParams2);
            this.itemView.setClickable(false);
            this.itemView.setEnabled(false);
        }
        this.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.holder.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fMessageFocusUserHolder.m636convert$lambda3(F2fMessageFocusUserHolder.this, textView, view);
            }
        });
    }
}
