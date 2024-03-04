package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import butterknife.OnClick;
import com.google.android.play.core.review.ReviewInfo;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.systemassistant.act.SystemAssistantAct;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class ReviewDialog extends BaseDialogFragment {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements d5.a<ReviewInfo> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.android.play.core.review.a f20754a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f20755b;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.main.fragment.ReviewDialog$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0202a implements d5.a<Void> {
            C0202a() {
            }

            @Override // d5.a
            public void a(@NonNull @NotNull d5.d<Void> dVar) {
                if (dVar.g()) {
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.REVIEW_GOOGLE_BOX_SHOWED);
                    LogUtils.i("showStoreReview", "onComplete: " + dVar.g());
                    return;
                }
                ReviewDialog.R1(a.this.f20755b, 3);
            }
        }

        a(com.google.android.play.core.review.a aVar, FragmentActivity fragmentActivity) {
            this.f20754a = aVar;
            this.f20755b = fragmentActivity;
        }

        @Override // d5.a
        public void a(@NonNull @NotNull d5.d<ReviewInfo> dVar) {
            if (dVar.g()) {
                this.f20754a.b(this.f20755b, dVar.e()).a(new C0202a());
                return;
            }
            ReviewDialog.R1(this.f20755b, 3);
            LogUtils.e("showStoreReview", "onFailure: ", dVar.d());
        }
    }

    public static void Q1(FragmentActivity fragmentActivity) {
        if (SpUtils.getSelfInt("last_login_days", 1) < 2) {
            return;
        }
        long selfLong = SpUtils.getSelfLong("last_review_dialog_show", -1L);
        if (selfLong == -1 || System.currentTimeMillis() - selfLong > 15984000000L) {
            ServerConfig s10 = com.guochao.faceshow.aaspring.manager.i.u().s();
            if (s10.getAppEvaluateGuidePop() == 1) {
                return;
            }
            if (s10.getAppEvaluateGuidePop() == 2) {
                if (com.google.android.gms.common.a.m().g(fragmentActivity) == 0) {
                    S1(fragmentActivity);
                } else {
                    R1(fragmentActivity, 2);
                }
            } else if (s10.getAppEvaluateGuidePop() == 3) {
                R1(fragmentActivity, 1);
            }
            SpUtils.setSelfLong("last_review_dialog_show", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R1(FragmentActivity fragmentActivity, int i9) {
        Bundle bundle = new Bundle();
        if (i9 == 1) {
            bundle.putString("showFrom", "APP UI");
        } else if (i9 == 2) {
            bundle.putString("showFrom", "No Google Service");
        } else if (i9 == 3) {
            bundle.putString("showFrom", "Launch Google Failed");
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.REVIEW_UI_BOX, bundle);
        new ReviewDialog().show(fragmentActivity.getSupportFragmentManager(), "review_dialog");
    }

    private static void S1(FragmentActivity fragmentActivity) {
        EventTrackingUtils.getInstance().track(EventTrackingUtils.REVIEW_GOOGLE_BOX);
        com.google.android.play.core.review.a a10 = com.google.android.play.core.review.b.a(fragmentActivity);
        a10.a().a(new a(a10, fragmentActivity));
    }

    @OnClick
    public void click(View view) {
        if (getActivity() == null) {
            return;
        }
        switch (view.getId()) {
            case R.id.container /* 2131362388 */:
                dismissAllowingStateLoss();
                break;
            case R.id.content /* 2131362389 */:
                return;
            case R.id.feedback /* 2131362765 */:
                AssistantUserInfo.OfficialUserData officialUserData = new AssistantUserInfo.OfficialUserData();
                officialUserData.userId = Integer.parseInt(fb.a.c());
                SystemAssistantAct.A0(getActivity(), officialUserData, 2);
                EventTrackingUtils.getInstance().track(EventTrackingUtils.REVIEW_UI_BOX_OPINION);
                break;
            case R.id.go /* 2131362963 */:
                PackageUtils.goToMarket(getActivity(), getActivity().getPackageName());
                EventTrackingUtils.getInstance().track(EventTrackingUtils.REVIEW_UI_BOX_PRAISE);
                break;
        }
        dismissAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dialog_review;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getDialog() != null) {
            getDialog().getWindow().setLayout(-1, -1);
            getDialog().setCancelable(true);
            getDialog().setCanceledOnTouchOutside(true);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    @NotNull
    public Dialog onCreateDialog(@Nullable @org.jetbrains.annotations.Nullable Bundle bundle) {
        return createCenterDialog();
    }
}
