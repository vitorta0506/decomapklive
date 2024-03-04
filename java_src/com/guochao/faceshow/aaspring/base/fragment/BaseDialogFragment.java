package com.guochao.faceshow.aaspring.base.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.dialog.FaceCastDialog;
import com.guochao.faceshow.utils.DensityUtil;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public abstract class BaseDialogFragment extends BaseFragment {
    private int mParamsHeight = -2;

    public FaceCastDialog createBottDialog() {
        FaceCastDialog faceCastDialog = new FaceCastDialog(getActivity(), R.style.ActionSheetDialogStyle);
        faceCastDialog.getWindow().setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(getActivity(), R.color.mytranparent)));
        faceCastDialog.requestWindowFeature(1);
        faceCastDialog.setCanceledOnTouchOutside(true);
        Window window = faceCastDialog.getWindow();
        window.getDecorView().setPadding(0, DensityUtil.dp2px(66.0f), 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        this.mGravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        window.setDimAmount(0.6f);
        return faceCastDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public Dialog createBottomDialog() {
        return createBottomDialog(getTheme());
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        dismissAllowingStateLoss();
    }

    protected int getDialogStyle() {
        return R.style.BottomDialog_FullScreen;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        Window window;
        super.onActivityCreated(bundle);
        if (getDialog() == null || (window = getDialog().getWindow()) == null || window.getAttributes() == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = this.mParamsHeight;
        attributes.gravity = this.mGravity;
        window.setAttributes(attributes);
        window.setLayout(-1, this.mParamsHeight);
        if (!(getActivity() instanceof BaseActivity) || ((BaseActivity) getActivity()).getSystemUiVisibility() == 0) {
            return;
        }
        getDialog().getWindow().getDecorView().setSystemUiVisibility(4098);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setShowsDialog(true);
        setStyle(0, getDialogStyle());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (getActivity() == null || !(getActivity() instanceof BaseActivity)) {
            return;
        }
        ((BaseActivity) getActivity()).onDialogFragmentDismiss(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void print(String str, String str2) {
        com.guochao.faceshow.aaspring.debug.a.b().a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setBackCancelable(boolean z10) {
        if (getDialog() != null) {
            getDialog().setCancelable(z10);
            getDialog().setCanceledOnTouchOutside(z10);
        }
    }

    public void setParamsHeight(int i9) {
        this.mParamsHeight = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        try {
            Class<?> cls = Class.forName("androidx.fragment.app.DialogFragment");
            Field declaredField = cls.getDeclaredField("mDismissed");
            declaredField.setAccessible(true);
            Boolean bool = Boolean.FALSE;
            declaredField.set(this, bool);
            Field declaredField2 = cls.getDeclaredField("mShownByMe");
            declaredField2.setAccessible(true);
            declaredField2.set(this, bool);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.add(this, str);
        beginTransaction.commitAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void startActivity(Class<? extends Activity> cls) {
        startActivity(new Intent(getActivity(), cls));
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public FaceCastDialog createCenterDialog() {
        FaceCastDialog faceCastDialog = new FaceCastDialog(getActivity(), R.style.NormalDialog);
        faceCastDialog.getWindow().setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(getActivity(), R.color.mytranparent)));
        faceCastDialog.requestWindowFeature(1);
        faceCastDialog.setCanceledOnTouchOutside(true);
        Window window = faceCastDialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        this.mGravity = 17;
        attributes.width = -1;
        window.setAttributes(attributes);
        window.setDimAmount(0.6f);
        return faceCastDialog;
    }
}
