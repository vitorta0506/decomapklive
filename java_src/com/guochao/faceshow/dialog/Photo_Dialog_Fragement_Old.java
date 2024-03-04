package com.guochao.faceshow.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PhotoActivity;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.AAViewCom;
import com.guochao.faceshow.utils.PhotoCameraPermissionUtils;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public class Photo_Dialog_Fragement_Old extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private boolean f25206a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f25207b;

    /* renamed from: d  reason: collision with root package name */
    private String f25209d;

    /* renamed from: e  reason: collision with root package name */
    private String f25210e;

    /* renamed from: f  reason: collision with root package name */
    TextView f25211f;

    /* renamed from: g  reason: collision with root package name */
    TextView f25212g;

    /* renamed from: h  reason: collision with root package name */
    TextView f25213h;

    /* renamed from: c  reason: collision with root package name */
    private boolean f25208c = false;

    /* renamed from: i  reason: collision with root package name */
    final int f25214i = 101;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Photo_Dialog_Fragement_Old.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        @RequiresApi(api = 23)
        public void onClick(View view) {
            if (Photo_Dialog_Fragement_Old.this.U1(5)) {
                PhotoCameraPermissionUtils.cameraMethod(Photo_Dialog_Fragement_Old.this.getActivity(), 51, Photo_Dialog_Fragement_Old.this.f25209d);
                Photo_Dialog_Fragement_Old.this.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        @RequiresApi(api = 23)
        public void onClick(View view) {
            if (Photo_Dialog_Fragement_Old.this.T1()) {
                if (Photo_Dialog_Fragement_Old.this.f25206a) {
                    Photo_Dialog_Fragement_Old.this.selectPhoto();
                } else {
                    Photo_Dialog_Fragement_Old.this.startPhotoActivity();
                }
            }
        }
    }

    private void initView(View view) {
        this.f25211f = AAViewCom.getTv(view, R.id.tv_cancel);
        this.f25212g = AAViewCom.getTv(view, R.id.tv_camera);
        this.f25213h = AAViewCom.getTv(view, R.id.tv_gallery);
        this.f25211f.setOnClickListener(new a());
        this.f25212g.setOnClickListener(new b());
        this.f25213h.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectPhoto() {
        if (getActivity() == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.PICK", (Uri) null);
        intent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image*/*");
        intent.setType("image/*");
        if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
            getActivity().startActivityForResult(intent, 52);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhotoActivity() {
        if (getActivity() != null) {
            Intent intent = new Intent(getActivity(), PhotoActivity.class);
            intent.putExtra("type", 1);
            intent.putExtra("isVip", this.f25207b);
            intent.putExtra("nogif", this.f25208c);
            if (intent.resolveActivity(getActivity().getPackageManager()) != null) {
                getActivity().startActivityForResult(intent, 10023);
            }
        }
        dismiss();
    }

    @RequiresApi(api = 23)
    public boolean T1() {
        try {
            if (ContextCompat.checkSelfPermission(getActivity(), "android.permission.READ_EXTERNAL_STORAGE") == 0 || ContextCompat.checkSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                return true;
            }
            requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 101);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    @RequiresApi(api = 23)
    public boolean U1(int i9) {
        try {
            if (ContextCompat.checkSelfPermission(getActivity(), "android.permission.CAMERA") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(getActivity(), "android.permission.READ_EXTERNAL_STORAGE") == 0) {
                return true;
            }
            requestPermissions(new String[]{"android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 5);
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public void V1(int i9, int[] iArr) {
        if (i9 == 5) {
            if (iArr[0] == 0) {
                PhotoCameraPermissionUtils.cameraMethod(getActivity(), 51, this.f25209d);
                dismiss();
                return;
            }
            ToastUtils.showToast(getActivity(), "获取拍照权限失败，请在手机中设置允许拍照");
        } else if (i9 != 101) {
        } else {
            if (iArr[0] == 0) {
                selectPhoto();
            } else {
                ToastUtils.showToast(getActivity(), "获取读写权限失败，请在手机中设置允许读写");
            }
        }
    }

    public void W1(boolean z10) {
        this.f25208c = z10;
    }

    protected void hideSoftKeyboard(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            if (activity.getWindow().getAttributes().softInputMode != 2 && activity.getCurrentFocus() != null && inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), R.style.BottomDialog);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.requestWindowFeature(1);
        dialog.setContentView(R.layout.fragment_photo_dialog_old);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        initView(dialog.getWindow().getDecorView());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i9, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i9, strArr, iArr);
        V1(i9, iArr);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        hideSoftKeyboard(getActivity());
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public void setCameraPath(String str) {
        this.f25209d = str;
    }

    public void setUpdatePath(String str) {
        this.f25210e = str;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        try {
            Class<?> cls = Class.forName("androidx.fragment.app.DialogFragment");
            cls.getConstructor(new Class[0]);
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
}
