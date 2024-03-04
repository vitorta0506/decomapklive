package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import butterknife.OnClick;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.PublishUgcActivity;
import com.guochao.faceshow.aaspring.utils.ActivityTransitionAnimUtils;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FragmentUtil;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.Arrays;
import java.util.List;
@Deprecated
/* loaded from: classes3.dex */
public class MainMenuDialogFragment extends BaseFragment {

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f20735b;

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f20736c;

    /* renamed from: a  reason: collision with root package name */
    e f20737a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends BasePermissionObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f20738a;

        a(FragmentActivity fragmentActivity) {
            this.f20738a = fragmentActivity;
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            MainMenuDialogFragment.Q1(this.f20738a, 101, Arrays.asList(MainMenuDialogFragment.f20736c), false);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(this.f20738a) && !PhoneUtils.isCameraCanUse(this.f20738a)) {
                FragmentActivity fragmentActivity = this.f20738a;
                MainMenuDialogFragment.S1(fragmentActivity, fragmentActivity.getString(R.string.check_camera));
                return;
            }
            Intent intent = new Intent(this.f20738a, LiveBroadCastActivity.class);
            intent.putExtra("IDENTITY_TYPE_KEY", 0);
            ActivityTransitionAnimUtils.startActivityByDownToUp(this.f20738a, intent);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            MainMenuDialogFragment.Q1(this.f20738a, 101, Arrays.asList(MainMenuDialogFragment.f20736c), true);
        }
    }

    /* loaded from: classes3.dex */
    class b extends BasePermissionObserver {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(MainMenuDialogFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), false);
            MainMenuDialogFragment.this.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(MainMenuDialogFragment.this.getContext()) && !PhoneUtils.isCameraCanUse(MainMenuDialogFragment.this.getContext())) {
                MainMenuDialogFragment.S1(MainMenuDialogFragment.this.getContext(), MainMenuDialogFragment.this.getContext().getString(R.string.check_camera));
                return;
            }
            MainMenuDialogFragment.this.dismiss();
            if (MainMenuDialogFragment.this.getActivity() != null) {
                Intent intent = new Intent(MainMenuDialogFragment.this.getActivity(), LiveBroadCastActivity.class);
                intent.putExtra("IDENTITY_TYPE_KEY", 0);
                ActivityTransitionAnimUtils.startActivityByDownToUp(MainMenuDialogFragment.this, intent);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(MainMenuDialogFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), true);
        }
    }

    /* loaded from: classes3.dex */
    class c extends BasePermissionObserver {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(MainMenuDialogFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), false);
            MainMenuDialogFragment.this.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(MainMenuDialogFragment.this.getContext()) && !PhoneUtils.isCameraCanUse(MainMenuDialogFragment.this.getContext())) {
                MainMenuDialogFragment.S1(MainMenuDialogFragment.this.getContext(), MainMenuDialogFragment.this.getContext().getString(R.string.check_camera));
                return;
            }
            MainMenuDialogFragment.this.dismiss();
            if (MainMenuDialogFragment.this.getActivity() != null) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_video_click);
                Intent intent = new Intent(MainMenuDialogFragment.this.getActivity(), TCVideoRecordActivity.class);
                intent.putExtra("from", 2);
                if (MainMenuDialogFragment.this.getArguments() != null) {
                    intent.putExtra("topicName", MainMenuDialogFragment.this.getArguments().getString("topicName"));
                    intent.putExtra("topic_id", MainMenuDialogFragment.this.getArguments().getString("topic_id"));
                }
                ActivityTransitionAnimUtils.startActivityByDownToUp(MainMenuDialogFragment.this, intent);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (MainMenuDialogFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(MainMenuDialogFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f20741a;

        d(Context context) {
            this.f20741a = context;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                PerMissionsUtils.checkPermission(this.f20741a);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
    }

    static {
        String[] strArr = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
        f20735b = strArr;
        if (Build.VERSION.SDK_INT < 30) {
            strArr = new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"};
        }
        f20736c = strArr;
    }

    private static boolean P1(Context context, String str) {
        return context == null || TextUtils.isEmpty(str) || ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public static void Q1(Context context, int i9, @NonNull List<String> list, boolean z10) {
        if (context == null) {
            return;
        }
        String str = "";
        boolean z11 = false;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).equals("android.permission.CAMERA") && !P1(context, list.get(i10))) {
                str = str + context.getString(R.string.reject_per_first_camera);
                if (z10 && !z11) {
                    S1(context, context.getString(R.string.check_camera));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.RECORD_AUDIO") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_mic);
                if (z10 && !z11) {
                    S1(context, context.getString(R.string.check_microphone));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.WRITE_EXTERNAL_STORAGE") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_storage);
                if (z10 && !z11) {
                    S1(context, context.getString(R.string.Open_storage_permission_to_use));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.READ_PHONE_STATE") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_phone_status);
                if (z10 && !z11) {
                    S1(context, context.getString(R.string.phone_state_permission));
                }
            }
        }
        TextUtils.isEmpty(str);
    }

    public static void S1(Context context, String str) {
        if (context == null) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(context, new d(context));
        eVar.i(context.getText(R.string.str_no));
        eVar.k(context.getText(R.string.payment_password_setting));
        eVar.f(str);
        eVar.show();
    }

    public static void T1(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            return;
        }
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
            return;
        }
        GCEventUtils.track(GCEventUtils.CLICK_LIVE);
        new com.tbruyelle.rxpermissions2.a(fragmentActivity).p(f20736c).subscribe(new a(fragmentActivity));
    }

    public void R1(FragmentActivity fragmentActivity) {
        FragmentUtil.showFragmentAsDialog(fragmentActivity.getSupportFragmentManager(), 16908290, this, true, "main_menu");
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        getParentFragmentManager().popBackStack();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.popbottom_ugc;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof e) {
            this.f20737a = (e) getActivity();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.ht_live /* 2131363049 */:
                if (getActivity() == null) {
                    return;
                }
                GCEventUtils.track(GCEventUtils.CLICK_LIVE);
                if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
                    return;
                } else {
                    new com.tbruyelle.rxpermissions2.a(getActivity()).p(f20736c).subscribe(new b());
                    return;
                }
            case R.id.ht_photo /* 2131363050 */:
                if (getActivity() == null) {
                    return;
                }
                GCEventUtils.track(GCEventUtils.CLICK_PUSH_FRIENDRING);
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_ugc_click);
                PublishUgcActivity.start(getActivity());
                dismiss();
                return;
            case R.id.ht_video /* 2131363051 */:
                GCEventUtils.track(GCEventUtils.CLICK_PUSH_VIDEO);
                if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
                    return;
                } else {
                    new com.tbruyelle.rxpermissions2.a(getActivity()).p(f20735b).subscribe(new c());
                    return;
                }
            default:
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_close);
                dismiss();
                return;
        }
    }
}
