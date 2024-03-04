package com.guochao.faceshow.views;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.ScreenTools;
import java.lang.reflect.Field;
/* loaded from: classes4.dex */
public class TCConfirmDialog extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private TextView f26770a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26771b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f26772c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26773d;

    /* renamed from: e  reason: collision with root package name */
    private c f26774e;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TCConfirmDialog.this.dismiss();
            if (TCConfirmDialog.this.f26774e != null) {
                TCConfirmDialog.this.f26774e.a();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TCConfirmDialog.this.dismiss();
            if (TCConfirmDialog.this.f26774e != null) {
                TCConfirmDialog.this.f26774e.b();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a();

        void b();
    }

    public static TCConfirmDialog Q1(String str, String str2, boolean z10, String str3, String str4) {
        TCConfirmDialog tCConfirmDialog = new TCConfirmDialog();
        Bundle bundle = new Bundle();
        bundle.putString("key_title", str);
        bundle.putString("key_msg", str2);
        bundle.putString("key_sure_txt", str3);
        bundle.putString("key_cancel_txt", str4);
        bundle.putBoolean("key_cancel", z10);
        tCConfirmDialog.setArguments(bundle);
        return tCConfirmDialog;
    }

    private void R1() {
        getDialog().requestWindowFeature(1);
        if (getDialog().getWindow() != null) {
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    public void S1(c cVar) {
        this.f26774e = cVar;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        R1();
        return layoutInflater.inflate(R.layout.fragment_confirm, viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout((int) (ScreenTools.getScreenWidth() * 0.9d), -2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        String string = getArguments().getString("key_title");
        String string2 = getArguments().getString("key_msg", "");
        boolean z10 = getArguments().getBoolean("key_cancel", true);
        String string3 = getArguments().getString("key_cancel_txt");
        String string4 = getArguments().getString("key_sure_txt");
        TextView textView = (TextView) view.findViewById(R.id.confirm_tv_title);
        this.f26770a = textView;
        textView.setText(string);
        TextView textView2 = (TextView) view.findViewById(R.id.confirm_et_content);
        this.f26771b = textView2;
        textView2.setText(string2);
        TextView textView3 = (TextView) view.findViewById(R.id.confirm_tv_done);
        this.f26772c = textView3;
        if (string4 != null) {
            textView3.setText(string4);
        }
        this.f26772c.setOnClickListener(new a());
        TextView textView4 = (TextView) view.findViewById(R.id.confirm_tv_cancel);
        this.f26773d = textView4;
        if (!z10) {
            textView4.setVisibility(8);
        } else {
            textView4.setVisibility(0);
        }
        if (string3 != null) {
            this.f26773d.setText(string3);
        }
        this.f26773d.setOnClickListener(new b());
    }

    @Override // androidx.fragment.app.DialogFragment
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
}
