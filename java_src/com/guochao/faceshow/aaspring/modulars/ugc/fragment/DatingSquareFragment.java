package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.DatingSquare;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DatingSquareActivity;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PushUtils;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class DatingSquareFragment extends BaseRecyclerViewFragment<DatingSquare, BaseViewHolder> implements aa.g {

    /* renamed from: a  reason: collision with root package name */
    private int f22667a;

    /* renamed from: b  reason: collision with root package name */
    private String f22668b;

    /* renamed from: c  reason: collision with root package name */
    private int f22669c;

    /* renamed from: d  reason: collision with root package name */
    private int f22670d;

    /* renamed from: e  reason: collision with root package name */
    aa.c f22671e;

    /* renamed from: f  reason: collision with root package name */
    private View f22672f;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DatingSquare>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22673a;

        a(int i9) {
            this.f22673a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<DatingSquare>> aVar) {
            if (this.f22673a == 1 && DatingSquareFragment.this.getList().size() == 0) {
                DatingSquareFragment.this.notifyDataLoaded(true);
                DatingSquareFragment.this.showEmptyView();
            } else {
                DatingSquareFragment.this.notifyDataLoaded(false);
            }
            DatingSquareFragment datingSquareFragment = DatingSquareFragment.this;
            datingSquareFragment.f22671e.P(datingSquareFragment.f22667a, null);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<DatingSquare> list, @NonNull FaceCastBaseResponse<List<DatingSquare>> faceCastBaseResponse) {
            if (list != null && list.size() > 0) {
                DatingSquareFragment.this.addDatas(list);
                if (this.f22673a == 1) {
                    DatingSquareFragment.this.getList().get(0).setLoadGif(true);
                    if (PushUtils.CHAT_PUSH_TYPE.equals(DatingSquareFragment.this.f22668b)) {
                        FragmentActivity activity = DatingSquareFragment.this.getActivity();
                        if (!CustomNameCacheUtils.getBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, DatingSquareFragment.this.getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE")) {
                            ((DatingSquareActivity) DatingSquareFragment.this.getActivity()).t0();
                        }
                    }
                    if (PushUtils.CHAT_PUSH_TYPE.equals(DatingSquareFragment.this.f22668b) && DatingSquareFragment.this.getCurrentUser().getIsInvited() == 0 && DatingSquareFragment.this.getCurrentUser().getAppointState() == 3) {
                        ((DatingSquareActivity) DatingSquareFragment.this.getActivity()).r0();
                    }
                }
            }
            if (this.f22673a == 1 && list.size() == 0) {
                DatingSquareFragment.this.clearAll();
                DatingSquareFragment.this.notifyDataLoaded(false);
                DatingSquareFragment.this.showEmptyView();
            } else {
                DatingSquareFragment.this.notifyDataLoaded(list.size() > 0);
                if (DatingSquareFragment.this.f22672f != null) {
                    DatingSquareFragment datingSquareFragment = DatingSquareFragment.this;
                    datingSquareFragment.removeHeaderView(datingSquareFragment.f22672f);
                }
            }
            DatingSquareFragment datingSquareFragment2 = DatingSquareFragment.this;
            datingSquareFragment2.f22671e.P(datingSquareFragment2.f22667a, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DatingSquare f22675a;

        b(DatingSquare datingSquare) {
            this.f22675a = datingSquare;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                DatingSquareFragment.this.X1(this.f22675a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22677a;

        c(int i9) {
            this.f22677a = i9;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i9) {
            if (DatingSquareFragment.this.getItemViewType(i9) == 1) {
                return this.f22677a;
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DatingSquareFragment.this.reload();
        }
    }

    public static Fragment V1(int i9, String str) {
        DatingSquareFragment datingSquareFragment = new DatingSquareFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        bundle.putString("id", str);
        datingSquareFragment.setArguments(bundle);
        return datingSquareFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X1(DatingSquare datingSquare) {
        if (getActivity() != null) {
            com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().K(getActivity(), datingSquare);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: U1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DatingSquare datingSquare) {
        RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) baseViewHolder.getView(R.id.iv_cover);
        CardView cardView = (CardView) baseViewHolder.getView(R.id.item);
        FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R.id.fl_call);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.online_state);
        TextView textView = (TextView) baseViewHolder.getView(R.id.online_text);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.user_name);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.address);
        AgeAndSexView ageAndSexView = (AgeAndSexView) baseViewHolder.getView(R.id.age_sex_view);
        View view = baseViewHolder.getView(R.id.live_status_view_area);
        if (datingSquare.getLiveData() != null && datingSquare.getLiveData().getIsLive() == 1) {
            View view2 = baseViewHolder.getView(R.id.live_status_view);
            ((TextView) baseViewHolder.getView(R.id.status_text)).setTextColor(-1);
            view2.setBackgroundResource(R.drawable.shape_ugc_live_2);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.anim_live_status);
            imageView2.setImageTintList(ColorStateList.valueOf(-1));
            ((AnimationDrawable) imageView2.getDrawable()).start();
            view.setVisibility(0);
            imageView.setVisibility(8);
            textView.setVisibility(8);
        } else {
            view.setVisibility(8);
            if (datingSquare.getOnLineStatue() == 1) {
                imageView.setVisibility(0);
                textView.setVisibility(0);
                imageView.setImageResource(R.mipmap.appointment_online);
                textView.setText(getString(R.string.personal_online));
            } else {
                imageView.setVisibility(8);
                textView.setVisibility(8);
            }
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) cardView.getLayoutParams();
        if (i9 % 2 == 0) {
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(8.0f));
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(4.0f));
        } else {
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(4.0f));
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(8.0f));
        }
        cardView.setLayoutParams(marginLayoutParams);
        textView2.setMaxWidth(DensityUtil.dp2px(DensityUtil.px2dip(this.f22670d)) - DensityUtil.dp2px(90.0f));
        ageAndSexView.b(datingSquare.getGender(), datingSquare.getAge());
        textView2.setText(!TextUtils.isEmpty(datingSquare.getNickName()) ? datingSquare.getNickName() : "");
        textView3.setText(TextUtils.isEmpty(datingSquare.getCountryName()) ? "" : datingSquare.getCountryName());
        if (getActivity() != null) {
            com.bumptech.glide.c.x(getActivity()).e().Z0(datingSquare.getGifUrl()).b0(R.mipmap.icon_live_liveloading).l(R.mipmap.icon_live_liveloading).Q0(ratioHeightImageView);
        }
        frameLayout.setOnClickListener(new b(datingSquare));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: W1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, DatingSquare datingSquare) {
        if (datingSquare.getLiveData() != null && datingSquare.getLiveData().getIsLive() == 1) {
            RoomItemData roomItemData = new RoomItemData();
            roomItemData.setLiveId(String.valueOf(datingSquare.getLiveData().getLiveId()));
            roomItemData.setLiveType(String.valueOf(datingSquare.getLiveData().getLiveType()));
            roomItemData.setLiveImg(datingSquare.getLiveData().getLiveImg());
            com.guochao.faceshow.aaspring.modulars.live.common.t.c().g(getActivity(), Collections.singletonList(roomItemData), 0, 0, 0);
            return;
        }
        UserHomePageAct.start(getActivity(), datingSquare.getUserId());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.f22670d = getResources().getDisplayMetrics().widthPixels / 2;
        if (getArguments() != null) {
            this.f22667a = getArguments().getInt("position");
            this.f22668b = getArguments().getString("id");
        }
        this.f22669c = ((DatingSquareActivity) getActivity()).m0();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        int m02 = ((DatingSquareActivity) getActivity()).m0();
        get("tokens/appoint/userList").B("recommend", !PushUtils.CHAT_PUSH_TYPE.equals(this.f22668b) ? 1 : 0).D(PushUtils.CHAT_PUSH_TYPE.equals(this.f22668b) ? "" : "dateLang", PushUtils.CHAT_PUSH_TYPE.equals(this.f22668b) ? "" : this.f22668b).B(m02 != 2 ? "sex" : "", m02 == 2 ? 0 : ((DatingSquareActivity) getActivity()).m0()).B("currPage", i9).B("pageSize", 20).M(new a(i9));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        BaseActivity baseActivity = (BaseActivity) getActivity();
        if (baseActivity instanceof aa.c) {
            this.f22671e = (aa.c) baseActivity;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        int integer = getResources().getInteger(R.integer.dating_square_count);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), integer);
        gridLayoutManager.setSpanSizeLookup(new c(integer));
        return gridLayoutManager;
    }

    @Override // aa.g
    public void onGenderChanged(int i9) {
        if (this.f22669c != i9) {
            this.f22669c = i9;
            reload();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        if (getList().isEmpty()) {
            View view = this.f22672f;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.f22672f = inflate;
                inflate.setOnClickListener(new d());
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f22672f.getLayoutParams();
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    this.f22672f.setLayoutParams(marginLayoutParams);
                    if (getActivity() != null) {
                        View view2 = this.f22672f;
                        view2.setPadding(view2.getPaddingLeft(), DensityUtil.dp2px(getActivity(), 140.0f), this.f22672f.getRight(), this.f22672f.getPaddingBottom());
                    }
                }
                this.f22672f.setBackgroundResource(R.color.white);
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.f22672f, 1002);
            setFooterView(8);
            return;
        }
        View view3 = this.f22672f;
        if (view3 != null) {
            removeHeaderView(view3);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_dating_square, viewGroup, false));
    }
}
