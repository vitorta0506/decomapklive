package com.guochao.faceshow.component.f2fmatch.proxy.impl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterSexDialog;
import com.guochao.faceshow.aaspring.modulars.onevone.pendant.PendantDialog;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fChatMessageFragment;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy;
import com.guochao.faceshow.databinding.LayoutF2fMatchedUserInfoBinding;
import com.guochao.faceshow.databinding.LayoutVideoChatF2fUserBinding;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.views.e;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_F2F_PROXY)
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0002\u0010\fJ\u0012\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J*\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\bH\u0016J\b\u0010\u001b\u001a\u00020\bH\u0016J\u0018\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J\u0018\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!H\u0016J \u0010\"\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\bH\u0016J\u0010\u0010&\u001a\u00020\b2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010'\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000bH\u0016J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$H\u0016¨\u00060"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "()V", "diamondsEnoughToFilterGender", "", PushConstants.INTENT_ACTIVITY_NAME, "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;", "f2fMoveToMini", "", "findTips", "", "", "()[Ljava/lang/Integer;", "init", "context", "Landroid/content/Context;", "obtainChatFragment", "Landroidx/fragment/app/Fragment;", "gcUser", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "onActivityResult", "f2fMatchActivity", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onEnterF2f", "releaseMini", "report", "f2fMatchRoomInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "setUserInfo", "viewGroup", "Landroid/view/ViewGroup;", "setVideoChatUserInfo", "f2fMatchContainer", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;", "shouldCostFilterDiamonds", "showForbiddenLiveDialogIfNeed", "showGenderFilterDialog", "Landroid/app/Dialog;", "Landroid/app/Activity;", "matchGender", "showPendantDialog", "Landroidx/fragment/app/DialogFragment;", "manager", "Landroidx/fragment/app/FragmentManager;", "showRetryAlertDialog", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fProxyImpl implements F2fProxy {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setVideoChatUserInfo$lambda-3  reason: not valid java name */
    public static final void m639setVideoChatUserInfo$lambda3(ViewGroup viewGroup, F2fMatchModel.F2fMatchRoomInfo gcUser, View view) {
        Intrinsics.checkNotNullParameter(viewGroup, "$viewGroup");
        Intrinsics.checkNotNullParameter(gcUser, "$gcUser");
        UserHomePageAct.Companion companion = UserHomePageAct.Companion;
        Context context = viewGroup.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "viewGroup.context");
        companion.start(context, gcUser.getUserId(), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setVideoChatUserInfo$lambda-5  reason: not valid java name */
    public static final void m640setVideoChatUserInfo$lambda5(final F2fMatchModel.F2fMatchRoomInfo gcUser, ViewGroup viewGroup, final LayoutVideoChatF2fUserBinding binding, final F2fMatchContainer f2fMatchContainer, View view) {
        Intrinsics.checkNotNullParameter(gcUser, "$gcUser");
        Intrinsics.checkNotNullParameter(viewGroup, "$viewGroup");
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "$f2fMatchContainer");
        String userId = gcUser.getUserId();
        FriendFromSource friendFromSource = FriendFromSource.DEFAULT;
        Context context = viewGroup.getContext();
        Intrinsics.checkNotNull(context, "null cannot be cast to non-null type android.app.Activity");
        ib.b.b(userId, friendFromSource, (Activity) context, new hb.b() { // from class: com.guochao.faceshow.component.f2fmatch.proxy.impl.d
            @Override // hb.b
            public /* synthetic */ void onFail(Object obj) {
                hb.a.a(this, obj);
            }

            @Override // hb.b
            public final void onResponse(Object obj) {
                F2fProxyImpl.m641setVideoChatUserInfo$lambda5$lambda4(LayoutVideoChatF2fUserBinding.this, f2fMatchContainer, gcUser, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setVideoChatUserInfo$lambda-5$lambda-4  reason: not valid java name */
    public static final void m641setVideoChatUserInfo$lambda5$lambda4(LayoutVideoChatF2fUserBinding binding, F2fMatchContainer f2fMatchContainer, F2fMatchModel.F2fMatchRoomInfo gcUser, String str) {
        Intrinsics.checkNotNullParameter(binding, "$binding");
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "$f2fMatchContainer");
        Intrinsics.checkNotNullParameter(gcUser, "$gcUser");
        binding.focus.setVisibility(4);
        F2fMatchContainer.DefaultImpls.focusSomebody$default(f2fMatchContainer, gcUser, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showRetryAlertDialog$lambda-6  reason: not valid java name */
    public static final void m642showRetryAlertDialog$lambda6(F2fMatchContainer f2fMatchContainer, Dialog dialog, boolean z10) {
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "$f2fMatchContainer");
        if (z10) {
            f2fMatchContainer.retryMatch();
            dialog.dismiss();
            return;
        }
        f2fMatchContainer.cancelMatchAndBackToPrepare();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public boolean diamondsEnoughToFilterGender(@NotNull F2fMatchActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        boolean k10 = p9.a.g().k();
        if (!k10) {
            p9.a.g().x(activity, 3);
        }
        return k10;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void f2fMoveToMini() {
        FaceToFaceFloatWindowManager.Companion companion = FaceToFaceFloatWindowManager.Companion;
        companion.getInstance().isFaceToFaceFloatShowing = true;
        BaseApplication.getInstance().registerActivityLifecycleCallbacks(companion.getInstance());
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.MatchingTipsFinder
    @NotNull
    public Integer[] findTips() {
        return new Integer[]{Integer.valueOf((int) R.string.match_tips2), Integer.valueOf((int) R.string.one_v_one_tip_first), Integer.valueOf((int) R.string.one_v_one_tip_second), Integer.valueOf((int) R.string.one_v_one_tip_third), Integer.valueOf((int) R.string.one_v_one_tip_forth), Integer.valueOf((int) R.string.one_v_one_tip_fifth)};
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    @NotNull
    public Fragment obtainChatFragment(@NotNull GCUser gcUser) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        return F2fChatMessageFragment.Companion.newInstance(gcUser);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void onActivityResult(@NotNull F2fMatchActivity f2fMatchActivity, int i9, int i10, @Nullable Intent intent) {
        Intrinsics.checkNotNullParameter(f2fMatchActivity, "f2fMatchActivity");
        ScreenShotHelper.getInstance().onActivityResult(f2fMatchActivity, i10, intent);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void onEnterF2f() {
        XMagicBeautyManager.Companion companion = XMagicBeautyManager.Companion;
        BaseApplication baseApplication = BaseApplication.getInstance();
        Intrinsics.checkNotNullExpressionValue(baseApplication, "getInstance()");
        BeautyItemCacheManager.setBeauty(7, companion.getInstance(baseApplication));
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void releaseMini() {
        FaceToFaceFloatWindowManager.Companion companion = FaceToFaceFloatWindowManager.Companion;
        companion.getInstance().isFaceToFaceFloatShowing = false;
        companion.getInstance().releaseMini();
        BaseApplication.getInstance().unregisterActivityLifecycleCallbacks(companion.getInstance());
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void report(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, @NotNull F2fMatchActivity f2fMatchActivity) {
        Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "f2fMatchRoomInfo");
        Intrinsics.checkNotNullParameter(f2fMatchActivity, "f2fMatchActivity");
        ReportController.report(f2fMatchActivity, f2fMatchRoomInfo.getUserId(), f2fMatchRoomInfo.getUserId(), ReportController.REPORT_TYPE_ONE_V_ONE);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void setUserInfo(@NotNull GCUser gcUser, @NotNull ViewGroup viewGroup) {
        LayoutF2fMatchedUserInfoBinding layoutF2fMatchedUserInfoBinding;
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.extra_info_area);
        if (viewGroup2.getTag() == null) {
            layoutF2fMatchedUserInfoBinding = LayoutF2fMatchedUserInfoBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup);
            viewGroup2.setTag(layoutF2fMatchedUserInfoBinding);
            Intrinsics.checkNotNullExpressionValue(layoutF2fMatchedUserInfoBinding, "{\n            LayoutF2fM…ew.tag = this }\n        }");
        } else {
            Object tag = viewGroup2.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.guochao.faceshow.databinding.LayoutF2fMatchedUserInfoBinding");
            layoutF2fMatchedUserInfoBinding = (LayoutF2fMatchedUserInfoBinding) tag;
        }
        layoutF2fMatchedUserInfoBinding.ageSexView.b(gcUser.getGender(), gcUser.getAge());
        layoutF2fMatchedUserInfoBinding.levelView.setLevel(gcUser.getLevel());
        layoutF2fMatchedUserInfoBinding.vipIndicator.setVipLevel(gcUser.getVipLevel());
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void setVideoChatUserInfo(@NotNull final F2fMatchModel.F2fMatchRoomInfo gcUser, @NotNull final ViewGroup viewGroup, @NotNull final F2fMatchContainer f2fMatchContainer) {
        final LayoutVideoChatF2fUserBinding layoutVideoChatF2fUserBinding;
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "f2fMatchContainer");
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.extra_info_area);
        if (viewGroup2.getTag() == null) {
            layoutVideoChatF2fUserBinding = LayoutVideoChatF2fUserBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup);
            viewGroup2.setTag(layoutVideoChatF2fUserBinding);
            Intrinsics.checkNotNullExpressionValue(layoutVideoChatF2fUserBinding, "{\n            LayoutVide…ew.tag = this }\n        }");
        } else {
            Object tag = viewGroup2.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.guochao.faceshow.databinding.LayoutVideoChatF2fUserBinding");
            layoutVideoChatF2fUserBinding = (LayoutVideoChatF2fUserBinding) tag;
        }
        layoutVideoChatF2fUserBinding.head.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.proxy.impl.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fProxyImpl.m639setVideoChatUserInfo$lambda3(viewGroup, gcUser, view);
            }
        });
        layoutVideoChatF2fUserBinding.ageSexView.b(gcUser.getGender(), gcUser.getAge());
        layoutVideoChatF2fUserBinding.levelView.setLevel(gcUser.getLevel());
        layoutVideoChatF2fUserBinding.vipIndicator.setVipLevel(gcUser.getVipLevel());
        layoutVideoChatF2fUserBinding.head.h(gcUser);
        layoutVideoChatF2fUserBinding.nickName.setText(gcUser.getNickName());
        layoutVideoChatF2fUserBinding.focus.setVisibility((gcUser.getAttentionStatus() == 0 || gcUser.getAttentionStatus() == -1) ? 0 : 4);
        layoutVideoChatF2fUserBinding.focus.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.proxy.impl.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fProxyImpl.m640setVideoChatUserInfo$lambda5(F2fMatchModel.F2fMatchRoomInfo.this, viewGroup, layoutVideoChatF2fUserBinding, f2fMatchContainer, view);
            }
        });
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void shouldCostFilterDiamonds() {
        p9.a.g().d(p9.a.g().i());
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void showForbiddenLiveDialogIfNeed(@NotNull final F2fMatchContainer f2fMatchContainer) {
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "f2fMatchContainer");
        if (i.u().s().getUserLiveBanned() == 0 || i.u().s().getLiveOperationVo() == null) {
            return;
        }
        String reasonMsgLang = i.u().s().getLiveOperationVo().getReasonMsgLang();
        if (TextUtils.isEmpty(reasonMsgLang)) {
            reasonMsgLang = i.u().s().getLiveOperationVo().getReasonMsg();
        }
        e eVar = new e((Activity) f2fMatchContainer, new e.a() { // from class: com.guochao.faceshow.component.f2fmatch.proxy.impl.F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1
            @Override // com.guochao.faceshow.views.e.a
            public void onClick(@Nullable Dialog dialog, boolean z10) {
                F2fMatchContainer f2fMatchContainer2 = F2fMatchContainer.this;
                Intrinsics.checkNotNull(f2fMatchContainer2, "null cannot be cast to non-null type android.app.Activity");
                ((Activity) f2fMatchContainer2).finish();
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* bridge */ /* synthetic */ void onCreate(e eVar2) {
                com.guochao.faceshow.views.d.a(this, eVar2);
            }
        });
        eVar.setCanceledOnTouchOutside(false);
        eVar.setCancelable(false);
        eVar.j();
        if (TextUtils.isEmpty(reasonMsgLang)) {
            reasonMsgLang = "";
        }
        eVar.f(reasonMsgLang);
        eVar.show();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.FilterSexDialogFinder
    @NotNull
    public Dialog showGenderFilterDialog(@NotNull Activity activity, int i9) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        FilterSexDialog e10 = FilterSexDialog.e(activity, i9);
        Intrinsics.checkNotNullExpressionValue(e10, "showFilterDialog(activity, matchGender)");
        return e10;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.PendantDialogFinder
    @NotNull
    public DialogFragment showPendantDialog(@NotNull FragmentManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        PendantDialog pendantDialog = new PendantDialog();
        pendantDialog.setType(7);
        pendantDialog.show(manager, "beauty_manager");
        return pendantDialog;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy
    public void showRetryAlertDialog(@NotNull Context context, @NotNull final F2fMatchContainer f2fMatchContainer) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(f2fMatchContainer, "f2fMatchContainer");
        e f10 = new e(context, new e.a() { // from class: com.guochao.faceshow.component.f2fmatch.proxy.impl.c
            @Override // com.guochao.faceshow.views.e.a
            public final void onClick(Dialog dialog, boolean z10) {
                F2fProxyImpl.m642showRetryAlertDialog$lambda6(F2fMatchContainer.this, dialog, z10);
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }).f(context.getString(R.string.not_appropriate_person));
        f10.e(context.getString(R.string.continue_));
        f10.show();
    }
}
