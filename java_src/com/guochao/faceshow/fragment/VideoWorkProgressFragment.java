package com.guochao.faceshow.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.roomutil.widget.NumberProgressBar;
/* loaded from: classes3.dex */
public class VideoWorkProgressFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private View f25277a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f25278b;

    /* renamed from: c  reason: collision with root package name */
    private NumberProgressBar f25279c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f25280d;

    /* renamed from: e  reason: collision with root package name */
    private int f25281e;

    /* renamed from: f  reason: collision with root package name */
    private View.OnClickListener f25282f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f25283g = true;

    public static VideoWorkProgressFragment P1(String str) {
        VideoWorkProgressFragment videoWorkProgressFragment = new VideoWorkProgressFragment();
        Bundle bundle = new Bundle();
        bundle.putString("key_title", str);
        videoWorkProgressFragment.setArguments(bundle);
        return videoWorkProgressFragment;
    }

    public void Q1(boolean z10) {
        this.f25283g = z10;
        ImageView imageView = this.f25278b;
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(4);
        }
    }

    public void R1(int i9) {
        NumberProgressBar numberProgressBar = this.f25279c;
        if (numberProgressBar == null) {
            this.f25281e = i9;
        } else {
            numberProgressBar.setProgress(i9);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (getFragmentManager() != null && isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        this.f25279c.setProgress(0L);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(R.style.ConfirmDialogStyle, R.style.DialogFragmentStyle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.layout_joiner_progress, (ViewGroup) null);
        this.f25277a = inflate;
        this.f25280d = (TextView) inflate.findViewById(R.id.joiner_tv_msg);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("key_title");
            if (!TextUtils.isEmpty(string)) {
                this.f25280d.setText(string);
            }
        }
        this.f25278b = (ImageView) this.f25277a.findViewById(R.id.joiner_iv_stop);
        NumberProgressBar numberProgressBar = (NumberProgressBar) this.f25277a.findViewById(R.id.joiner_pb_loading);
        this.f25279c = numberProgressBar;
        numberProgressBar.setMax(100L);
        this.f25279c.setProgress(this.f25281e);
        this.f25278b.setOnClickListener(this.f25282f);
        if (this.f25283g) {
            this.f25278b.setVisibility(0);
        } else {
            this.f25278b.setVisibility(4);
        }
        return this.f25277a;
    }

    public void setOnClickStopListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f25278b;
        if (imageView == null) {
            this.f25282f = onClickListener;
            return;
        }
        this.f25282f = onClickListener;
        imageView.setOnClickListener(onClickListener);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        try {
            fragmentManager.beginTransaction().add(this, str).commitAllowingStateLoss();
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                fragmentManager.beginTransaction().remove(this).add(this, str).commitAllowingStateLoss();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
