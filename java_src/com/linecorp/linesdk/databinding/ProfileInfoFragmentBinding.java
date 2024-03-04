package com.linecorp.linesdk.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.linecorp.linesdk.R$layout;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
/* loaded from: classes4.dex */
public abstract class ProfileInfoFragmentBinding extends ViewDataBinding {
    @NonNull
    public final EditText displayNameEditText;
    @NonNull
    public final TextView displayNameGuide;
    @Bindable
    protected OpenChatInfoViewModel mViewModel;

    /* JADX INFO: Access modifiers changed from: protected */
    public ProfileInfoFragmentBinding(Object obj, View view, int i9, EditText editText, TextView textView) {
        super(obj, view, i9);
        this.displayNameEditText = editText;
        this.displayNameGuide = textView;
    }

    public static ProfileInfoFragmentBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ProfileInfoFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        return inflate(layoutInflater, viewGroup, z10, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public OpenChatInfoViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable OpenChatInfoViewModel openChatInfoViewModel);

    @Deprecated
    public static ProfileInfoFragmentBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ProfileInfoFragmentBinding) ViewDataBinding.bind(obj, view, R$layout.profile_info_fragment);
    }

    @NonNull
    @Deprecated
    public static ProfileInfoFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (ProfileInfoFragmentBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.profile_info_fragment, viewGroup, z10, obj);
    }

    @NonNull
    public static ProfileInfoFragmentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ProfileInfoFragmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ProfileInfoFragmentBinding) ViewDataBinding.inflateInternal(layoutInflater, R$layout.profile_info_fragment, null, false, obj);
    }
}
