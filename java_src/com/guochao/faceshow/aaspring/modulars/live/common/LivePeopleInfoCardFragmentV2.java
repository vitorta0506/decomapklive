package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import butterknife.BindView;
import butterknife.OnClick;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.share.widget.ShareDialog;
import com.guochao.component.liveroom.model.GCVoiceLiveRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.manager.im.a;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.VoiceRoomGiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.VoiceRoomPeopleInfoModel;
import com.guochao.faceshow.aaspring.modulars.live.viewmodel.VoiceRoomPeopleCardInfoViewModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.Contants;
import com.guochao.lib_service_center.userinfo.UserInfoCardProxy;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.imsdk.BaseConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_USER_INFO_CARD)
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 V2\u00020\u00012\u00020\u0002:\u0001VB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010>\u001a\u00020?2\u0006\u0010!\u001a\u00020\"H\u0002J\b\u0010@\u001a\u00020)H\u0016J\b\u0010A\u001a\u00020?H\u0002J\u0012\u0010B\u001a\u00020?2\b\u0010C\u001a\u0004\u0018\u00010DH\u0016J\b\u0010E\u001a\u00020?H\u0016J\u0012\u0010F\u001a\u00020?2\b\u0010G\u001a\u0004\u0018\u00010\u0005H\u0017J\b\u0010H\u001a\u00020?H\u0016J\u0012\u0010I\u001a\u00020?2\b\u0010J\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010K\u001a\u00020?2\u0006\u0010G\u001a\u00020\u00052\b\u0010L\u001a\u0004\u0018\u00010MH\u0016J\b\u0010N\u001a\u00020?H\u0014J\u0010\u0010O\u001a\u00020?2\u0006\u0010!\u001a\u00020\"H\u0002J\u0018\u0010P\u001a\u00020?2\u0006\u0010Q\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"H\u0002J9\u0010R\u001a\u00020?2\u0006\u0010C\u001a\u00020S2\u0006\u0010-\u001a\u00020$2\u0006\u0010#\u001a\u00020$2\b\u0010;\u001a\u0004\u0018\u00010$2\b\u0010T\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0002\u0010UR\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u000f\u001a\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\tR\u001e\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0007\"\u0004\b \u0010\tR\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010#\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u000f\u001a\u0004\b%\u0010&R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u000f\u001a\u0004\b*\u0010+R\u001b\u0010-\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u000f\u001a\u0004\b.\u0010&R\u001e\u00100\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001b\u00106\u001a\u0002078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\u000f\u001a\u0004\b8\u00109R\u001b\u0010;\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\u000f\u001a\u0004\b<\u0010&¨\u0006W"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;", "Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy;", "()V", "bottomButtonArea", "Landroid/view/View;", "getBottomButtonArea", "()Landroid/view/View;", "setBottomButtonArea", "(Landroid/view/View;)V", "controllerViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getControllerViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "controllerViewModel$delegate", "Lkotlin/Lazy;", "focused", "", "fromSeat", "getFromSeat", "()Z", "fromSeat$delegate", "memberViewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "getMemberViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;", "memberViewModel$delegate", "micArea", "getMicArea", "setMicArea", "micStatus", "getMicStatus", "setMicStatus", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;", "roomId", "", "getRoomId", "()Ljava/lang/String;", "roomId$delegate", "seatIndex", "", "getSeatIndex", "()I", "seatIndex$delegate", Contants.USER_ID, "getUserId", "userId$delegate", "userRoleView", "Landroid/widget/TextView;", "getUserRoleView", "()Landroid/widget/TextView;", "setUserRoleView", "(Landroid/widget/TextView;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;", "viewModel$delegate", "voiceId", "getVoiceId", "voiceId$delegate", "checkPermission", "", "getLayoutId", "getUserInfo", "init", "context", "Landroid/content/Context;", "loadData2", "menuButtonClick", ViewHierarchyConstants.VIEW_KEY, "onResume", "onViewClicked", NotifyType.VIBRATE, "onViewCreated", "savedInstanceState", "Landroid/os/Bundle;", "refreshUserType", "setData", "showAdminArea", "show", "start", "Landroidx/fragment/app/FragmentActivity;", "seat", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LivePeopleInfoCardFragmentV2 extends LivePeopleInfoCardFragment implements UserInfoCardProxy {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @BindView
    public View bottomButtonArea;
    @NotNull
    private final Lazy controllerViewModel$delegate;
    private boolean focused;
    @NotNull
    private final Lazy fromSeat$delegate;
    @NotNull
    private final Lazy memberViewModel$delegate;
    @BindView
    public View micArea;
    @BindView
    public View micStatus;
    @Nullable
    private VoiceRoomPeopleInfoModel model;
    @NotNull
    private final Lazy roomId$delegate;
    @NotNull
    private final Lazy seatIndex$delegate;
    @NotNull
    private final Lazy userId$delegate;
    @BindView
    public TextView userRoleView;
    @NotNull
    private final Lazy viewModel$delegate;
    @NotNull
    private final Lazy voiceId$delegate;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;", "roomId", "", Contants.USER_ID, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LivePeopleInfoCardFragmentV2 newInstance(@NotNull String roomId, @NotNull String userId) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Intrinsics.checkNotNullParameter(userId, "userId");
            LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2 = new LivePeopleInfoCardFragmentV2();
            Bundle bundle = new Bundle();
            bundle.putString("roomId", roomId);
            bundle.putString(Contants.USER_ID, userId);
            livePeopleInfoCardFragmentV2.setArguments(bundle);
            return livePeopleInfoCardFragmentV2;
        }
    }

    public LivePeopleInfoCardFragmentV2() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomPeopleCardInfoViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomPeopleCardInfoViewModel invoke() {
                FragmentActivity requireActivity = LivePeopleInfoCardFragmentV2.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomPeopleCardInfoViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomPeopleCardInfoViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$controllerViewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = LivePeopleInfoCardFragmentV2.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.controllerViewModel$delegate = lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<VoiceRoomMemberViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$special$$inlined$lazyViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomMemberViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, VoiceRoomMemberViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(VoiceRoomMemberViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel");
                return (VoiceRoomMemberViewModel) baseViewModel;
            }
        });
        this.memberViewModel$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$roomId$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return LivePeopleInfoCardFragmentV2.this.requireArguments().getString("roomId", "");
            }
        });
        this.roomId$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$userId$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return LivePeopleInfoCardFragmentV2.this.requireArguments().getString(Contants.USER_ID, "");
            }
        });
        this.userId$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<String>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$voiceId$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return LivePeopleInfoCardFragmentV2.this.requireArguments().getString("voiceId", "");
            }
        });
        this.voiceId$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Integer>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$seatIndex$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(LivePeopleInfoCardFragmentV2.this.requireArguments().getInt("seatIndex", -1));
            }
        });
        this.seatIndex$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<Boolean>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$fromSeat$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Boolean invoke() {
                return Boolean.valueOf(LivePeopleInfoCardFragmentV2.this.requireArguments().getBoolean("seat", false));
            }
        });
        this.fromSeat$delegate = lazy8;
    }

    private final void checkPermission(VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel) {
        LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
        Intrinsics.checkNotNull(currentLiveRoom, "null cannot be cast to non-null type com.guochao.component.liveroom.model.GCVoiceLiveRoomModel");
        GCVoiceLiveRoomModel gCVoiceLiveRoomModel = (GCVoiceLiveRoomModel) currentLiveRoom;
        int userRoles = voiceRoomPeopleInfoModel.getUserRoles();
        if (userRoles == 1) {
            TextView userRoleView = getUserRoleView();
            userRoleView.setText(getString(R.string.voice_room_host));
            userRoleView.setVisibility(0);
            Drawable drawable = ContextCompat.getDrawable(userRoleView.getContext(), R.drawable.ic_voice_room_visitor_role_owner);
            if (drawable != null) {
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            } else {
                drawable = null;
            }
            userRoleView.setCompoundDrawablesRelative(drawable, null, null, null);
            showAdminArea(false, voiceRoomPeopleInfoModel);
        } else if (userRoles == 10) {
            TextView userRoleView2 = getUserRoleView();
            userRoleView2.setText(getString(R.string.live_admin));
            userRoleView2.setVisibility(0);
            Drawable drawable2 = ContextCompat.getDrawable(userRoleView2.getContext(), R.drawable.ic_voice_room_visitor_role_admin);
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            } else {
                drawable2 = null;
            }
            userRoleView2.setCompoundDrawablesRelative(drawable2, null, null, null);
            if (gCVoiceLiveRoomModel.isVoiceRoomOwner()) {
                showAdminArea(true, voiceRoomPeopleInfoModel);
            } else {
                showAdminArea(false, voiceRoomPeopleInfoModel);
            }
        } else if (userRoles != 20) {
            getUserRoleView().setVisibility(8);
            if (!gCVoiceLiveRoomModel.isVoiceRoomOwner() && !gCVoiceLiveRoomModel.isVoiceRoomAdministrator()) {
                showAdminArea(false, voiceRoomPeopleInfoModel);
            } else {
                showAdminArea(true, voiceRoomPeopleInfoModel);
            }
        } else {
            TextView userRoleView3 = getUserRoleView();
            userRoleView3.setText(getString(R.string.voice_room_members));
            userRoleView3.setVisibility(0);
            Drawable drawable3 = ContextCompat.getDrawable(userRoleView3.getContext(), R.drawable.ic_voice_room_visitor_role_member);
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), drawable3.getIntrinsicHeight());
            } else {
                drawable3 = null;
            }
            userRoleView3.setCompoundDrawablesRelative(drawable3, null, null, null);
            if (!gCVoiceLiveRoomModel.isVoiceRoomOwner() && !gCVoiceLiveRoomModel.isVoiceRoomAdministrator()) {
                showAdminArea(false, voiceRoomPeopleInfoModel);
            } else {
                showAdminArea(true, voiceRoomPeopleInfoModel);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomSeatControllerViewModel getControllerViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.controllerViewModel$delegate.getValue();
    }

    private final boolean getFromSeat() {
        return ((Boolean) this.fromSeat$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomMemberViewModel getMemberViewModel() {
        return (VoiceRoomMemberViewModel) this.memberViewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getRoomId() {
        Object value = this.roomId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-roomId>(...)");
        return (String) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getSeatIndex() {
        return ((Number) this.seatIndex$delegate.getValue()).intValue();
    }

    private final String getUserId() {
        Object value = this.userId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-userId>(...)");
        return (String) value;
    }

    private final void getUserInfo() {
        getViewModel().loadUserInfo(getRoomId(), getUserId(), new LivePeopleInfoCardFragmentV2$getUserInfo$1(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomPeopleCardInfoViewModel getViewModel() {
        return (VoiceRoomPeopleCardInfoViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getVoiceId() {
        Object value = this.voiceId$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-voiceId>(...)");
        return (String) value;
    }

    @JvmStatic
    @NotNull
    public static final LivePeopleInfoCardFragmentV2 newInstance(@NotNull String str, @NotNull String str2) {
        return Companion.newInstance(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setData(final VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel) {
        boolean z10 = false;
        this.userInfoLayout.setVisibility(0);
        this.model = voiceRoomPeopleInfoModel;
        this.mUserName = voiceRoomPeopleInfoModel.getNickName();
        this.mUserNameView.setText(voiceRoomPeopleInfoModel.getNickName());
        TextView textView = this.mUserIdView;
        textView.setText("ID:" + voiceRoomPeopleInfoModel.getUserId());
        this.mFCoins.setText(String.valueOf(voiceRoomPeopleInfoModel.getBCount()));
        this.mFansCount.setText(String.valueOf(voiceRoomPeopleInfoModel.getFansNum()));
        this.mSentCount.setText(String.valueOf(voiceRoomPeopleInfoModel.getDiamondCount()));
        this.mAvatarView.h(voiceRoomPeopleInfoModel);
        new UserCenterSexLevel(this.mGenderAndSexView, false, false).a(voiceRoomPeopleInfoModel);
        String userId = voiceRoomPeopleInfoModel.getUserId();
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        if (Intrinsics.areEqual(userId, current != null ? current.getUserId() : null)) {
            this.cmdArea.setVisibility(8);
            getBottomButtonArea().setVisibility(8);
            return;
        }
        getBottomButtonArea().setVisibility(0);
        z10 = (voiceRoomPeopleInfoModel.getAttentionStatus() == 1 || voiceRoomPeopleInfoModel.getAttentionStatus() == 2) ? true : true;
        this.focused = z10;
        setFocused(z10);
        checkPermission(voiceRoomPeopleInfoModel);
        View focus = this.focus;
        Intrinsics.checkNotNullExpressionValue(focus, "focus");
        ViewExtendsKt.onClick$default(focus, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LivePeopleInfoCardFragmentV2.m470setData$lambda1(LivePeopleInfoCardFragmentV2.this, voiceRoomPeopleInfoModel, view);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setData$lambda-1  reason: not valid java name */
    public static final void m470setData$lambda1(final LivePeopleInfoCardFragmentV2 this$0, VoiceRoomPeopleInfoModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        if (this$0.focused) {
            this$0.setFocused(false);
            ib.b.a(model.getUserId(), this$0.requireActivity(), new hb.b<String>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$setData$2$1
                @Override // hb.b
                public void onFail(@Nullable String str) {
                    hb.a.a(this, str);
                    LivePeopleInfoCardFragmentV2.this.setFocused(true);
                }

                @Override // hb.b
                public void onResponse(@Nullable String str) {
                    LivePeopleInfoCardFragmentV2.this.focused = false;
                }
            });
            return;
        }
        this$0.setFocused(true);
        ib.b.b(model.getUserId(), FriendFromSource.LIVE, this$0.requireActivity(), new hb.b<String>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$setData$2$2
            @Override // hb.b
            public void onFail(@Nullable String str) {
                hb.a.a(this, str);
                LivePeopleInfoCardFragmentV2.this.setFocused(false);
            }

            @Override // hb.b
            public void onResponse(@Nullable String str) {
                LivePeopleInfoCardFragmentV2.this.focused = true;
            }
        });
    }

    private final void showAdminArea(boolean z10, final VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel) {
        View findViewById;
        View findViewById2;
        View findViewById3;
        View findViewById4;
        if (z10) {
            LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
            Intrinsics.checkNotNull(currentLiveRoom, "null cannot be cast to non-null type com.guochao.component.liveroom.model.GCVoiceLiveRoomModel");
            GCVoiceLiveRoomModel gCVoiceLiveRoomModel = (GCVoiceLiveRoomModel) currentLiveRoom;
            this.cmdArea.setVisibility(0);
            final VoiceRoomUserOnSeatModel findUserOnSeat = getControllerViewModel().findUserOnSeat(voiceRoomPeopleInfoModel.getUserId());
            if (findUserOnSeat != null) {
                getMicArea().setVisibility(0);
                View view = getView();
                if (view != null && (findViewById4 = view.findViewById(R.id.mic)) != null) {
                    ViewExtendsKt.onClick$default(findViewById4, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.o
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            LivePeopleInfoCardFragmentV2.m473showAdminArea$lambda8(LivePeopleInfoCardFragmentV2.this, findUserOnSeat, view2);
                        }
                    }, 1, null);
                }
            }
            if (gCVoiceLiveRoomModel.isVoiceRoomOwner()) {
                this.adminArea.setVisibility(0);
                View view2 = getView();
                if (view2 != null && (findViewById3 = view2.findViewById(R.id.admin)) != null) {
                    ViewExtendsKt.onClick$default(findViewById3, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.s
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view3) {
                            LivePeopleInfoCardFragmentV2.m474showAdminArea$lambda9(VoiceRoomPeopleInfoModel.this, this, view3);
                        }
                    }, 1, null);
                }
            }
            this.muteArea.setVisibility(0);
            View view3 = getView();
            if (view3 != null && (findViewById2 = view3.findViewById(R.id.mute)) != null) {
                ViewExtendsKt.onClick$default(findViewById2, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.q
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view4) {
                        LivePeopleInfoCardFragmentV2.m471showAdminArea$lambda10(LivePeopleInfoCardFragmentV2.this, voiceRoomPeopleInfoModel, view4);
                    }
                }, 1, null);
            }
            this.kickArea.setVisibility(0);
            View view4 = getView();
            if (view4 == null || (findViewById = view4.findViewById(R.id.kick)) == null) {
                return;
            }
            ViewExtendsKt.onClick$default(findViewById, 0L, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    LivePeopleInfoCardFragmentV2.m472showAdminArea$lambda11(LivePeopleInfoCardFragmentV2.this, voiceRoomPeopleInfoModel, view5);
                }
            }, 1, null);
            return;
        }
        this.cmdArea.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showAdminArea$lambda-10  reason: not valid java name */
    public static final void m471showAdminArea$lambda10(final LivePeopleInfoCardFragmentV2 this$0, final VoiceRoomPeopleInfoModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.dismissAllowingStateLoss();
        if (model.isBan() == 0) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = this$0.getString(R.string.voice_room_tips_mute_somebody);
            Intrinsics.checkNotNullExpressionValue(string, "getString(com.guochao.co…_room_tips_mute_somebody)");
            GCDialog.Builder onClick$default = GCDialog.Builder.onClick$default(builder.contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$1

                /* JADX INFO: Access modifiers changed from: package-private */
                @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$1$1", f = "LivePeopleInfoCardFragmentV2.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$1$1  reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {
                    /* synthetic */ int I$0;
                    int label;
                    final /* synthetic */ LivePeopleInfoCardFragmentV2 this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.this$0 = livePeopleInfoCardFragmentV2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                        anonymousClass1.I$0 = ((Number) obj).intValue();
                        return anonymousClass1;
                    }

                    @Nullable
                    public final Object invoke(int i9, @Nullable Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(Integer.valueOf(i9), continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: invoke */
                    public /* bridge */ /* synthetic */ Object mo1invoke(Integer num, Continuation<? super Unit> continuation) {
                        return invoke(num.intValue(), continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label == 0) {
                            ResultKt.throwOnFailure(obj);
                            int i9 = this.I$0;
                            this.this$0.dismissProgressDialog();
                            if (i9 == 1) {
                                this.this$0.dismissAllowingStateLoss();
                                ToastUtils.showToast$default(null, R.string.set_success, 0, 4, null);
                            } else if (i9 == 5001) {
                                ToastUtils.showToast$default(null, R.string.permission_rejection, 0, 4, null);
                            }
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomPeopleCardInfoViewModel viewModel;
                    String roomId;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    GCCoreFragment.showProgressDialog$default(LivePeopleInfoCardFragmentV2.this, null, 1, null);
                    onClick.dismiss();
                    viewModel = LivePeopleInfoCardFragmentV2.this.getViewModel();
                    roomId = LivePeopleInfoCardFragmentV2.this.getRoomId();
                    viewModel.forbiddenTalk(roomId, model.getUserId(), new AnonymousClass1(LivePeopleInfoCardFragmentV2.this, null));
                }
            }, 1, null);
            Context requireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            onClick$default.build(requireContext).show();
            return;
        }
        GCDialog.Builder builder2 = new GCDialog.Builder();
        String string2 = this$0.getString(R.string.livecanclemutedialog);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(com.guochao.co…ing.livecanclemutedialog)");
        GCDialog.Builder onClick$default2 = GCDialog.Builder.onClick$default(builder2.contentText(string2), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$2

            /* JADX INFO: Access modifiers changed from: package-private */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$2$1", f = "LivePeopleInfoCardFragmentV2.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$3$2$1  reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {
                /* synthetic */ int I$0;
                int label;
                final /* synthetic */ LivePeopleInfoCardFragmentV2 this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = livePeopleInfoCardFragmentV2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                    anonymousClass1.I$0 = ((Number) obj).intValue();
                    return anonymousClass1;
                }

                @Nullable
                public final Object invoke(int i9, @Nullable Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(Integer.valueOf(i9), continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: invoke */
                public /* bridge */ /* synthetic */ Object mo1invoke(Integer num, Continuation<? super Unit> continuation) {
                    return invoke(num.intValue(), continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label == 0) {
                        ResultKt.throwOnFailure(obj);
                        int i9 = this.I$0;
                        this.this$0.dismissProgressDialog();
                        if (i9 == 1) {
                            this.this$0.dismissAllowingStateLoss();
                            ToastUtils.showToast$default(null, R.string.set_success, 0, 4, null);
                        } else if (i9 == 5001) {
                            ToastUtils.showToast$default(null, R.string.permission_rejection, 0, 4, null);
                        }
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                invoke2(gCDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCDialog onClick) {
                VoiceRoomPeopleCardInfoViewModel viewModel;
                String roomId;
                Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                GCCoreFragment.showProgressDialog$default(LivePeopleInfoCardFragmentV2.this, null, 1, null);
                onClick.dismiss();
                viewModel = LivePeopleInfoCardFragmentV2.this.getViewModel();
                roomId = LivePeopleInfoCardFragmentV2.this.getRoomId();
                viewModel.unforbiddenTalk(roomId, model.getUserId(), new AnonymousClass1(LivePeopleInfoCardFragmentV2.this, null));
            }
        }, 1, null);
        Context requireContext2 = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
        onClick$default2.build(requireContext2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showAdminArea$lambda-11  reason: not valid java name */
    public static final void m472showAdminArea$lambda11(final LivePeopleInfoCardFragmentV2 this$0, final VoiceRoomPeopleInfoModel model, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(model, "$model");
        this$0.dismissAllowingStateLoss();
        if (model.isKick() == 0) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = this$0.getString(R.string.voice_room_tips_kick_somebody);
            Intrinsics.checkNotNullExpressionValue(string, "getString(com.guochao.co…_room_tips_kick_somebody)");
            GCDialog.Builder onClick$default = GCDialog.Builder.onClick$default(builder.contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$4$1

                /* JADX INFO: Access modifiers changed from: package-private */
                @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$4$1$1", f = "LivePeopleInfoCardFragmentV2.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$4$1$1  reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {
                    /* synthetic */ int I$0;
                    int label;
                    final /* synthetic */ LivePeopleInfoCardFragmentV2 this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.this$0 = livePeopleInfoCardFragmentV2;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                        anonymousClass1.I$0 = ((Number) obj).intValue();
                        return anonymousClass1;
                    }

                    @Nullable
                    public final Object invoke(int i9, @Nullable Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(Integer.valueOf(i9), continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: invoke */
                    public /* bridge */ /* synthetic */ Object mo1invoke(Integer num, Continuation<? super Unit> continuation) {
                        return invoke(num.intValue(), continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        if (this.label == 0) {
                            ResultKt.throwOnFailure(obj);
                            int i9 = this.I$0;
                            this.this$0.dismissProgressDialog();
                            if (i9 == 1) {
                                ToastUtils.showToast$default(null, R.string.set_success, 0, 4, null);
                                this.this$0.dismissAllowingStateLoss();
                            } else if (i9 == 5001) {
                                ToastUtils.showToast$default(null, R.string.permission_rejection, 0, 4, null);
                            }
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomPeopleCardInfoViewModel viewModel;
                    String roomId;
                    String voiceId;
                    int seatIndex;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    GCCoreFragment.showProgressDialog$default(LivePeopleInfoCardFragmentV2.this, null, 1, null);
                    onClick.dismiss();
                    viewModel = LivePeopleInfoCardFragmentV2.this.getViewModel();
                    roomId = LivePeopleInfoCardFragmentV2.this.getRoomId();
                    String userId = model.getUserId();
                    voiceId = LivePeopleInfoCardFragmentV2.this.getVoiceId();
                    seatIndex = LivePeopleInfoCardFragmentV2.this.getSeatIndex();
                    viewModel.kick(roomId, userId, voiceId, Integer.valueOf(seatIndex), new AnonymousClass1(LivePeopleInfoCardFragmentV2.this, null));
                }
            }, 1, null);
            Context requireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            onClick$default.build(requireContext).show();
            return;
        }
        ToastUtils.showToast$default(null, R.string.voice_room_already_chick, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showAdminArea$lambda-8  reason: not valid java name */
    public static final void m473showAdminArea$lambda8(final LivePeopleInfoCardFragmentV2 this$0, final VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GCDialog.Builder builder = new GCDialog.Builder();
        String string = this$0.getString(R.string.voice_room_tips_leave_mic_somebody);
        Intrinsics.checkNotNullExpressionValue(string, "getString(com.guochao.co…_tips_leave_mic_somebody)");
        GCDialog.Builder onClick$default = GCDialog.Builder.onClick$default(builder.contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$1$1

            /* JADX INFO: Access modifiers changed from: package-private */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$1$1$1", f = "LivePeopleInfoCardFragmentV2.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$1$1$1  reason: invalid class name */
            /* loaded from: classes3.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
                final /* synthetic */ GCDialog $this_onClick;
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ LivePeopleInfoCardFragmentV2 this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, GCDialog gCDialog, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = livePeopleInfoCardFragmentV2;
                    this.$this_onClick = gCDialog;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$this_onClick, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label == 0) {
                        ResultKt.throwOnFailure(obj);
                        if (((Response) this.L$0).isSuccessful()) {
                            this.this$0.dismissAllowingStateLoss();
                            this.this$0.getMicArea().setVisibility(8);
                        } else {
                            this.this$0.showToast(R.string.voice_room_tips_close_micro_5001);
                        }
                        this.$this_onClick.dismiss();
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                invoke2(gCDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCDialog onClick) {
                VoiceRoomSeatControllerViewModel controllerViewModel;
                Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                controllerViewModel = LivePeopleInfoCardFragmentV2.this.getControllerViewModel();
                controllerViewModel.kickUser(voiceRoomUserOnSeatModel, new AnonymousClass1(LivePeopleInfoCardFragmentV2.this, onClick, null));
            }
        }, 1, null);
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        onClick$default.build(requireContext).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showAdminArea$lambda-9  reason: not valid java name */
    public static final void m474showAdminArea$lambda9(final VoiceRoomPeopleInfoModel model, final LivePeopleInfoCardFragmentV2 this$0, View view) {
        Intrinsics.checkNotNullParameter(model, "$model");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (model.getUserRoles() == 30) {
            this$0.showToast(R.string.voice_room_tips_only_member_can_be_admin);
        } else if (model.getUserRoles() == 10) {
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = this$0.getString(R.string.voice_room_tips_no_admin_somebody);
            Intrinsics.checkNotNullExpressionValue(string, "getString(com.guochao.co…m_tips_no_admin_somebody)");
            GCDialog.Builder onClick$default = GCDialog.Builder.onClick$default(builder.contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomMemberViewModel memberViewModel;
                    String roomId;
                    ArrayList<String> arrayListOf;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    GCCoreFragment.showProgressDialog$default(LivePeopleInfoCardFragmentV2.this, null, 1, null);
                    onClick.dismiss();
                    memberViewModel = LivePeopleInfoCardFragmentV2.this.getMemberViewModel();
                    roomId = LivePeopleInfoCardFragmentV2.this.getRoomId();
                    String[] strArr = new String[1];
                    String userId = model.getUserId();
                    if (userId == null) {
                        userId = "";
                    }
                    strArr[0] = userId;
                    arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(strArr);
                    final LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2 = LivePeopleInfoCardFragmentV2.this;
                    Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$1.1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(boolean z10) {
                            LivePeopleInfoCardFragmentV2.this.showToast(R.string.set_success);
                            LivePeopleInfoCardFragmentV2.this.dismissProgressDialog();
                            LivePeopleInfoCardFragmentV2.this.dismissAllowingStateLoss();
                        }
                    };
                    final LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV22 = LivePeopleInfoCardFragmentV2.this;
                    memberViewModel.adminRemove(roomId, arrayListOf, GCValueCallbackKt.callbackOnLifecycle(livePeopleInfoCardFragmentV2, function1, new Function2<Integer, String, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$1.2
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: invoke */
                        public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                            invoke(num.intValue(), str);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i9, @Nullable String str) {
                            LivePeopleInfoCardFragmentV2.this.dismissProgressDialog();
                        }
                    }));
                }
            }, 1, null);
            Context requireContext = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
            onClick$default.build(requireContext).show();
        } else {
            GCDialog.Builder builder2 = new GCDialog.Builder();
            String string2 = this$0.getString(R.string.voice_room_tips_admin_somebody);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(com.guochao.co…room_tips_admin_somebody)");
            GCDialog.Builder onClick$default2 = GCDialog.Builder.onClick$default(builder2.contentText(string2), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick) {
                    VoiceRoomMemberViewModel memberViewModel;
                    String roomId;
                    ArrayList<String> arrayListOf;
                    Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                    GCCoreFragment.showProgressDialog$default(LivePeopleInfoCardFragmentV2.this, null, 1, null);
                    onClick.dismiss();
                    memberViewModel = LivePeopleInfoCardFragmentV2.this.getMemberViewModel();
                    roomId = LivePeopleInfoCardFragmentV2.this.getRoomId();
                    String[] strArr = new String[1];
                    String userId = model.getUserId();
                    if (userId == null) {
                        userId = "";
                    }
                    strArr[0] = userId;
                    arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(strArr);
                    final LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2 = LivePeopleInfoCardFragmentV2.this;
                    Function1<Boolean, Unit> function1 = new Function1<Boolean, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$2.1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                            invoke(bool.booleanValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(boolean z10) {
                            LivePeopleInfoCardFragmentV2.this.showToast(R.string.set_success);
                            LivePeopleInfoCardFragmentV2.this.dismissProgressDialog();
                            LivePeopleInfoCardFragmentV2.this.dismissAllowingStateLoss();
                        }
                    };
                    final LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV22 = LivePeopleInfoCardFragmentV2.this;
                    memberViewModel.adminAdd(roomId, arrayListOf, GCValueCallbackKt.callbackOnLifecycle(livePeopleInfoCardFragmentV2, function1, new Function2<Integer, String, Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragmentV2$showAdminArea$2$2.2
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: invoke */
                        public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                            invoke(num.intValue(), str);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i9, @Nullable String str) {
                            LivePeopleInfoCardFragmentV2.this.dismissProgressDialog();
                            switch (i9) {
                                case 50001:
                                    ToastUtils.showToast$default(LivePeopleInfoCardFragmentV2.this.getActivity(), R.string.permission_rejection, 0, 4, null);
                                    return;
                                case BaseConstants.ERR_SVR_CONV_INVALID_PARAMETERS /* 50002 */:
                                    FragmentActivity activity = LivePeopleInfoCardFragmentV2.this.getActivity();
                                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                                    String string3 = LivePeopleInfoCardFragmentV2.this.getString(R.string.voice_room_set_num_admin);
                                    Intrinsics.checkNotNullExpressionValue(string3, "getString(com.guochao.co…voice_room_set_num_admin)");
                                    String format = String.format(string3, Arrays.copyOf(new Object[]{"3"}, 1));
                                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                                    ToastUtils.showToast$default(activity, format, 0, 0, 12, null);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }));
                }
            }, 1, null);
            Context requireContext2 = this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
            onClick$default2.build(requireContext2).show();
        }
    }

    @NotNull
    public final View getBottomButtonArea() {
        View view = this.bottomButtonArea;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bottomButtonArea");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_people_card_dialog_v2;
    }

    @NotNull
    public final View getMicArea() {
        View view = this.micArea;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("micArea");
        return null;
    }

    @NotNull
    public final View getMicStatus() {
        View view = this.micStatus;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("micStatus");
        return null;
    }

    @NotNull
    public final TextView getUserRoleView() {
        TextView textView = this.userRoleView;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userRoleView");
        return null;
    }

    @Override // com.alibaba.android.arouter.facade.template.IProvider
    public void init(@Nullable Context context) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment
    public void loadData2() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment
    @OnClick
    public void menuButtonClick(@Nullable View view) {
        VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel = this.model;
        if (voiceRoomPeopleInfoModel == null) {
            return;
        }
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.people_card_chat) {
            String userId = voiceRoomPeopleInfoModel.getUserId();
            if (userId == null) {
                userId = "";
            }
            String nickName = voiceRoomPeopleInfoModel.getNickName();
            KotlinBridge.startChatFromLiveRoom(this, userId, nickName != null ? nickName : "");
        } else if (valueOf != null && valueOf.intValue() == R.id.people_card_at_btn) {
            d9.g gVar = this.mILiveRoomManager;
            String userId2 = voiceRoomPeopleInfoModel.getUserId();
            if (userId2 == null) {
                userId2 = "";
            }
            String nickName2 = voiceRoomPeopleInfoModel.getNickName();
            gVar.onAtSomebody(userId2, nickName2 != null ? nickName2 : "");
        } else if (valueOf != null && valueOf.intValue() == R.id.send_gift) {
            FragmentActivity activity = getActivity();
            WatchLiveRoomActivity watchLiveRoomActivity = activity instanceof WatchLiveRoomActivity ? (WatchLiveRoomActivity) activity : null;
            a.g gVar2 = watchLiveRoomActivity != null ? watchLiveRoomActivity.f18075l : null;
            WatcherLiveRoomFragment watcherLiveRoomFragment = gVar2 instanceof WatcherLiveRoomFragment ? (WatcherLiveRoomFragment) gVar2 : null;
            if (watcherLiveRoomFragment != null) {
                VoiceRoomGiftFragment.Companion.newInstance(getRoomId(), this.model, 16, getControllerViewModel().getVoiceId()).show(watcherLiveRoomFragment.f18532y.getChildFragmentManager(), "gift");
            }
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment, d9.e
    public /* bridge */ /* synthetic */ void onPlayMusicAnim(String str, String str2, int i9) {
        d9.d.a(this, str, str2, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getUserInfo();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment
    public void onViewClicked(@Nullable View view) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        this.mUserId = getUserId();
        if (!getFromSeat()) {
            getMicStatus().setVisibility(8);
        } else {
            getMicStatus().setVisibility(0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment
    protected void refreshUserType() {
    }

    public final void setBottomButtonArea(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.bottomButtonArea = view;
    }

    public final void setMicArea(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.micArea = view;
    }

    public final void setMicStatus(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.micStatus = view;
    }

    public final void setUserRoleView(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.userRoleView = textView;
    }

    @Override // com.guochao.lib_service_center.userinfo.UserInfoCardProxy
    public void start(@NotNull FragmentActivity context, @NotNull String userId, @NotNull String roomId, @Nullable String str, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Bundle bundle = new Bundle();
        bundle.putString("roomId", roomId);
        bundle.putString(Contants.USER_ID, userId);
        bundle.putString("voiceId", str);
        if (num != null) {
            bundle.putInt("seatIndex", num.intValue());
        }
        setArguments(bundle);
        show(context.getSupportFragmentManager(), ShareDialog.WEB_SHARE_DIALOG);
    }
}
