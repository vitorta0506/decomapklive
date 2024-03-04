package com.guochao.faceshow.aaspring.modulars.dressmarket.fragment;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressResponse;
import com.guochao.faceshow.aaspring.modulars.dressmarket.bean.DressSpecBean;
import com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.BaseDressUpMarketFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseDressUpMarketFragment extends BaseRecyclerViewFragment<DressResponse.DressBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private int f17672a;

    /* renamed from: b  reason: collision with root package name */
    private View f17673b;

    /* loaded from: classes3.dex */
    class a extends c<DressResponse> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable DressResponse dressResponse, @NonNull FaceCastBaseResponse<DressResponse> faceCastBaseResponse) {
            if (dressResponse != null && dressResponse.getList() != null) {
                BaseDressUpMarketFragment.this.addDatas(dressResponse.getList());
                BaseDressUpMarketFragment baseDressUpMarketFragment = BaseDressUpMarketFragment.this;
                baseDressUpMarketFragment.notifyDataLoaded(baseDressUpMarketFragment.getList().size() < dressResponse.getTotalCount());
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<DressResponse> aVar) {
            BaseDressUpMarketFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T1(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            W1(((Integer) view.getTag()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U1(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            X1(((Integer) view.getTag()).intValue());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: S1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, DressResponse.DressBean dressBean) {
        ((ViewGroup.MarginLayoutParams) baseViewHolder.itemView.getLayoutParams()).topMargin = i9 < 2 ? DensityUtil.dp2px(5.0f) : 0;
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_dress_name);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_dress_tag);
        ImageView imageView2 = (ImageView) baseViewHolder.itemView.findViewById(R.id.dress_svga);
        TextView textView2 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_dress_price);
        View findViewById = baseViewHolder.itemView.findViewById(R.id.preview_icon);
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.itemView.findViewById(R.id.avatar_view);
        boolean z10 = this instanceof PendantAvatarMarketFragment;
        imageView2.setVisibility(z10 ? 8 : 0);
        findViewById.setVisibility(this instanceof EntranceCarMarketFragment ? 0 : 8);
        headPortraitView.setVisibility(z10 ? 0 : 8);
        TextView textView3 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_buy);
        TextView textView4 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_send);
        textView.setText(dressBean.getName());
        if (dressBean.getIsVip() == 2) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.dress_up_svip);
        } else if (dressBean.getIsVip() == 1) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.dress_up_vip);
        } else if (dressBean.getTagType() == 2) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.dress_up_new);
        } else if (dressBean.getTagType() == 1) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.dress_up_hot);
        } else if (dressBean.getTagType() == 3) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.sale);
        } else {
            imageView.setVisibility(8);
        }
        if (z10) {
            UserBean userBean = new UserBean();
            UserVipData userVipData = new UserVipData();
            userVipData.setDressHead((!q7.a.e().j() || TextUtils.isEmpty(dressBean.getArThumbnailImage())) ? dressBean.getThumbnailImage() : dressBean.getArThumbnailImage());
            userBean.img = getCurrentUser().img;
            userBean.setUserVipMsg(userVipData);
            headPortraitView.j(userBean);
        } else {
            com.bumptech.glide.c.v(imageView2).r((!q7.a.e().j() || TextUtils.isEmpty(dressBean.getArThumbnailImage())) ? dressBean.getThumbnailImage() : dressBean.getArThumbnailImage()).b0(R.mipmap.f_dress_empty).Q0(imageView2);
        }
        List<DressSpecBean> dressMallRuleList = dressBean.getDressMallRuleList();
        if (dressMallRuleList == null || dressMallRuleList.isEmpty()) {
            return;
        }
        Iterator<DressSpecBean> it = dressMallRuleList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            DressSpecBean next = it.next();
            if (next.getRuleId() == dressBean.getDefaultRuleId()) {
                next.setPriceSpecContent(textView2);
                break;
            }
        }
        textView3.setText(getString(R.string.f_dress_buy));
        textView4.setText(getString(R.string.f_dress_send));
        textView3.setTag(Integer.valueOf(i9));
        textView4.setTag(Integer.valueOf(i9));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: V1 */
    public abstract void onItemClick(BaseViewHolder baseViewHolder, int i9, DressResponse.DressBean dressBean);

    protected abstract void W1(int i9);

    protected abstract void X1(int i9);

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dressup_market;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        View findViewById = view.findViewById(R.id.empty_view);
        this.f17673b = findViewById;
        ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).topMargin = DensityUtil.dp2px(40.0f);
        if (this instanceof EntranceCarMarketFragment) {
            this.f17672a = 0;
        }
        if (this instanceof PendantAvatarMarketFragment) {
            this.f17672a = 1;
        }
        if (this instanceof ChatShadingMarketFragment) {
            this.f17672a = 2;
        }
        getRefreshableLayout().setBackgroundColor(ContextCompat.getColor(view.getContext(), R.color.transparent));
        ((ViewGroup.MarginLayoutParams) getRecyclerView().getLayoutParams()).setMargins(DensityUtil.dp2px(5.0f), 0, DensityUtil.dp2px(5.0f), DensityUtil.dp2px(5.0f));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        post("tokens/mall/goodList").y("type", Integer.valueOf(this.f17672a)).y("pageNo", Integer.valueOf(i9)).y("pageSize", 20).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        if (getList().isEmpty()) {
            hideFooterView();
            this.f17673b.setVisibility(0);
            return;
        }
        setFooterView(0);
        this.f17673b.setVisibility(8);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        return new GridLayoutManager(getContext(), 2, 1, false);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(getContext()).inflate(R.layout.item_entrance_car_market, viewGroup, false));
        baseViewHolder.getView(R.id.tv_buy).setOnClickListener(new View.OnClickListener() { // from class: p8.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseDressUpMarketFragment.this.T1(view);
            }
        });
        baseViewHolder.getView(R.id.tv_send).setOnClickListener(new View.OnClickListener() { // from class: p8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseDressUpMarketFragment.this.U1(view);
            }
        });
        return baseViewHolder;
    }
}
