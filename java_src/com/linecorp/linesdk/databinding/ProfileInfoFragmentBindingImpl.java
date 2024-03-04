package com.linecorp.linesdk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.BR;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
/* loaded from: classes4.dex */
public class ProfileInfoFragmentBindingImpl extends ProfileInfoFragmentBinding {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    @Nullable
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    @NonNull
    private final ConstraintLayout mboundView0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R$id.displayNameGuide, 2);
    }

    public ProfileInfoFragmentBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private boolean onChangeViewModelProfileName(MutableLiveData<String> mutableLiveData, int i9) {
        if (i9 == BR._all) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        synchronized (this) {
            j10 = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        OpenChatInfoViewModel openChatInfoViewModel = this.mViewModel;
        String str = null;
        int i9 = ((j10 & 7) > 0L ? 1 : ((j10 & 7) == 0L ? 0 : -1));
        if (i9 != 0) {
            MutableLiveData<String> profileName = openChatInfoViewModel != null ? openChatInfoViewModel.getProfileName() : null;
            updateLiveDataRegistration(0, profileName);
            if (profileName != null) {
                str = profileName.getValue();
            }
        }
        if (i9 != 0) {
            TextViewBindingAdapter.setText(this.displayNameEditText, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i9, Object obj, int i10) {
        if (i9 != 0) {
            return false;
        }
        return onChangeViewModelProfileName((MutableLiveData) obj, i10);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i9, @Nullable Object obj) {
        if (BR.viewModel == i9) {
            setViewModel((OpenChatInfoViewModel) obj);
            return true;
        }
        return false;
    }

    @Override // com.linecorp.linesdk.databinding.ProfileInfoFragmentBinding
    public void setViewModel(@Nullable OpenChatInfoViewModel openChatInfoViewModel) {
        this.mViewModel = openChatInfoViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(BR.viewModel);
        super.requestRebind();
    }

    private ProfileInfoFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (EditText) objArr[1], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.displayNameEditText.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
