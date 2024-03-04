package com.linecorp.linesdk.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.linecorp.linesdk.BR;
import com.linecorp.linesdk.R$id;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
/* loaded from: classes4.dex */
public class OpenChatInfoFragmentBindingImpl extends OpenChatInfoFragmentBinding {
    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    @Nullable
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    @NonNull
    private final ScrollView mboundView0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R$id.nameMaxTextView, 4);
        sparseIntArray.put(R$id.name_divider, 5);
        sparseIntArray.put(R$id.descriptionMaxTextView, 6);
        sparseIntArray.put(R$id.description_detail, 7);
        sparseIntArray.put(R$id.description_divider, 8);
        sparseIntArray.put(R$id.category_title, 9);
        sparseIntArray.put(R$id.categoryLabelTextView, 10);
        sparseIntArray.put(R$id.category_guide, 11);
        sparseIntArray.put(R$id.category_divider, 12);
        sparseIntArray.put(R$id.searchIncludedContainer, 13);
        sparseIntArray.put(R$id.search_title, 14);
        sparseIntArray.put(R$id.search_description, 15);
    }

    public OpenChatInfoFragmentBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, sIncludes, sViewsWithIds));
    }

    private boolean onChangeViewModelChatroomName(MutableLiveData<String> mutableLiveData, int i9) {
        if (i9 == BR._all) {
            synchronized (this) {
                this.mDirtyFlags |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean onChangeViewModelDescription(MutableLiveData<String> mutableLiveData, int i9) {
        if (i9 == BR._all) {
            synchronized (this) {
                this.mDirtyFlags |= 2;
            }
            return true;
        }
        return false;
    }

    private boolean onChangeViewModelIsSearchIncluded(MutableLiveData<Boolean> mutableLiveData, int i9) {
        if (i9 == BR._all) {
            synchronized (this) {
                this.mDirtyFlags |= 4;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void executeBindings() {
        /*
            r19 = this;
            r1 = r19
            monitor-enter(r19)
            long r2 = r1.mDirtyFlags     // Catch: java.lang.Throwable -> L96
            r4 = 0
            r1.mDirtyFlags = r4     // Catch: java.lang.Throwable -> L96
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L96
            com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel r0 = r1.mViewModel
            r6 = 31
            long r6 = r6 & r2
            r8 = 28
            r10 = 25
            r12 = 26
            r14 = 0
            r15 = 0
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L75
            long r6 = r2 & r10
            int r16 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r16 == 0) goto L35
            if (r0 == 0) goto L28
            androidx.lifecycle.MutableLiveData r6 = r0.getChatroomName()
            goto L29
        L28:
            r6 = r15
        L29:
            r1.updateLiveDataRegistration(r14, r6)
            if (r6 == 0) goto L35
            java.lang.Object r6 = r6.getValue()
            java.lang.String r6 = (java.lang.String) r6
            goto L36
        L35:
            r6 = r15
        L36:
            long r16 = r2 & r12
            int r7 = (r16 > r4 ? 1 : (r16 == r4 ? 0 : -1))
            if (r7 == 0) goto L51
            if (r0 == 0) goto L43
            androidx.lifecycle.MutableLiveData r7 = r0.getDescription()
            goto L44
        L43:
            r7 = r15
        L44:
            r14 = 1
            r1.updateLiveDataRegistration(r14, r7)
            if (r7 == 0) goto L51
            java.lang.Object r7 = r7.getValue()
            java.lang.String r7 = (java.lang.String) r7
            goto L52
        L51:
            r7 = r15
        L52:
            long r17 = r2 & r8
            int r14 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r14 == 0) goto L73
            if (r0 == 0) goto L5f
            androidx.lifecycle.MutableLiveData r0 = r0.isSearchIncluded()
            goto L60
        L5f:
            r0 = r15
        L60:
            r14 = 2
            r1.updateLiveDataRegistration(r14, r0)
            if (r0 == 0) goto L6d
            java.lang.Object r0 = r0.getValue()
            r15 = r0
            java.lang.Boolean r15 = (java.lang.Boolean) r15
        L6d:
            boolean r14 = androidx.databinding.ViewDataBinding.safeUnbox(r15)
            r15 = r7
            goto L77
        L73:
            r15 = r7
            goto L76
        L75:
            r6 = r15
        L76:
            r14 = 0
        L77:
            long r12 = r12 & r2
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 == 0) goto L81
            android.widget.EditText r0 = r1.descriptionEditText
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r15)
        L81:
            long r10 = r10 & r2
            int r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r0 == 0) goto L8b
            android.widget.EditText r0 = r1.nameEditText
            androidx.databinding.adapters.TextViewBindingAdapter.setText(r0, r6)
        L8b:
            long r2 = r2 & r8
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L95
            android.widget.CheckBox r0 = r1.searchIncludedCheckBox
            androidx.databinding.adapters.CompoundButtonBindingAdapter.setChecked(r0, r14)
        L95:
            return
        L96:
            r0 = move-exception
            monitor-exit(r19)     // Catch: java.lang.Throwable -> L96
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linecorp.linesdk.databinding.OpenChatInfoFragmentBindingImpl.executeBindings():void");
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
            this.mDirtyFlags = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i9, Object obj, int i10) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return false;
                }
                return onChangeViewModelIsSearchIncluded((MutableLiveData) obj, i10);
            }
            return onChangeViewModelDescription((MutableLiveData) obj, i10);
        }
        return onChangeViewModelChatroomName((MutableLiveData) obj, i10);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i9, @Nullable Object obj) {
        if (BR.viewModel == i9) {
            setViewModel((OpenChatInfoViewModel) obj);
            return true;
        }
        return false;
    }

    @Override // com.linecorp.linesdk.databinding.OpenChatInfoFragmentBinding
    public void setViewModel(@Nullable OpenChatInfoViewModel openChatInfoViewModel) {
        this.mViewModel = openChatInfoViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(BR.viewModel);
        super.requestRebind();
    }

    private OpenChatInfoFragmentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (View) objArr[12], (TextView) objArr[11], (TextView) objArr[10], (TextView) objArr[9], (TextView) objArr[7], (View) objArr[8], (EditText) objArr[2], (TextView) objArr[6], (View) objArr[5], (EditText) objArr[1], (TextView) objArr[4], (TextView) objArr[15], (CheckBox) objArr[3], (ConstraintLayout) objArr[13], (TextView) objArr[14]);
        this.mDirtyFlags = -1L;
        this.descriptionEditText.setTag(null);
        ScrollView scrollView = (ScrollView) objArr[0];
        this.mboundView0 = scrollView;
        scrollView.setTag(null);
        this.nameEditText.setTag(null);
        this.searchIncludedCheckBox.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
