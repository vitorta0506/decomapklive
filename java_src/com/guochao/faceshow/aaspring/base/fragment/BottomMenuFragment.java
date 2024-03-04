package com.guochao.faceshow.aaspring.base.fragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.BottomMenuBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BottomMenuFragment extends BaseRecyclerViewDialogFragment<BottomMenuBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private b f16138a;

    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnCancelListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            BottomMenuFragment.this.f16138a.onCancel(BottomMenuFragment.this.getDialog(), BottomMenuFragment.this);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(BottomMenuBean bottomMenuBean, Dialog dialog, DialogFragment dialogFragment);

        void onCancel(Dialog dialog, DialogFragment dialogFragment);
    }

    public static void S1(FragmentManager fragmentManager, List<BottomMenuBean> list, b bVar) {
        BottomMenuFragment bottomMenuFragment = new BottomMenuFragment();
        bottomMenuFragment.setOnMenuItemClickListener(bVar);
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("menu", new ArrayList<>(list));
        bottomMenuFragment.setArguments(bundle);
        bottomMenuFragment.show(fragmentManager, "bottomMenu");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, BottomMenuBean bottomMenuBean) {
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_menu_item);
        if (i9 == 0) {
            if (i9 == getList().size() - 1) {
                textView.setBackgroundResource(R.drawable.shape_center_bottom_menu);
            } else {
                textView.setBackgroundResource(R.drawable.shape_top_bottom_menu);
            }
        } else if (i9 == getList().size() - 1) {
            textView.setBackgroundResource(R.drawable.shape_bottom_bottom_menu);
        } else {
            textView.setBackgroundResource(R.drawable.shape_btn_round_corner_bg_white);
        }
        textView.setText(bottomMenuBean.getText());
        if (bottomMenuBean.getTextColor() != null) {
            textView.setTextColor(bottomMenuBean.getTextColor());
        } else {
            textView.setTextColor(getResources().getColor(R.color.black_222222));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment
    /* renamed from: R1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, BottomMenuBean bottomMenuBean) {
        b bVar = this.f16138a;
        if (bVar != null) {
            bVar.a(bottomMenuBean, getDialog(), this);
        }
        dismiss();
    }

    @OnClick
    public void cancel(View view) {
        dismiss();
        b bVar = this.f16138a;
        if (bVar != null) {
            bVar.onCancel(getDialog(), this);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_bottom_menu;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewDialogFragment, d7.c
    public void loadData(int i9) {
        if (getArguments() != null) {
            addDatas(getArguments().getParcelableArrayList("menu"));
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(getActivity(), R.style.BottomDialog);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.requestWindowFeature(1);
        dialog.setCanceledOnTouchOutside(true);
        Window window = dialog.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        window.setAttributes(attributes);
        if (this.f16138a != null) {
            dialog.setOnCancelListener(new a());
        }
        return dialog;
    }

    public void setOnMenuItemClickListener(b bVar) {
        this.f16138a = bVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_bottom_menu, viewGroup, false));
    }
}
