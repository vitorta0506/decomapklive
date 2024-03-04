package com.guochao.faceshow.gift.controller;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.facetoface.adapter.GiftPannelAdapter;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.HorizontalPageLayoutManager;
import com.guochao.faceshow.views.PagingScrollHelper;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveGiftPopController extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f25284a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f25285b;

    /* renamed from: c  reason: collision with root package name */
    private GiftPannelAdapter f25286c;

    /* renamed from: d  reason: collision with root package name */
    private List<GiftData.GiftItemData> f25287d;

    /* renamed from: e  reason: collision with root package name */
    private Context f25288e;

    /* renamed from: f  reason: collision with root package name */
    private String f25289f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends c<List<GiftData.GiftItemData>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<GiftData.GiftItemData>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<GiftData.GiftItemData> list, @NonNull FaceCastBaseResponse<List<GiftData.GiftItemData>> faceCastBaseResponse) {
            if (list != null && list.size() != 0) {
                LiveGiftPopController.this.f25285b.setVisibility(8);
                LiveGiftPopController.this.f25287d = list;
                List<GiftData.GiftItemData> list2 = LiveGiftPopController.this.f25287d;
                if (list2 == null || list2.size() <= 0) {
                    return;
                }
                LiveGiftPopController.this.f25286c.setData(list2);
                return;
            }
            LiveGiftPopController.this.f25285b.setVisibility(0);
        }
    }

    public static LiveGiftPopController T1(String str) {
        LiveGiftPopController liveGiftPopController = new LiveGiftPopController();
        Bundle bundle = new Bundle();
        bundle.putString("liveId", str);
        liveGiftPopController.setArguments(bundle);
        return liveGiftPopController;
    }

    public void U1() {
        post(Contants.OWNER_HAVE_GIFT_LIST).D("ITEM_ID", this.f25289f).D("is_type", "2").M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.live_gift_pop_view;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f25285b = (LinearLayout) view.findViewById(R.id.gift_pop_empty_ly);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.gift_lock_recycle_view);
        this.f25284a = recyclerView;
        recyclerView.setLayoutManager(new HorizontalPageLayoutManager(2, 4));
        new PagingScrollHelper().m(this.f25284a);
        GiftPannelAdapter giftPannelAdapter = new GiftPannelAdapter(this.f25288e);
        this.f25286c = giftPannelAdapter;
        this.f25284a.setAdapter(giftPannelAdapter);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.f25288e = context;
        if (getArguments() != null) {
            this.f25289f = getArguments().getString("liveId");
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        U1();
    }
}
