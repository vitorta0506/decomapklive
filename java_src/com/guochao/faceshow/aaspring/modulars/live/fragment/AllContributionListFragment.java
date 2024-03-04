package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.RankListParams;
import com.guochao.faceshow.aaspring.beans.RankListResult;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.r;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class AllContributionListFragment extends BaseRecyclerViewFragment<RankListResult, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private View f19151a;

    /* renamed from: c  reason: collision with root package name */
    View f19153c;

    /* renamed from: e  reason: collision with root package name */
    private String f19155e;

    /* renamed from: f  reason: collision with root package name */
    private int f19156f;
    @BindView
    ImageView mImageView;

    /* renamed from: b  reason: collision with root package name */
    List<RankListResult> f19152b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    boolean f19154d = false;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<RankListResult>> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<RankListResult>> aVar) {
            if (AllContributionListFragment.this.f19152b.isEmpty()) {
                AllContributionListFragment allContributionListFragment = AllContributionListFragment.this;
                if (!allContributionListFragment.f19154d) {
                    allContributionListFragment.mImageView.setVisibility(0);
                    AllContributionListFragment.this.getRecyclerView().setVisibility(8);
                }
            }
            AllContributionListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        @RequiresApi(api = 24)
        public void onResponse(@Nullable List<RankListResult> list, @NonNull FaceCastBaseResponse<List<RankListResult>> faceCastBaseResponse) {
            int i9;
            if (list != null && list.size() > 0) {
                AllContributionListFragment allContributionListFragment = AllContributionListFragment.this;
                allContributionListFragment.f19154d = true;
                if (allContributionListFragment.getCurrentPage() == AllContributionListFragment.this.getDefaultPage()) {
                    AllContributionListFragment.this.f19152b.clear();
                }
                for (RankListResult rankListResult : list) {
                    if (AllContributionListFragment.this.getList().contains(rankListResult)) {
                        AllContributionListFragment.this.f19152b.remove(rankListResult);
                    }
                }
                if (list.size() > 3) {
                    AllContributionListFragment.this.f19152b.addAll(list.subList(3, list.size()));
                }
                AllContributionListFragment allContributionListFragment2 = AllContributionListFragment.this;
                allContributionListFragment2.setDatas(allContributionListFragment2.f19152b);
                AllContributionListFragment.this.notifyDataLoaded(true);
                View findViewById = AllContributionListFragment.this.f19153c.findViewById(R.id.no1RL);
                View findViewById2 = AllContributionListFragment.this.f19153c.findViewById(R.id.no2RL);
                View findViewById3 = AllContributionListFragment.this.f19153c.findViewById(R.id.no3RL);
                if (list.size() >= 1) {
                    findViewById.setVisibility(0);
                    HeadPortraitView headPortraitView = (HeadPortraitView) AllContributionListFragment.this.f19153c.findViewById(R.id.img_topics_one1);
                    TextView textView = (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.nameTV1);
                    ImageView imageView = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.gender1);
                    LevelView levelView = (LevelView) AllContributionListFragment.this.f19153c.findViewById(R.id.level_view1);
                    ImageView imageView2 = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.praise_num1);
                    AllContributionListFragment.this.a2(findViewById, headPortraitView, textView, imageView, levelView, (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.count_tv1), list.get(0));
                } else {
                    findViewById.setVisibility(4);
                }
                if (list.size() >= 2) {
                    findViewById2.setVisibility(0);
                    HeadPortraitView headPortraitView2 = (HeadPortraitView) AllContributionListFragment.this.f19153c.findViewById(R.id.img_topics_one2);
                    TextView textView2 = (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.nameTV2);
                    ImageView imageView3 = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.gender2);
                    LevelView levelView2 = (LevelView) AllContributionListFragment.this.f19153c.findViewById(R.id.level_view2);
                    ImageView imageView4 = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.praise_num2);
                    RankListResult rankListResult2 = list.get(1);
                    i9 = 4;
                    AllContributionListFragment.this.a2(findViewById2, headPortraitView2, textView2, imageView3, levelView2, (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.count_tv2), rankListResult2);
                } else {
                    i9 = 4;
                    findViewById2.setVisibility(4);
                }
                if (list.size() >= 3) {
                    findViewById3.setVisibility(0);
                    HeadPortraitView headPortraitView3 = (HeadPortraitView) AllContributionListFragment.this.f19153c.findViewById(R.id.img_topics_one);
                    TextView textView3 = (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.nameTV);
                    ImageView imageView5 = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.gender);
                    LevelView levelView3 = (LevelView) AllContributionListFragment.this.f19153c.findViewById(R.id.level_view);
                    ImageView imageView6 = (ImageView) AllContributionListFragment.this.f19153c.findViewById(R.id.praise_num);
                    AllContributionListFragment.this.a2(findViewById3, headPortraitView3, textView3, imageView5, levelView3, (TextView) AllContributionListFragment.this.f19153c.findViewById(R.id.count_tv), list.get(2));
                } else {
                    findViewById3.setVisibility(i9);
                }
                AllContributionListFragment allContributionListFragment3 = AllContributionListFragment.this;
                allContributionListFragment3.removeHeaderView(allContributionListFragment3.f19153c);
                AllContributionListFragment allContributionListFragment4 = AllContributionListFragment.this;
                allContributionListFragment4.addHeaderView(allContributionListFragment4.f19153c, 200);
                return;
            }
            if (AllContributionListFragment.this.f19152b.isEmpty()) {
                AllContributionListFragment allContributionListFragment5 = AllContributionListFragment.this;
                if (!allContributionListFragment5.f19154d) {
                    allContributionListFragment5.mImageView.setVisibility(0);
                    AllContributionListFragment.this.getRecyclerView().setVisibility(8);
                    AllContributionListFragment.this.notifyDataLoaded(false);
                }
            }
            AllContributionListFragment.this.mImageView.setVisibility(8);
            AllContributionListFragment.this.getRecyclerView().setVisibility(0);
            AllContributionListFragment.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AllContributionListFragment.this.reload();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V1(RankListResult rankListResult, View view) {
        Intent intent = new Intent(getActivity(), UserHomePageAct.class);
        intent.putExtra("from", 1);
        intent.putExtra(Contants.USER_ID, rankListResult.getUserId());
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W1(RankListResult rankListResult, View view) {
        Intent intent = new Intent(getActivity(), UserHomePageAct.class);
        intent.putExtra("from", 1);
        intent.putExtra(Contants.USER_ID, rankListResult.getUserId());
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(RankListResult rankListResult, View view) {
        Intent intent = new Intent(getActivity(), UserHomePageAct.class);
        intent.putExtra("from", 1);
        intent.putExtra(Contants.USER_ID, rankListResult.getUserId());
        startActivity(intent);
    }

    private void Z1(TextView textView, String str) {
        String str2;
        int measuredHeight;
        int i9;
        if (str == null) {
            return;
        }
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.mipmap.zuanshi);
        int length = getString(R.string.sent).length();
        int length2 = str.length();
        if (length < 7 && length2 < 7) {
            str2 = getString(R.string.sent) + " {icon}" + str;
        } else {
            str2 = getString(R.string.sent) + "\n{icon}" + str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str2);
        if (drawable == null) {
            textView.setText(spannableStringBuilder);
            return;
        }
        int dp2px = DensityUtil.dp2px(17.0f);
        int dp2px2 = DensityUtil.dp2px(17.0f);
        TextView textView2 = new TextView(textView.getContext());
        textView2.setTextSize(2, 12.0f);
        textView2.measure(0, 0);
        drawable.setBounds(0, 0, (int) (((dp2px * measuredHeight) * 1.0f) / dp2px2), textView2.getMeasuredHeight());
        r rVar = new r(drawable);
        int indexOf = spannableStringBuilder.toString().indexOf("{icon}");
        if (indexOf >= 0 && (i9 = indexOf + 6) <= spannableStringBuilder.length()) {
            spannableStringBuilder.setSpan(rVar, indexOf, i9, 17);
        }
        SpanColorUtils.setColorSpan(textView.getContext().getResources().getColor(R.color.orange_FF7617), spannableStringBuilder, str, 1.1f);
        textView.setText(spannableStringBuilder);
        textView.measure(0, 0);
        textView.getMeasuredWidth();
        DensityUtil.dp2px(50.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2(View view, HeadPortraitView headPortraitView, TextView textView, ImageView imageView, LevelView levelView, TextView textView2, final RankListResult rankListResult) {
        if (rankListResult != null) {
            UserBean userBean = new UserBean();
            userBean.img = rankListResult.getImg();
            headPortraitView.d(userBean);
            textView.setText(rankListResult.getNickName());
            if (Integer.parseInt(rankListResult.getSex()) == 0) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.nv_livecon);
            } else if (Integer.parseInt(rankListResult.getSex()) == 1) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.mipmap.nan_livecon);
            } else {
                imageView.setVisibility(8);
            }
            levelView.setLevel(rankListResult.getLevelId());
            Z1(textView2, rankListResult.getTotalPrice());
            view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    AllContributionListFragment.this.W1(rankListResult, view2);
                }
            });
        }
    }

    private void b2(BaseViewHolder baseViewHolder, final RankListResult rankListResult, ImageView imageView, HeadPortraitView headPortraitView) {
        if (Integer.parseInt(rankListResult.getSex()) == 0) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.nv_livecon);
        } else if (Integer.parseInt(rankListResult.getSex()) == 1) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.nan_livecon);
        } else {
            imageView.setVisibility(8);
        }
        ((LevelView) baseViewHolder.getView(R.id.level_view)).setLevel(rankListResult.getLevelId());
        if (Integer.parseInt(rankListResult.getTotalPrice()) >= 0) {
            baseViewHolder.setText(R.id.count_tv, rankListResult.getTotalPrice());
        }
        headPortraitView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllContributionListFragment.this.X1(rankListResult, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: U1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, final RankListResult rankListResult) {
        LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.ll_view);
        LinearLayout linearLayout2 = (LinearLayout) baseViewHolder.getView(R.id.ll_one_view);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.ic_order_top);
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.img_topics_one);
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.top_img_one);
        ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.gender_top);
        LevelView levelView = (LevelView) baseViewHolder.getView(R.id.level_view_top);
        ImageView imageView4 = (ImageView) baseViewHolder.getView(R.id.ic_order);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_level_des);
        ImageView imageView5 = (ImageView) baseViewHolder.getView(R.id.gender);
        HeadPortraitView headPortraitView2 = (HeadPortraitView) baseViewHolder.getView(R.id.hpv_head);
        ImageView imageView6 = (ImageView) baseViewHolder.getView(R.id.top_img);
        if (!TextUtils.isEmpty(rankListResult.getNickName())) {
            baseViewHolder.setText(R.id.name, rankListResult.getNickName());
        }
        UserBean userBean = new UserBean();
        userBean.img = rankListResult.getImg();
        linearLayout.setVisibility(0);
        linearLayout2.setVisibility(8);
        imageView4.setImageResource(R.mipmap.ic_live_level3);
        imageView4.setVisibility(8);
        headPortraitView2.d(userBean);
        imageView6.setVisibility(8);
        textView.setText((i9 + 4) + "");
        textView.setVisibility(0);
        b2(baseViewHolder, rankListResult, imageView5, headPortraitView2);
        headPortraitView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllContributionListFragment.this.V1(rankListResult, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: Y1 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, RankListResult rankListResult) {
    }

    public void c2(String str, int i9) {
        this.f19155e = str;
        this.f19156f = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_all_contribution;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        setFooterView(8);
        this.f19153c = LayoutInflater.from(getActivity()).inflate(R.layout.layout_b_header, (ViewGroup) getRecyclerView(), false);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        RankListParams rankListParams = new RankListParams();
        rankListParams.setType(String.valueOf(this.f19156f));
        rankListParams.setLimit(ThirdPushHelper.TYPE_HUAWEI);
        rankListParams.setPage(String.valueOf(i9));
        rankListParams.setUserId(this.f19155e);
        post("tokens/live/newLive/getAudienceRankList").u(rankListParams).M(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        setFooterView(8);
        if (!z10) {
            showEmptyView();
            return;
        }
        View view = this.f19151a;
        if (view != null) {
            removeHeaderView(view);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        List<RankListResult> list = this.f19152b;
        if (list != null && list.isEmpty() && !this.f19154d) {
            View view = this.f19151a;
            if (view == null) {
                View inflate = getLayoutInflater().inflate(R.layout.layout_live_list_empty, (ViewGroup) getRecyclerView(), false);
                this.f19151a = inflate;
                inflate.setOnClickListener(new b());
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f19151a.getLayoutParams();
                if (marginLayoutParams != null) {
                    marginLayoutParams.height = -1;
                    marginLayoutParams.setMargins(0, 0, 0, 0);
                    this.f19151a.setLayoutParams(marginLayoutParams);
                    View view2 = this.f19151a;
                    view2.setPadding(view2.getPaddingLeft(), DensityUtil.dp2px(getActivity(), 64.0f), this.f19151a.getRight(), this.f19151a.getPaddingBottom());
                }
                this.f19151a.setBackgroundResource(R.color.white);
            } else {
                removeHeaderView(view);
            }
            addHeaderView(this.f19151a, 1002);
            setFooterView(8);
            return;
        }
        View view3 = this.f19151a;
        if (view3 != null) {
            removeHeaderView(view3);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_live_all_contribution, viewGroup, false));
    }
}
