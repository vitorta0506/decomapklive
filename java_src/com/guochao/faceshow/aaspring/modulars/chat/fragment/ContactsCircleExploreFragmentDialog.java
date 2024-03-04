package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.tencent.ugc.UGCTransitionRules;
/* loaded from: classes3.dex */
public class ContactsCircleExploreFragmentDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f16927a;
    @BindView
    TextView btnOk;
    @BindView
    TextView btnSearch;

    /* loaded from: classes3.dex */
    public interface a {
        void onCancel();

        void onConfirm();
    }

    public void P1(a aVar) {
        this.f16927a = aVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_contancts_circle_explore;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setParamsHeight(-1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        FaceCastDialog createCenterDialog = createCenterDialog();
        Window window = createCenterDialog.getWindow();
        if (window != null) {
            window.getDecorView().setSystemUiVisibility(UGCTransitionRules.DEFAULT_IMAGE_HEIGHT);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (Build.VERSION.SDK_INT >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(getResources().getColor(R.color.color_app_primary));
        }
        return createCenterDialog;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.btn_cancel) {
            dismiss();
            a aVar = this.f16927a;
            if (aVar != null) {
                aVar.onCancel();
            }
        } else if (id2 != R.id.btn_ok) {
        } else {
            dismiss();
            a aVar2 = this.f16927a;
            if (aVar2 != null) {
                aVar2.onConfirm();
            }
        }
    }
}
