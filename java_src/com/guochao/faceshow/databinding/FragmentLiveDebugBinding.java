package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class FragmentLiveDebugBinding implements ViewBinding {
    @NonNull
    public final EditText bit;
    @NonNull
    public final EditText fps;
    @NonNull
    public final RadioButton rb1;
    @NonNull
    public final RadioButton rb2;
    @NonNull
    public final RadioButton rb3;
    @NonNull

    /* renamed from: rg  reason: collision with root package name */
    public final RadioGroup f25203rg;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final Button save;

    private FragmentLiveDebugBinding(@NonNull FrameLayout frameLayout, @NonNull EditText editText, @NonNull EditText editText2, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioGroup radioGroup, @NonNull Button button) {
        this.rootView = frameLayout;
        this.bit = editText;
        this.fps = editText2;
        this.rb1 = radioButton;
        this.rb2 = radioButton2;
        this.rb3 = radioButton3;
        this.f25203rg = radioGroup;
        this.save = button;
    }

    @NonNull
    public static FragmentLiveDebugBinding bind(@NonNull View view) {
        int i9 = R.id.bit;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.bit);
        if (editText != null) {
            i9 = R.id.fps;
            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.fps);
            if (editText2 != null) {
                i9 = R.id.rb1;
                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb1);
                if (radioButton != null) {
                    i9 = R.id.rb2;
                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb2);
                    if (radioButton2 != null) {
                        i9 = R.id.rb3;
                        RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rb3);
                        if (radioButton3 != null) {
                            i9 = R.id.f16048rg;
                            RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.f16048rg);
                            if (radioGroup != null) {
                                i9 = R.id.save;
                                Button button = (Button) ViewBindings.findChildViewById(view, R.id.save);
                                if (button != null) {
                                    return new FragmentLiveDebugBinding((FrameLayout) view, editText, editText2, radioButton, radioButton2, radioButton3, radioGroup, button);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentLiveDebugBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentLiveDebugBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_live_debug, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
