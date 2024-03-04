package com.guochao.faceshow.promotion.view;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialog;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.fragment.WebViewFragment;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes4.dex */
public class WebViewDialogByTowKey extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private RelativeLayout f26145a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f26146b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f26147c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26148d;

    /* renamed from: e  reason: collision with root package name */
    private FrameLayout f26149e;

    /* renamed from: f  reason: collision with root package name */
    private View f26150f;

    /* renamed from: g  reason: collision with root package name */
    private View f26151g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f26152h;

    /* renamed from: i  reason: collision with root package name */
    private Drawable f26153i;

    /* renamed from: j  reason: collision with root package name */
    private int f26154j;

    /* renamed from: k  reason: collision with root package name */
    private int f26155k = ScreenTools.dip2px(30.0f);

    /* renamed from: l  reason: collision with root package name */
    private int f26156l = ScreenTools.dip2px(10.0f);

    /* renamed from: m  reason: collision with root package name */
    private WindowManager.LayoutParams f26157m;

    /* renamed from: n  reason: collision with root package name */
    private Window f26158n;

    /* renamed from: o  reason: collision with root package name */
    private Activity f26159o;

    /* renamed from: p  reason: collision with root package name */
    private String f26160p;

    /* renamed from: q  reason: collision with root package name */
    private c f26161q;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewDialogByTowKey.this.dismissAllowingStateLoss();
            if (WebViewDialogByTowKey.this.f26161q != null) {
                WebViewDialogByTowKey.this.f26161q.onCancel();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (WebViewDialogByTowKey.this.f26161q != null) {
                WebViewDialogByTowKey.this.f26161q.onConfirm();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void onCancel();

        void onConfirm();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment
    protected int getDialogStyle() {
        return R.style.commonDialog;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_web_view_two_key;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f26145a = (RelativeLayout) view.findViewById(R.id.web_dialog_root);
        this.f26146b = (RelativeLayout) view.findViewById(R.id.web_dialog_content);
        this.f26149e = (FrameLayout) view.findViewById(R.id.web_dialog_web_view_wrapper);
        this.f26147c = (TextView) view.findViewById(R.id.web_dialog_cancel_btn);
        this.f26148d = (TextView) view.findViewById(R.id.web_dialog_confirm_btn);
        this.f26150f = view.findViewById(R.id.web_dialog_top_bg);
        this.f26151g = view.findViewById(R.id.web_dialog_bottom_bg);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f26146b.getLayoutParams();
        int i9 = this.f26155k;
        marginLayoutParams.leftMargin = i9;
        marginLayoutParams.rightMargin = i9;
        marginLayoutParams.height = (int) (ScreenTools.getScreenHeight() * 0.75d);
        this.f26150f.setBackground(this.f26152h);
        this.f26151g.setBackground(this.f26153i);
        this.f26147c.setOnClickListener(new a());
        this.f26148d.setOnClickListener(new b());
        WebViewFragment.getInstance(R.id.web_dialog_web_view_wrapper, getChildFragmentManager(), this.f26160p, "");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NonNull Activity activity) {
        super.onAttach(activity);
        this.f26159o = activity;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AppCompatDialog appCompatDialog = new AppCompatDialog(getContext(), R.style.commonDialog);
        this.f26158n = appCompatDialog.getWindow();
        int color = getResources().getColor(R.color.app_blue);
        this.f26154j = color;
        int i9 = this.f26156l;
        this.f26152h = FaceImageUtils.createDrawable(color, new float[]{i9, i9, i9, i9, 0.0f, 0.0f, 0.0f, 0.0f});
        this.f26153i = FaceImageUtils.createDrawable(this.f26154j, new float[]{0.0f, 0.0f, 0.0f, 0.0f, i9, i9, i9, i9});
        Window window = this.f26158n;
        if (window != null && window.getAttributes() != null) {
            WindowManager.LayoutParams attributes = this.f26158n.getAttributes();
            this.f26157m = attributes;
            attributes.width = -1;
            attributes.height = -1;
            attributes.gravity = 17;
            this.mGravity = 17;
            this.f26158n.setAttributes(attributes);
        }
        appCompatDialog.setCanceledOnTouchOutside(false);
        return appCompatDialog;
    }

    public void setOnDialogClickListener(c cVar) {
        this.f26161q = cVar;
    }
}
