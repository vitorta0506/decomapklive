package com.guochao.faceshow.aaspring.modulars.share.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.widget.ShareDialog;
import com.guochao.component.liveroom.databinding.ItemSharePeopleBinding;
import com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment;
import com.guochao.component.voiceliveroom.repository.VoiceRoomMemberRepository;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestKt;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.beans.ConversationInfoDetail;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog;
import com.guochao.faceshow.databinding.FragmentVoliceRoomShareBinding;
import com.guochao.faceshow.databinding.ListItemShareBinding;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.lib_service_center.share.service.ShareProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import x0.f;
@Route(path = RouterPath.ROUTER_GC_VOICE_ROOM_SHARE)
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0005:;<=>B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010(\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)2\u0006\u0010+\u001a\u00020\u000bH\u0002J\u0012\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/H\u0016J\b\u00100\u001a\u00020-H\u0014J\u0010\u00101\u001a\u00020-2\b\u00102\u001a\u0004\u0018\u000103J\b\u00104\u001a\u00020-H\u0002J\b\u00105\u001a\u00020-H\u0002J:\u00106\u001a\u00020-2\u0006\u0010.\u001a\u0002072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u001c2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010!\u001a\u00020\"8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b#\u0010\u0003\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006?"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "Lcom/guochao/lib_service_center/share/service/ShareProxy;", "()V", "actionFinish", "Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;", "getActionFinish", "()Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;", "setActionFinish", "(Lcom/guochao/lib_service_center/share/service/ShareProxy$ActionFinish;)V", "isOwner", "", "()Z", "setOwner", "(Z)V", "mPeopleAdapter", "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;", "getMPeopleAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;", "setMPeopleAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;)V", "mShareAdapter", "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;", "getMShareAdapter", "()Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;", "setMShareAdapter", "(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;)V", "roomId", "", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentVoliceRoomShareBinding;)V", "getTopicDefault", "", "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;", "showShareToFriend", "init", "", "context", "Landroid/content/Context;", "initListener", "invitePerson", "person", "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;", "shareLiveToFriend", "shareLiveToRecent", "start", "Landroidx/fragment/app/FragmentActivity;", "coverImg", "shareUrl", "Companion", "PeopleAdapter", "PeopleViewHolder", "ShareAdapter", "ShareViewHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomShareFragment extends FullWidthBaseFragment implements ShareProxy {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private ShareProxy.ActionFinish actionFinish;
    private boolean isOwner;
    public FragmentVoliceRoomShareBinding viewBinding;
    @NotNull
    private ShareAdapter mShareAdapter = new ShareAdapter();
    @NotNull
    private PeopleAdapter mPeopleAdapter = new PeopleAdapter();
    @NotNull
    private String roomId = "";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment;", "roomId", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomShareFragment newInstance(@NotNull String roomId) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            VoiceRoomShareFragment voiceRoomShareFragment = new VoiceRoomShareFragment();
            Bundle arguments = voiceRoomShareFragment.getArguments();
            if (arguments != null) {
                arguments.putString("roomId", roomId);
            }
            return voiceRoomShareFragment;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;", "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;", "()V", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PeopleAdapter extends BaseQuickAdapter<InviteBean, PeopleViewHolder> {
        public PeopleAdapter() {
            super(R.layout.item_share_people, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull PeopleViewHolder holder, @NotNull InviteBean item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            if (Intrinsics.areEqual(PushUtils.CHAT_PUSH_TYPE, item.getCurrentUserId())) {
                holder.getBinding().headerIV.setImageResource(R.mipmap.voice_room_invite_more);
                holder.getBinding().nameTV.setText(getContext().getString(R.string.more));
                return;
            }
            hc.a.p(holder.getBinding().headerIV, item.getAvatarUrl(), R.mipmap.icon_head_default);
            holder.getBinding().nameTV.setText(item.getUserName());
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$PeopleViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ItemSharePeopleBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PeopleViewHolder extends BaseViewHolder {
        @NotNull
        private final ItemSharePeopleBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeopleViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ItemSharePeopleBinding bind = ItemSharePeopleBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ItemSharePeopleBinding getBinding() {
            return this.binding;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;", "Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareViewHolder;", "()V", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ShareAdapter extends BaseQuickAdapter<SharePlatformBean, ShareViewHolder> {
        public ShareAdapter() {
            super(R.layout.list_item_share, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(@NotNull ShareViewHolder holder, @NotNull SharePlatformBean item) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(item, "item");
            holder.getBinding().icon.setImageResource(item.getIcon());
            holder.getBinding().tv.setText(getContext().getString(item.getDiplayNameId()));
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/share/fragment/VoiceRoomShareFragment$ShareViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/faceshow/databinding/ListItemShareBinding;", "getBinding", "()Lcom/guochao/faceshow/databinding/ListItemShareBinding;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ShareViewHolder extends BaseViewHolder {
        @NotNull
        private final ListItemShareBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShareViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            ListItemShareBinding bind = ListItemShareBinding.bind(view);
            Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
            this.binding = bind;
        }

        @NotNull
        public final ListItemShareBinding getBinding() {
            return this.binding;
        }
    }

    private final List<SharePlatformBean> getTopicDefault(boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.add(new SharePlatformBean(SharePlatformBean.Friend.NAME, R.mipmap.icon_share_friend, R.string.invite_friends_text));
        }
        return arrayList;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-0  reason: not valid java name */
    public static final void m554initListener$lambda0(VoiceRoomShareFragment this$0, BaseQuickAdapter adapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "view");
        if (SharePlatformBean.Friend.NAME.equals(this$0.mShareAdapter.getItem(i9).getSharePlatformName())) {
            this$0.shareLiveToFriend();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initListener$lambda-3  reason: not valid java name */
    public static final void m555initListener$lambda3(VoiceRoomShareFragment this$0, BaseQuickAdapter baseQuickAdapter, View view, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        if (Intrinsics.areEqual(PushUtils.CHAT_PUSH_TYPE, this$0.mPeopleAdapter.getItem(i9).getCurrentUserId())) {
            this$0.shareLiveToRecent();
        } else {
            this$0.invitePerson(this$0.mPeopleAdapter.getItem(i9));
        }
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomShareFragment newInstance(@NotNull String str) {
        return Companion.newInstance(str);
    }

    private final void shareLiveToFriend() {
        String str = this.roomId;
        boolean z10 = this.isOwner;
        InviteDialog V1 = InviteDialog.V1(str, z10 ? 2 : 1, z10 ? 4 : 3);
        V1.setOnDismissListener(new InviteDialog.g() { // from class: com.guochao.faceshow.aaspring.modulars.share.fragment.a
            @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog.g
            public final void a(int i9) {
                VoiceRoomShareFragment.m556shareLiveToFriend$lambda5(VoiceRoomShareFragment.this, i9);
            }
        });
        V1.show(getChildFragmentManager(), InviteDialog.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shareLiveToFriend$lambda-5  reason: not valid java name */
    public static final void m556shareLiveToFriend$lambda5(VoiceRoomShareFragment this$0, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    private final void shareLiveToRecent() {
        String str = this.roomId;
        boolean z10 = this.isOwner;
        InviteDialog V1 = InviteDialog.V1(str, z10 ? 1 : 0, z10 ? 4 : 3);
        V1.setOnDismissListener(new InviteDialog.g() { // from class: com.guochao.faceshow.aaspring.modulars.share.fragment.b
            @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteDialog.g
            public final void a(int i9) {
                VoiceRoomShareFragment.m557shareLiveToRecent$lambda6(VoiceRoomShareFragment.this, i9);
            }
        });
        V1.show(getChildFragmentManager(), InviteDialog.class.getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: shareLiveToRecent$lambda-6  reason: not valid java name */
    public static final void m557shareLiveToRecent$lambda6(VoiceRoomShareFragment this$0, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Nullable
    public final ShareProxy.ActionFinish getActionFinish() {
        return this.actionFinish;
    }

    @NotNull
    public final PeopleAdapter getMPeopleAdapter() {
        return this.mPeopleAdapter;
    }

    @NotNull
    public final ShareAdapter getMShareAdapter() {
        return this.mShareAdapter;
    }

    @NotNull
    public final String getRoomId() {
        return this.roomId;
    }

    @NotNull
    public final FragmentVoliceRoomShareBinding getViewBinding() {
        FragmentVoliceRoomShareBinding fragmentVoliceRoomShareBinding = this.viewBinding;
        if (fragmentVoliceRoomShareBinding != null) {
            return fragmentVoliceRoomShareBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment
    protected void initListener() {
        super.initListener();
        ShareAdapter shareAdapter = this.mShareAdapter;
        List<SharePlatformBean> topicDefault = getTopicDefault(true);
        Intrinsics.checkNotNull(topicDefault, "null cannot be cast to non-null type kotlin.collections.MutableList<com.guochao.faceshow.aaspring.beans.SharePlatformBean>");
        shareAdapter.setData$com_github_CymChad_brvah(TypeIntrinsics.asMutableList(topicDefault));
        getViewBinding().shareRV.setAdapter(this.mShareAdapter);
        this.mShareAdapter.setOnItemClickListener(new f() { // from class: com.guochao.faceshow.aaspring.modulars.share.fragment.c
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                VoiceRoomShareFragment.m554initListener$lambda0(VoiceRoomShareFragment.this, baseQuickAdapter, view, i9);
            }
        });
        List<ConversationInfo> f02 = com.guochao.faceshow.aaspring.manager.im.b.l0().f0();
        Intrinsics.checkNotNullExpressionValue(f02, "getInstance().cachedConversationList");
        ArrayList arrayList = new ArrayList();
        for (Object obj : f02) {
            if (((ConversationInfo) obj).shouldShowInConversationList()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ConversationInfoDetail conversationInfoDetail = ((ConversationInfo) it.next()).getConversationInfoDetail();
            if (conversationInfoDetail != null) {
                if (arrayList2.size() >= 10) {
                    ConversationInfoDetail conversationInfoDetail2 = new ConversationInfoDetail();
                    conversationInfoDetail2.setUserId(PushUtils.CHAT_PUSH_TYPE);
                    arrayList2.add(conversationInfoDetail2);
                    break;
                }
                arrayList2.add(conversationInfoDetail);
            }
        }
        this.mPeopleAdapter.setData$com_github_CymChad_brvah(arrayList2);
        if (this.mPeopleAdapter.getData() != null && this.mPeopleAdapter.getData().size() != 0) {
            getViewBinding().recentRV.setAdapter(this.mPeopleAdapter);
            this.mPeopleAdapter.setOnItemClickListener(new f() { // from class: com.guochao.faceshow.aaspring.modulars.share.fragment.d
                @Override // x0.f
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                    VoiceRoomShareFragment.m555initListener$lambda3(VoiceRoomShareFragment.this, baseQuickAdapter, view, i9);
                }
            });
            return;
        }
        getViewBinding().recentRV.setVisibility(8);
        getViewBinding().recentTV.setVisibility(8);
    }

    public final void invitePerson(@Nullable InviteBean inviteBean) {
        if (inviteBean == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(inviteBean);
        arrayList2.add(inviteBean.getCurrentUserId());
        InviteDialog.Y1(arrayList);
        GCRequest putBody = GCRequestKt.requestOnLifecycle(this, VoiceRoomMemberRepository.URL_VOICE_ROOM_INVITE_ADD).putBody("roomId", this.roomId).putBody("userIds", arrayList2);
        putBody.getCallbackHolder().setSuccessClz(Object.class);
        putBody.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.share.fragment.VoiceRoomShareFragment$invitePerson$$inlined$success$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                invoke2(response);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Response<Object> _response) {
                Intrinsics.checkNotNullParameter(_response, "_response");
                VoiceRoomShareFragment.this.showToast(R.string.live_invited);
                VoiceRoomShareFragment.this.dismissAllowingStateLoss();
            }
        });
        putBody.request();
    }

    public final boolean isOwner() {
        return this.isOwner;
    }

    public final void setActionFinish(@Nullable ShareProxy.ActionFinish actionFinish) {
        this.actionFinish = actionFinish;
    }

    public final void setMPeopleAdapter(@NotNull PeopleAdapter peopleAdapter) {
        Intrinsics.checkNotNullParameter(peopleAdapter, "<set-?>");
        this.mPeopleAdapter = peopleAdapter;
    }

    public final void setMShareAdapter(@NotNull ShareAdapter shareAdapter) {
        Intrinsics.checkNotNullParameter(shareAdapter, "<set-?>");
        this.mShareAdapter = shareAdapter;
    }

    public final void setOwner(boolean z10) {
        this.isOwner = z10;
    }

    public final void setRoomId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.roomId = str;
    }

    public final void setViewBinding(@NotNull FragmentVoliceRoomShareBinding fragmentVoliceRoomShareBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoliceRoomShareBinding, "<set-?>");
        this.viewBinding = fragmentVoliceRoomShareBinding;
    }

    @Override // com.guochao.lib_service_center.share.service.ShareProxy
    public void start(@NotNull FragmentActivity context, @NotNull String roomId, @NotNull String coverImg, @NotNull String shareUrl, boolean z10, @Nullable ShareProxy.ActionFinish actionFinish) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(coverImg, "coverImg");
        Intrinsics.checkNotNullParameter(shareUrl, "shareUrl");
        if (actionFinish != null) {
            this.actionFinish = actionFinish;
        }
        this.isOwner = z10;
        this.roomId = roomId;
        FragmentManager supportFragmentManager = context.getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "context.supportFragmentManager");
        show(supportFragmentManager, ShareDialog.WEB_SHARE_DIALOG);
    }
}
