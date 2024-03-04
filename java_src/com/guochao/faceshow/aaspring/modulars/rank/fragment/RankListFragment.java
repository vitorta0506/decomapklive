package com.guochao.faceshow.aaspring.modulars.rank.fragment;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.RankListBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.LiveInfoUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class RankListFragment extends BaseRecyclerViewFragment<RankListBean.RankRowsBean, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private int f21680a;

    /* renamed from: b  reason: collision with root package name */
    private int f21681b;

    /* renamed from: c  reason: collision with root package name */
    private final List<RankListBean.RankRowsBean> f21682c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private String f21683d;

    /* renamed from: e  reason: collision with root package name */
    String f21684e;

    /* renamed from: f  reason: collision with root package name */
    View f21685f;

    /* renamed from: g  reason: collision with root package name */
    private BaseViewHolder f21686g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f21687h;

    /* renamed from: i  reason: collision with root package name */
    private View f21688i;

    /* renamed from: j  reason: collision with root package name */
    private View f21689j;

    /* renamed from: k  reason: collision with root package name */
    View f21690k;

    /* renamed from: l  reason: collision with root package name */
    View f21691l;

    /* renamed from: m  reason: collision with root package name */
    View f21692m;
    @BindView
    TextView mBottomTips;
    @BindView
    LinearLayout mEmptyView;
    @BindView
    View mRealEmptyView;

    /* renamed from: n  reason: collision with root package name */
    View f21693n;

    /* renamed from: o  reason: collision with root package name */
    View[] f21694o;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<RankListBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<RankListBean> aVar) {
            RankListFragment.this.getList().clear();
            RankListFragment.this.showEmptyView();
            RankListFragment.this.dismissProgressDialog();
            RankListFragment.this.notifyDataLoaded(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(RankListBean rankListBean, @NonNull FaceCastBaseResponse<RankListBean> faceCastBaseResponse) {
            if (rankListBean == null) {
                rankListBean = new RankListBean();
                rankListBean.setRankInfo(new RankListBean.RankRowsBean());
                rankListBean.setRows(new ArrayList());
            }
            List arrayList = new ArrayList(rankListBean.getRows());
            if (rankListBean.getRankInfo() != null) {
                RankListFragment.this.e2(rankListBean.getRankInfo());
            }
            if (arrayList.isEmpty()) {
                RankListFragment.this.getList().clear();
                RankListFragment.this.showEmptyView();
            } else {
                RankListFragment.this.f21682c.clear();
                arrayList = RankListFragment.this.m2(arrayList);
                for (int i9 = 0; i9 < RankListFragment.this.f21682c.size(); i9++) {
                    RankListFragment rankListFragment = RankListFragment.this;
                    rankListFragment.c2(rankListFragment.f21694o[i9], (RankListBean.RankRowsBean) rankListFragment.f21682c.get(i9), i9);
                }
                RankListFragment.this.getList().clear();
                RankListFragment.this.addDatas(arrayList);
            }
            RankListFragment.this.k2(arrayList);
            RankListFragment.this.notifyDataLoaded();
            if (RankListFragment.this.getRecyclerView() != null) {
                RankListFragment.this.getRecyclerView().scrollToPosition(0);
            }
            RankListFragment.this.dismissProgressDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f21696a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ RankListBean.RankRowsBean f21697b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f21698c;

        b(BaseViewHolder baseViewHolder, RankListBean.RankRowsBean rankRowsBean, int i9) {
            this.f21696a = baseViewHolder;
            this.f21697b = rankRowsBean;
            this.f21698c = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                RankListFragment.this.l2(this.f21696a, this.f21697b, this.f21698c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RankListBean.RankRowsBean f21700a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f21701b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f21702c;

        c(RankListBean.RankRowsBean rankRowsBean, int i9, ImageView imageView) {
            this.f21700a = rankRowsBean;
            this.f21701b = i9;
            this.f21702c = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f21700a.getIsAttention() != 1) {
                RankListFragment.this.W1(this.f21700a, this.f21701b, this.f21702c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements hb.b<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f21704a;

        d(ImageView imageView) {
            this.f21704a = imageView;
        }

        @Override // hb.b
        /* renamed from: a */
        public void onResponse(String str) {
            if (((Integer) this.f21704a.getTag()).intValue() <= 3) {
                this.f21704a.setImageResource(R.drawable.btn_rank_list_focused);
            } else {
                this.f21704a.setImageResource(R.mipmap.followed_normal);
            }
        }

        @Override // hb.b
        public /* synthetic */ void onFail(String str) {
            hb.a.a(this, str);
        }
    }

    public static RankListFragment b2(int i9) {
        RankListFragment rankListFragment = new RankListFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        rankListFragment.setArguments(bundle);
        return rankListFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(View view, RankListBean.RankRowsBean rankRowsBean, int i9) {
        if (rankRowsBean == null) {
            g2(view, i9);
        } else {
            Z1(rankRowsBean, i9, new BaseViewHolder(view));
        }
    }

    private void d2() {
        this.f21691l = this.f21690k.findViewById(R.id.first_area);
        this.f21692m = this.f21690k.findViewById(R.id.secon_area);
        View findViewById = this.f21690k.findViewById(R.id.third_area);
        this.f21693n = findViewById;
        this.f21694o = r2;
        View[] viewArr = {this.f21691l, this.f21692m, findViewById};
        View findViewById2 = this.f21690k.findViewById(R.id.content_area);
        int i9 = this.f21681b;
        if (i9 == 1) {
            this.f21690k.setBackgroundResource(R.color.rank_list_header_yellow);
            findViewById2.setBackgroundResource(R.mipmap.bg_money);
        } else if (i9 == 2) {
            this.f21690k.setBackgroundResource(R.color.rank_list_header_pink);
            findViewById2.setBackgroundResource(R.mipmap.bg_star);
        } else if (i9 != 3) {
        } else {
            this.f21690k.setBackgroundResource(R.color.rank_list_header_green);
            findViewById2.setBackgroundResource(R.mipmap.bg_time);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2(RankListBean.RankRowsBean rankRowsBean) {
        if (getView() == null) {
            return;
        }
        View findViewById = getView().findViewById(R.id.bottom_view);
        UserBean userBean = new UserBean();
        userBean.userId = rankRowsBean.getUserId();
        userBean.sex = rankRowsBean.getUserSex();
        userBean.img = rankRowsBean.getUserImg();
        userBean.countryFlag = rankRowsBean.getLogo();
        userBean.setUserVipMsg(rankRowsBean.getUserVipMsg());
        ((HeadPortraitView) findViewById.findViewById(R.id.avatar_view)).d(userBean);
        TextView textView = (TextView) findViewById.findViewById(R.id.user_name);
        TextView textView2 = (TextView) findViewById.findViewById(R.id.index);
        TextView textView3 = (TextView) findViewById.findViewById(R.id.value);
        if (this.f21681b == 3) {
            textView3.setText(rankRowsBean.getValue() + "h");
        } else {
            textView3.setText(rankRowsBean.getValue());
        }
        if (rankRowsBean.getNo() > 0) {
            textView2.setText(rankRowsBean.getNo() + "");
        } else {
            textView2.setText(R.string.not_in_list_rank);
        }
        FontUtils.setFont(textView3, 1);
        if (TextUtils.isEmpty(rankRowsBean.getNickName())) {
            rankRowsBean.setNickName("");
        }
        if (rankRowsBean.getNickName().length() >= 8) {
            TextViewUtils.setMaxEcplise(textView, 8, rankRowsBean.getNickName());
        } else {
            TextViewUtils.setMaxEcplise(textView, rankRowsBean.getNickName().length(), rankRowsBean.getNickName());
        }
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.icon);
        ((LevelView) findViewById.findViewById(R.id.level_view)).setLevel(rankRowsBean.getLevelName());
        TextView textView4 = (TextView) findViewById.findViewById(R.id.send_or_receive);
        int i9 = this.f21681b;
        if (i9 == 1) {
            imageView.setImageResource(R.mipmap.jewel);
            if (textView4 != null) {
                textView4.setText(getString(R.string.sent) + CertificateUtil.DELIMITER);
            }
        } else if (i9 == 2) {
            imageView.setImageResource(R.mipmap.f16052fb);
            if (textView4 != null) {
                textView4.setText(getString(R.string.receive) + CertificateUtil.DELIMITER);
            }
        } else if (i9 != 3) {
        } else {
            if (textView4 != null) {
                textView4.setText(getString(R.string.duration) + CertificateUtil.DELIMITER);
            }
            imageView.setVisibility(8);
        }
    }

    private void f2(RankListBean.RankRowsBean rankRowsBean) {
        RoomItemData roomItemData = new RoomItemData();
        roomItemData.setGroupId(rankRowsBean.getGroupId());
        roomItemData.setRoomID(rankRowsBean.getLiveId());
        roomItemData.setUserId(rankRowsBean.getUserId());
        roomItemData.setNickName(rankRowsBean.getNickName());
        roomItemData.setLiveType(rankRowsBean.getLiveType());
        roomItemData.setFlvUrl(rankRowsBean.getFlvUrl());
        roomItemData.setLiveId(rankRowsBean.getLiveId());
        roomItemData.setImg(rankRowsBean.getUserImg());
        roomItemData.setLiveCoverImg(rankRowsBean.getLiveImg());
        roomItemData.setStatus("0");
        LiveInfoUtils.jumpToBaseLiveRoomAct(roomItemData, this, 200);
    }

    private void i2(ImageView imageView, boolean z10) {
        int intValue = ((Integer) imageView.getTag()).intValue();
        if (!z10) {
            imageView.setImageResource(R.drawable.btn_follow_rank_list);
        } else if (intValue <= 3) {
            imageView.setImageResource(R.drawable.btn_rank_list_focused);
        } else {
            imageView.setImageResource(R.mipmap.followed_normal);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k2(List<RankListBean.RankRowsBean> list) {
        removeFooterView(this.f21688i);
        removeFooterView(this.f21689j);
        if (list.size() == 0) {
            addFooterView(this.f21689j, 107);
            this.mBottomTips.setVisibility(0);
        } else if (list.size() < 4) {
            this.mBottomTips.setVisibility(0);
        } else {
            this.mBottomTips.setVisibility(8);
            addFooterView(this.f21688i, 106);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(BaseViewHolder baseViewHolder, RankListBean.RankRowsBean rankRowsBean, int i9) {
        this.f21686g = baseViewHolder;
        if (rankRowsBean.getIsLive() == 0) {
            X1(rankRowsBean, i9);
            return;
        }
        Intent intent = new Intent(getActivity(), UserHomePageAct.class);
        intent.putExtra(Contants.USER_ID, rankRowsBean.getUserId());
        startActivityForResult(intent, 200);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<RankListBean.RankRowsBean> m2(List<RankListBean.RankRowsBean> list) {
        this.f21682c.clear();
        if (list.size() <= 3) {
            this.f21682c.addAll(list);
            while (this.f21682c.size() < 3) {
                this.f21682c.add(null);
            }
            return new ArrayList();
        }
        Iterator<RankListBean.RankRowsBean> it = list.iterator();
        for (int i9 = 0; it.hasNext() && i9 < 3; i9++) {
            this.f21682c.add(it.next());
            it.remove();
        }
        while (this.f21682c.size() < 3) {
            this.f21682c.add(null);
        }
        return list;
    }

    public void W1(RankListBean.RankRowsBean rankRowsBean, int i9, ImageView imageView) {
        ib.b.b(rankRowsBean.getUserId(), FriendFromSource.DEFAULT, requireActivity(), new d(imageView));
    }

    public void X1(RankListBean.RankRowsBean rankRowsBean, int i9) {
        f2(rankRowsBean);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: Y1 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, RankListBean.RankRowsBean rankRowsBean) {
        if (i9 == 0) {
            int i10 = this.f21681b;
            if (i10 == 1) {
                baseViewHolder.itemView.setBackgroundResource(R.drawable.rank_list_first_bg);
            } else if (i10 == 2) {
                baseViewHolder.itemView.setBackgroundResource(R.drawable.rank_list_first_star_bg);
            } else if (i10 == 3) {
                baseViewHolder.itemView.setBackgroundResource(R.drawable.rank_list_first_time_bg);
            }
        } else {
            baseViewHolder.itemView.setBackgroundResource(R.drawable.list_item_background);
        }
        Z1(rankRowsBean, i9, baseViewHolder);
    }

    public void Z1(RankListBean.RankRowsBean rankRowsBean, int i9, BaseViewHolder baseViewHolder) {
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon);
        TextView textView = (TextView) baseViewHolder.getView(R.id.send_or_receive);
        int i10 = this.f21681b;
        if (i10 == 1) {
            imageView.setImageResource(R.mipmap.jewel);
            if (textView != null) {
                textView.setText(getString(R.string.sent) + CertificateUtil.DELIMITER);
            }
        } else if (i10 == 2) {
            imageView.setImageResource(R.mipmap.f16052fb);
            if (textView != null) {
                textView.setText(getString(R.string.receive) + CertificateUtil.DELIMITER);
            }
        } else if (i10 == 3) {
            imageView.setVisibility(8);
            if (textView != null) {
                textView.setText(getString(R.string.duration) + CertificateUtil.DELIMITER);
            }
        }
        View view = baseViewHolder.getView(R.id.content_area);
        if (view != null) {
            view.setVisibility(0);
        }
        View view2 = baseViewHolder.getView(R.id.click_area);
        if (view2 != null) {
            view2.setOnClickListener(new b(baseViewHolder, rankRowsBean, i9));
        }
        View view3 = baseViewHolder.getView(R.id.empty_area);
        if (view3 != null) {
            view3.setVisibility(8);
        }
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.index);
        if (textView2 != null) {
            textView2.setText(rankRowsBean.getNo() + "");
        }
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.value);
        TextView textView4 = (TextView) baseViewHolder.getView(R.id.user_name);
        if (this.f21681b == 3) {
            textView3.setText(rankRowsBean.getValue() + "h");
        } else {
            textView3.setText(rankRowsBean.getValue());
        }
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.avatar_view);
        headPortraitView.setVisibility(0);
        if (rankRowsBean.getNo() <= 3) {
            TextViewUtils.setMaxEcplise(textView4, 4, rankRowsBean.getNickName());
            headPortraitView.setLivingStatus(rankRowsBean.getIsLive() == 0);
        } else {
            TextViewUtils.setMaxEcplise(textView4, 8, rankRowsBean.getNickName());
            Drawable drawable = ((ImageView) baseViewHolder.getView(R.id.living_status)).getDrawable();
            if (rankRowsBean.getIsLive() == 1) {
                if (drawable instanceof AnimationDrawable) {
                    ((AnimationDrawable) drawable).stop();
                }
                baseViewHolder.getView(R.id.living).setVisibility(8);
            } else {
                if (drawable instanceof AnimationDrawable) {
                    ((AnimationDrawable) drawable).start();
                }
                baseViewHolder.getView(R.id.living).setVisibility(0);
            }
        }
        FontUtils.setFont(textView3, 1);
        UserBean userBean = new UserBean();
        userBean.userId = rankRowsBean.getUserId();
        userBean.sex = rankRowsBean.getUserSex();
        userBean.img = rankRowsBean.getUserImg();
        userBean.countryFlag = rankRowsBean.getLogo();
        userBean.setUserVipMsg(rankRowsBean.getUserVipMsg());
        headPortraitView.i(userBean, rankRowsBean.getIsLive());
        ((LevelView) baseViewHolder.getView(R.id.level_view)).setLevel(rankRowsBean.getLevelName());
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.focus);
        if (rankRowsBean.getUserId().equals(this.f21684e)) {
            imageView2.setVisibility(4);
        } else {
            imageView2.setVisibility(0);
            if (rankRowsBean.getIsAttention() == 1) {
                if (rankRowsBean.getNo() <= 3) {
                    imageView2.setImageResource(R.drawable.btn_rank_list_focused);
                } else {
                    imageView2.setImageResource(R.mipmap.followed_normal);
                }
            } else if (rankRowsBean.getNo() <= 3) {
                imageView2.setImageResource(R.drawable.head_follow);
            } else {
                imageView2.setImageResource(R.drawable.btn_follow_rank_list);
            }
        }
        imageView2.setTag(Integer.valueOf(rankRowsBean.getNo()));
        imageView2.setOnClickListener(new c(rankRowsBean, i9, imageView2));
    }

    public int a2() {
        return this.f21680a;
    }

    public void g2(View view, int i9) {
        View findViewById = view.findViewById(R.id.content_area);
        View findViewById2 = view.findViewById(R.id.empty_area);
        findViewById.setVisibility(8);
        findViewById2.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public e getFragmentConfig() {
        return new e.a().c(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_rank_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: h2 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, RankListBean.RankRowsBean rankRowsBean) {
        if (DisableDoubleClickUtils.canClick(baseViewHolder.itemView)) {
            l2(baseViewHolder, rankRowsBean, i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        j2(0);
        this.f21684e = SpUtils.getStr(getActivity(), Contants.USER_ID);
        super.initView(view);
        View findViewById = view.findViewById(R.id.space_area);
        this.f21685f = this.mRealEmptyView.findViewById(R.id.content_area);
        int i9 = this.f21681b;
        if (i9 == 1) {
            findViewById.setBackgroundResource(R.color.rank_list_header_yellow);
            this.f21683d = "tokens/ranking/richList";
            this.f21685f.setBackgroundResource(R.mipmap.bg_money);
        } else if (i9 == 2) {
            findViewById.setBackgroundResource(R.color.rank_list_header_pink);
            this.f21685f.setBackgroundResource(R.mipmap.bg_star);
            this.f21683d = "tokens/ranking/starList";
        } else if (i9 == 3) {
            findViewById.setBackgroundResource(R.color.rank_list_header_green);
            this.f21685f.setBackgroundResource(R.mipmap.bg_time);
            this.f21683d = "tokens/ranking/durationList";
        }
        this.f21690k = getLayoutInflater().inflate(R.layout.layout_ranklist_header, (ViewGroup) getRecyclerView(), false);
        d2();
        addHeaderView(this.f21690k, 105);
        this.f21688i = getLayoutInflater().inflate(R.layout.layout_ranklist_footer, (ViewGroup) getRecyclerView(), false);
        this.f21689j = getLayoutInflater().inflate(R.layout.rank_list_empty_view, (ViewGroup) getRecyclerView(), false);
        this.f21687h = (TextView) this.f21688i.findViewById(R.id.tips);
        for (int i10 = 0; i10 < 3; i10++) {
            c2(this.f21694o[i10], null, i10);
        }
    }

    public void j2(int i9) {
        this.f21680a = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        int i10 = this.f21680a;
        if (i10 == 0) {
            this.f21687h.setText(getString(R.string.rank_list_day_footer_tips));
            this.mBottomTips.setText(getString(R.string.rank_list_day_footer_tips));
        } else if (i10 == 1) {
            this.f21687h.setText(getString(R.string.rank_list_week_footer_tips));
            this.mBottomTips.setText(getString(R.string.rank_list_week_footer_tips));
        } else if (i10 == 2 || i10 == 99) {
            this.f21687h.setText(getString(R.string.rank_list_sub_footer_tips));
            this.mBottomTips.setText(getString(R.string.rank_list_sub_footer_tips));
        }
        post(this.f21683d).D("type", String.valueOf(this.f21680a + 1)).b(new a()).L();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        int intExtra;
        BaseViewHolder baseViewHolder;
        super.onActivityResult(i9, i10, intent);
        if (i9 != 200 || i10 != -1 || (intExtra = intent.getIntExtra("data", -1)) == -1 || (baseViewHolder = this.f21686g) == null) {
            return;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.focus);
        boolean z10 = true;
        if (intExtra != 1 && intExtra != 2) {
            z10 = false;
        }
        i2(imageView, z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f21681b = getArguments().getInt("type", 1);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public void showEmptyView() {
        super.showEmptyView();
        for (int i9 = 0; i9 < 3; i9++) {
            c2(this.f21694o[i9], null, i9);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_rank_list, viewGroup, false));
    }
}
