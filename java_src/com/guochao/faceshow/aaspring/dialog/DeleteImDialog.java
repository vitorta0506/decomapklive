package com.guochao.faceshow.aaspring.dialog;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
/* loaded from: classes3.dex */
public class DeleteImDialog extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private a f16431a;

    /* loaded from: classes3.dex */
    public interface a {
        void onDelete();
    }

    public void P1(a aVar) {
        this.f16431a = aVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment
    protected int getDialogStyle() {
        return R.style.BottomDialog_FullScreen_Alpha;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_delete_im;
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
        setGravity(17);
        setParamsHeight(-1);
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 != R.id.delete_click) {
            if (id2 != R.id.root_view) {
                return;
            }
            dismiss();
            return;
        }
        dismiss();
        a aVar = this.f16431a;
        if (aVar != null) {
            aVar.onDelete();
        }
    }
}
