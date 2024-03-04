package com.guochao.faceshow.aaspring.modulars.dressmarket.fragment;

import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BaseBuyDressDialog;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.BuyEntranceCarDialog;
import com.guochao.faceshow.aaspring.modulars.dressmarket.dialog.PreviewDressDialog;
import com.guochao.faceshow.aaspring.modulars.dressmarket.send.DressUpSendActivity;
/* loaded from: classes3.dex */
public class EntranceCarMarketFragment extends BaseDressUpMarketFragment {
    @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.BaseDressUpMarketFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: S1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DressResponse.DressBean dressBean) {
        super.convertItem(baseViewHolder, i9, dressBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.BaseDressUpMarketFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: V1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DressResponse.DressBean dressBean) {
        PreviewDressDialog.W1(getChildFragmentManager(), dressBean);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.BaseDressUpMarketFragment
    protected void W1(int i9) {
        BaseBuyDressDialog.a2(getChildFragmentManager(), BuyEntranceCarDialog.class, getList().get(i9));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.BaseDressUpMarketFragment
    protected void X1(int i9) {
        DressUpSendActivity.B0(getContext(), getList().get(i9));
    }
}
