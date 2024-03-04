package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import java.util.List;
/* loaded from: classes3.dex */
public class IMFaceFragment extends BaseRecyclerViewFragment<ResourceListItemBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    com.guochao.faceshow.aaspring.modulars.chat.utils.f f16957a;

    /* renamed from: b  reason: collision with root package name */
    a f16958b;

    /* renamed from: c  reason: collision with root package name */
    int f16959c;

    /* loaded from: classes3.dex */
    public interface a {
        List<ResourceListItemBean> j(int i9);
    }

    public static Fragment R1(int i9) {
        IMFaceFragment iMFaceFragment = new IMFaceFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("data", i9);
        iMFaceFragment.setArguments(bundle);
        return iMFaceFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: Q1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, ResourceListItemBean resourceListItemBean) {
        hc.a.j((ImageView) baseViewHolder.getView(R.id.icon), resourceListItemBean.getDownloadUrl());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: S1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, ResourceListItemBean resourceListItemBean) {
        com.guochao.faceshow.aaspring.modulars.chat.utils.f fVar = this.f16957a;
        if (fVar != null) {
            fVar.onFaceItemClick(resourceListItemBean, baseViewHolder.itemView, i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_im_emoji;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        getList().clear();
        getList().addAll(this.f16958b.j(this.f16959c));
        notifyDataLoaded();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof com.guochao.faceshow.aaspring.modulars.chat.utils.f) {
            this.f16957a = (com.guochao.faceshow.aaspring.modulars.chat.utils.f) context;
        }
        if (getParentFragment() instanceof a) {
            this.f16958b = (a) getParentFragment();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f16959c = getArguments().getInt("data");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new GridLayoutManager(getActivity(), getResources().getInteger(R.integer.emoji_column));
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.layout_emoji, viewGroup, false));
    }
}
