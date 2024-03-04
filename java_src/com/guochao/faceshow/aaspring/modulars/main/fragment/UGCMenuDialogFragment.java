package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
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
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.views.e;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class UGCMenuDialogFragment extends BaseFragment {

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f20785b;

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f20786c;

    /* renamed from: a  reason: collision with root package name */
    d f20787a;

    /* loaded from: classes3.dex */
    class a extends BasePermissionObserver {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            UGCMenuDialogFragment.Q1(UGCMenuDialogFragment.this.getContext(), 101, Arrays.asList(UGCMenuDialogFragment.f20786c), false);
            UGCMenuDialogFragment.this.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(UGCMenuDialogFragment.this.getContext()) && !PhoneUtils.isCameraCanUse(UGCMenuDialogFragment.this.getContext())) {
                UGCMenuDialogFragment.R1(UGCMenuDialogFragment.this.getContext(), UGCMenuDialogFragment.this.getContext().getString(R.string.check_camera));
                return;
            }
            UGCMenuDialogFragment.this.dismiss();
            if (UGCMenuDialogFragment.this.getActivity() != null) {
                Intent intent = new Intent(UGCMenuDialogFragment.this.getActivity(), LiveBroadCastActivity.class);
                intent.putExtra("IDENTITY_TYPE_KEY", 0);
                ActivityTransitionAnimUtils.startActivityByDownToUp(UGCMenuDialogFragment.this, intent);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            UGCMenuDialogFragment.Q1(UGCMenuDialogFragment.this.getContext(), 101, Arrays.asList(UGCMenuDialogFragment.f20786c), true);
        }
    }

    /* loaded from: classes3.dex */
    class b extends BasePermissionObserver {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            UGCMenuDialogFragment.Q1(UGCMenuDialogFragment.this.getContext(), 101, Arrays.asList(UGCMenuDialogFragment.f20786c), false);
            UGCMenuDialogFragment.this.dismiss();
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(UGCMenuDialogFragment.this.getContext()) && !PhoneUtils.isCameraCanUse(UGCMenuDialogFragment.this.getContext())) {
                UGCMenuDialogFragment.R1(UGCMenuDialogFragment.this.getContext(), UGCMenuDialogFragment.this.getContext().getString(R.string.check_camera));
                return;
            }
            UGCMenuDialogFragment.this.dismiss();
            if (UGCMenuDialogFragment.this.getActivity() != null) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_video_click);
                Intent intent = new Intent(UGCMenuDialogFragment.this.getActivity(), TCVideoRecordActivity.class);
                intent.putExtra("from", 2);
                ActivityTransitionAnimUtils.startActivityByDownToUp(UGCMenuDialogFragment.this, intent);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (UGCMenuDialogFragment.this.getContext() == null) {
                return;
            }
            UGCMenuDialogFragment.Q1(UGCMenuDialogFragment.this.getContext(), 101, Arrays.asList(UGCMenuDialogFragment.f20786c), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f20790a;

        c(Context context) {
            this.f20790a = context;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
                PerMissionsUtils.checkPermission(this.f20790a);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
    }

    static {
        String[] strArr = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
        f20785b = strArr;
        if (Build.VERSION.SDK_INT < 30) {
            strArr = new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"};
        }
        f20786c = strArr;
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
                    R1(context, context.getString(R.string.check_camera));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.RECORD_AUDIO") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_mic);
                if (z10 && !z11) {
                    R1(context, context.getString(R.string.check_microphone));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.WRITE_EXTERNAL_STORAGE") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_storage);
                if (z10 && !z11) {
                    R1(context, context.getString(R.string.Open_storage_permission_to_use));
                    z11 = true;
                }
            }
            if (list.get(i10).equals("android.permission.READ_PHONE_STATE") && !P1(context, list.get(i10))) {
                str = str + (TextUtils.isEmpty(str) ? "" : ", ") + context.getString(R.string.reject_per_first_phone_status);
                if (z10 && !z11) {
                    R1(context, context.getString(R.string.phone_state_permission));
                }
            }
        }
        TextUtils.isEmpty(str);
    }

    public static void R1(Context context, String str) {
        if (context == null) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(context, new c(context));
        eVar.i(context.getText(R.string.str_no));
        eVar.k(context.getText(R.string.payment_password_setting));
        eVar.f(str);
        eVar.show();
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
        if (BaseConfig.isChinese()) {
            ((TextView) view.findViewById(R.id.tv_push_video)).setText(R.string.zaime_video_watch);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof d) {
            this.f20787a = (d) getActivity();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.ht_live /* 2131363049 */:
                if (getActivity() == null) {
                    return;
                }
                if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
                    return;
                } else {
                    new com.tbruyelle.rxpermissions2.a(getActivity()).p(f20786c).subscribe(new a());
                    return;
                }
            case R.id.ht_photo /* 2131363050 */:
                if (getActivity() == null) {
                    return;
                }
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_ugc_click);
                PublishUgcActivity.start(getActivity());
                dismiss();
                return;
            case R.id.ht_video /* 2131363051 */:
                if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.one_v_one_is_matching);
                    return;
                } else {
                    new com.tbruyelle.rxpermissions2.a(getActivity()).p(f20785b).subscribe(new b());
                    return;
                }
            default:
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.push_close);
                dismiss();
                return;
        }
    }
}
