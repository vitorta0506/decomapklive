package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.NotificationsUtils;
/* loaded from: classes3.dex */
public class NotificationsDialogFragment extends BaseDialogFragment {
    @BindView
    FrameLayout btnOpenSetting;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
            return i9 == 4;
        }
    }

    private void P1() {
        if (ja.a.b().f("KEY_OPEN_LIVE")) {
            Fragment findFragmentByTag = getParentFragmentManager().findFragmentByTag(LiveViewPagerFragment.class.getName());
            if (findFragmentByTag instanceof LiveViewPagerFragment) {
                ((LiveViewPagerFragment) findFragmentByTag).W1();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_notification;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        if (getDialog() == null || getDialog().getWindow() == null) {
            return;
        }
        getDialog().getWindow().getDecorView().setSystemUiVisibility(5376);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        FragmentActivity activity = getActivity();
        CustomNameCacheUtils.setInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_NOTIFICATION_STATE", 1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        createCenterDialog.setCanceledOnTouchOutside(false);
        createCenterDialog.getWindow().setDimAmount(0.3f);
        createCenterDialog.setOnKeyListener(new a());
        return createCenterDialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_open_setting) {
            FragmentActivity activity = getActivity();
            CustomNameCacheUtils.setInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_NOTIFICATION_STATE", 1);
            NotificationsUtils.requestNotify(this);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.notice_permission_open);
            P1();
            dismiss();
        } else if (id2 != R.id.iv_close) {
        } else {
            FragmentActivity activity2 = getActivity();
            CustomNameCacheUtils.setInt(activity2, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_NOTIFICATION_STATE", 1);
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.notice_permission_close);
            P1();
            dismiss();
        }
    }
}
