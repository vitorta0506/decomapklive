package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.beans.TextMessageBean;
import com.guochao.faceshow.aaspring.modulars.chat.utils.OnFirstItemClickListener;
import com.guochao.faceshow.aaspring.modulars.chat.utils.RandomChatMessageUtil;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class FaceShortCutFragment extends BaseRecyclerViewFragment<TextMessageBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    OnFirstItemClickListener f16956a;

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, TextMessageBean textMessageBean) {
        ((TextView) baseViewHolder.getView(R.id.msg)).setText(textMessageBean.getMsg());
        if (i9 == 0) {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).setMarginStart(DensityUtil.dp2px(getActivity(), 8.0f));
        } else {
            ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).setMarginStart(DensityUtil.dp2px(getActivity(), 5.0f));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: R1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, TextMessageBean textMessageBean) {
        OnFirstItemClickListener onFirstItemClickListener = this.f16956a;
        if (onFirstItemClickListener != null) {
            onFirstItemClickListener.onFirstItemClick(textMessageBean, baseViewHolder.itemView, i9);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.IMGREET_CLICK);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_face_short_cut;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        for (int i10 : RandomChatMessageUtil.getRandomMessages(6)) {
            addData(new TextMessageBean(getString(i10)));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getParentFragment() != null && (getParentFragment() instanceof OnFirstItemClickListener)) {
            this.f16956a = (OnFirstItemClickListener) getParentFragment();
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.IMGREET);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new LinearLayoutManager(getActivity(), 0, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.layout_text_message, viewGroup, false));
    }
}
