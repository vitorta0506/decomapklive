package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.os.Build;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroom.proxy.LiveRoomViewController;
import com.guochao.component.liveroomcommon.interfaces.GCLiveRoomModelProvider;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.utils.Contants;
import com.guochao.lib_service_center.userinfo.UserInfoCardProxy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J#\u0010\b\u001a\u0004\u0018\u00010\t2\u0019\b\u0002\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\fJ\u001f\u0010\r\u001a\u00020\u00072\u0017\u0010\n\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\fJ'\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0007H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "liveRoomViewController", "Lcom/guochao/component/liveroom/proxy/LiveRoomViewController;", "findController", "makeDialogLikeActivity", "", "requireGCLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "requireLiveRoomViewController", "showPeopleInfoCard", Contants.USER_ID, "", "voiceId", "seatIndex", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "test", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class BaseGCLiveRoomFragment extends GCCoreFragment {
    @Nullable
    private LiveRoomViewController liveRoomViewController;

    private final LiveRoomViewController findController() {
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
        Fragment fragment = this;
        do {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment != null) {
                fragment = parentFragment;
            } else {
                parentFragment = null;
            }
            if (parentFragment == null) {
                throw new IllegalStateException("Must attach to a root fragment which is a LiveRoomViewController");
            }
        } while (!(fragment instanceof LiveRoomViewController));
        return (LiveRoomViewController) fragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GCLiveRoomModel requireGCLiveRoomModel$default(BaseGCLiveRoomFragment baseGCLiveRoomFragment, Function1 function1, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 1) != 0) {
                function1 = new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.BaseGCLiveRoomFragment$requireGCLiveRoomModel$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GCLiveRoomModel gCLiveRoomModel) {
                        invoke2(gCLiveRoomModel);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull GCLiveRoomModel gCLiveRoomModel) {
                        Intrinsics.checkNotNullParameter(gCLiveRoomModel, "$this$null");
                    }
                };
            }
            return baseGCLiveRoomFragment.requireGCLiveRoomModel(function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requireGCLiveRoomModel");
    }

    private final void test() {
        requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.BaseGCLiveRoomFragment$test$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCLiveRoomModel gCLiveRoomModel) {
                invoke2(gCLiveRoomModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCLiveRoomModel requireGCLiveRoomModel) {
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
            }
        });
        requireGCLiveRoomModel$default(this, null, 1, null);
    }

    public final void makeDialogLikeActivity() {
        Window window;
        Window window2;
        Window window3;
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT > 29) {
            window.addFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
        } else {
            window.addFlags(67108864);
        }
        window.setLayout(-1, -1);
        window.getDecorView().setSystemUiVisibility(9472);
        window.setStatusBarColor(0);
        Dialog dialog2 = getDialog();
        WindowManager.LayoutParams attributes = (dialog2 == null || (window3 = dialog2.getWindow()) == null) ? null : window3.getAttributes();
        if (attributes != null) {
            attributes.dimAmount = 0.0f;
        }
        Dialog dialog3 = getDialog();
        Window window4 = dialog3 != null ? dialog3.getWindow() : null;
        if (window4 != null) {
            window4.setAttributes(attributes);
        }
        Dialog dialog4 = getDialog();
        if (dialog4 == null || (window2 = dialog4.getWindow()) == null) {
            return;
        }
        window2.addFlags(2);
    }

    @Nullable
    public final GCLiveRoomModel requireGCLiveRoomModel(@NotNull Function1<? super GCLiveRoomModel, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
        Fragment fragment = this;
        do {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment != null) {
                fragment = parentFragment;
            } else {
                parentFragment = null;
            }
            if (parentFragment == null) {
                return null;
            }
        } while (!(fragment instanceof GCLiveRoomModelProvider));
        GCLiveRoomModel currentGCLiveRoomModel = ((GCLiveRoomModelProvider) fragment).getCurrentGCLiveRoomModel();
        if (currentGCLiveRoomModel != null) {
            block.invoke(currentGCLiveRoomModel);
            return currentGCLiveRoomModel;
        }
        return null;
    }

    public final void requireLiveRoomViewController(@NotNull Function1<? super LiveRoomViewController, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        LiveRoomViewController liveRoomViewController = this.liveRoomViewController;
        if (liveRoomViewController == null) {
            liveRoomViewController = findController();
            this.liveRoomViewController = liveRoomViewController;
        }
        block.invoke(liveRoomViewController);
    }

    public final void showPeopleInfoCard(@NotNull final String userId, @Nullable final String str, @Nullable final Integer num) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.BaseGCLiveRoomFragment$showPeopleInfoCard$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCLiveRoomModel gCLiveRoomModel) {
                invoke2(gCLiveRoomModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCLiveRoomModel requireGCLiveRoomModel) {
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                UserInfoCardProxy.Companion companion = UserInfoCardProxy.Companion;
                FragmentActivity requireActivity = BaseGCLiveRoomFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                companion.start(requireActivity, userId, requireGCLiveRoomModel.getLiveRoomId(), str, num);
            }
        });
    }
}
