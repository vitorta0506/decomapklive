package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.aaspring.base.utils.ActivityExtendsKt;
import com.guochao.faceshow.aaspring.modulars.game.WebGameFragment;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.views.FaceCastWebView;
import com.guochao.faceshow.utils.WebViewUrlTools;
import com.guochao.faceshow.web.jsinterface.GameJsAction;
import java.io.Closeable;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p9.a;
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u0007¢\u0006\u0004\b \u0010!J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0007J\u0012\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u0018\u001a\u00020\u0006H\u0016R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;", "Ljava/io/Closeable;", "Lp9/a$e;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Ly7/e;", "event", "Landroid/app/Dialog;", "onCreateDialog", "", "getLayoutId", "currentDiamonds", "onDiamondsChanged", "currentCrystals", "onCrystalsChanged", "Landroid/view/View;", ViewHierarchyConstants.VIEW_KEY, "initView", "onDestroy", "", "getJSAction", "close", "Lcom/guochao/faceshow/web/jsinterface/GameJsAction;", "gameJsAction", "Lcom/guochao/faceshow/web/jsinterface/GameJsAction;", "getGameJsAction", "()Lcom/guochao/faceshow/web/jsinterface/GameJsAction;", "setGameJsAction", "(Lcom/guochao/faceshow/web/jsinterface/GameJsAction;)V", "<init>", "()V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class HourRankFragment extends WebViewFragment implements Closeable, a.e {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private GameJsAction gameJsAction;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/faceshow/aaspring/modulars/live/common/HourRankFragment;", "rankType", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final HourRankFragment newInstance(int i9) {
            HourRankFragment hourRankFragment = new HourRankFragment();
            Bundle bundle = new Bundle();
            bundle.putString("url", WebViewUrlTools.getLocalWebUrl(21) + "?rankType=" + i9);
            hourRankFragment.setArguments(bundle);
            return hourRankFragment;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: close$lambda-3  reason: not valid java name */
    public static final void m469close$lambda3(HourRankFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getParentFragmentManager().beginTransaction().remove(this$0).commitAllowingStateLoss();
    }

    @JvmStatic
    @NotNull
    public static final HourRankFragment newInstance(int i9) {
        return Companion.newInstance(i9);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.common.m
                @Override // java.lang.Runnable
                public final void run() {
                    HourRankFragment.m469close$lambda3(HourRankFragment.this);
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void event(@NotNull y7.e event) {
        FaceCastWebView faceCastWebView;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.d() || (faceCastWebView = this.mWebView) == null) {
            return;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Object[] objArr = new Object[2];
        objArr[0] = event.a();
        objArr[1] = event.c() ? "1" : "2";
        String format = String.format("setFoucesdH5(%s,%s)", Arrays.copyOf(objArr, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        faceCastWebView.s(format);
    }

    @Nullable
    public final GameJsAction getGameJsAction() {
        return this.gameJsAction;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment
    @NotNull
    public Object getJSAction() {
        d9.g e02;
        GameJsAction gameJsAction = this.gameJsAction;
        if (gameJsAction == null) {
            FragmentActivity activity = getActivity();
            BaseLiveActivity baseLiveActivity = activity instanceof BaseLiveActivity ? (BaseLiveActivity) activity : null;
            GameJsAction gameJsAction2 = new GameJsAction(this, WebGameFragment.LiveInfo.a((baseLiveActivity == null || (e02 = baseLiveActivity.e0()) == null) ? null : e02.getCurrentLiveRoom()), null, this.mWebView);
            this.gameJsAction = gameJsAction2;
            return gameJsAction2;
        }
        return gameJsAction;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_hour_rank;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        super.initView(view);
        p9.a.g().c(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        ActivityExtendsKt.safeRegisterEventBus(this);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog createBottomDialog = createBottomDialog();
        Intrinsics.checkNotNullExpressionValue(createBottomDialog, "createBottomDialog()");
        return createBottomDialog;
    }

    @Override // p9.a.e
    public void onCrystalsChanged(int i9) {
        if (this.mWebView == null || !isAdded()) {
            return;
        }
        FaceCastWebView faceCastWebView = this.mWebView;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("refreshCrystals(%s)", Arrays.copyOf(new Object[]{Integer.valueOf(i9)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        faceCastWebView.s(format);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.WebViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        p9.a.g().r(this);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        if (this.mWebView == null || !isAdded()) {
            return;
        }
        FaceCastWebView faceCastWebView = this.mWebView;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("refreshDiamonds(%s)", Arrays.copyOf(new Object[]{Integer.valueOf(i9)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        faceCastWebView.s(format);
    }

    public final void setGameJsAction(@Nullable GameJsAction gameJsAction) {
        this.gameJsAction = gameJsAction;
    }
}
