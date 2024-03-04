package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.BindView;
import c8.a;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.widget.ShareDialog;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.ShareLogData;
import com.guochao.faceshow.aaspring.beans.VideoItem;
import com.guochao.faceshow.aaspring.beans.VideoPlayPauseEvent;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.modulars.gift.GiftSender;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftResponseModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment;
import com.guochao.faceshow.aaspring.modulars.main.viewholder.ShortVideoViewHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.share.fragment.PrivateShareFragment;
import com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment;
import com.guochao.faceshow.aaspring.modulars.translate.VideoTranslateHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DynamicVideoListActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcAndShortVideoFragment;
import com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.adapter.ZZ_RecycleAdapter;
import com.guochao.faceshow.facetoface.data.GiftData;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.mine.model.ContributionBean;
import com.guochao.faceshow.mine.model.ContributionListBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.ActivityTypeDialog;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.Tool;
import com.guochao.faceshow.views.DefineLoadMoreView;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.qgame.animplayer.AnimView;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
import eb.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class BaseShortVideoFragment extends FloatingViewFragment<VideoItem, ShortVideoViewHolder> implements u8.b, b.n, NetworkObserverHelper.OnNetworkChangeCallBack, ShareFragment.l {
    private RelativeLayout A;
    private ViewGroup B;
    private ZZ_RecycleAdapter<GiftData.GiftItemData> C;
    private LinearLayout D;
    private TextView E;
    private ZZ_RecycleAdapter<ContributionBean> F;
    private int G;
    ContributionListBean J;
    GiftFragment K;

    /* renamed from: j  reason: collision with root package name */
    private ShareFragment f20649j;

    /* renamed from: k  reason: collision with root package name */
    private VideoTranslateHolder f20650k;

    /* renamed from: l  reason: collision with root package name */
    NetworkObserverHelper f20651l;
    @BindView
    protected ViewPager2 mViewPager2;

    /* renamed from: p  reason: collision with root package name */
    private boolean f20655p;

    /* renamed from: q  reason: collision with root package name */
    public ShortVideoViewHolder f20656q;

    /* renamed from: u  reason: collision with root package name */
    int f20660u;

    /* renamed from: w  reason: collision with root package name */
    String f20662w;

    /* renamed from: x  reason: collision with root package name */
    RecyclerView f20663x;

    /* renamed from: y  reason: collision with root package name */
    SwipeMenuRecyclerView f20664y;

    /* renamed from: z  reason: collision with root package name */
    SwipeRefreshLayout f20665z;

    /* renamed from: m  reason: collision with root package name */
    private int f20652m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f20653n = 1;

    /* renamed from: o  reason: collision with root package name */
    private int f20654o = -1;

    /* renamed from: r  reason: collision with root package name */
    public boolean f20657r = false;

    /* renamed from: s  reason: collision with root package name */
    public boolean f20658s = false;

    /* renamed from: t  reason: collision with root package name */
    public boolean f20659t = false;

    /* renamed from: v  reason: collision with root package name */
    Runnable f20661v = new l();
    List<GiftData.GiftItemData> H = new ArrayList();
    int I = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements SwipeMenuRecyclerView.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20666a;

        a(VideoItem videoItem) {
            this.f20666a = videoItem;
        }

        @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.e
        public void onLoadMore() {
            BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
            if (baseShortVideoFragment.I < baseShortVideoFragment.G) {
                BaseShortVideoFragment baseShortVideoFragment2 = BaseShortVideoFragment.this;
                baseShortVideoFragment2.I++;
                baseShortVideoFragment2.v2(this.f20666a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ZZ_RecycleAdapter<ContributionBean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ContributionBean f20669a;

            a(ContributionBean contributionBean) {
                this.f20669a = contributionBean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(BaseShortVideoFragment.this.getActivity(), UserHomePageAct.class);
                intent.putExtra(Contants.USER_ID, this.f20669a.user_id + "");
                BaseShortVideoFragment.this.startActivity(intent);
            }
        }

        b(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, ContributionBean contributionBean) {
            NormalCircleImageView normalCircleImageView = (NormalCircleImageView) viewHolder.getView(R.id.civHeader);
            ((TextView) viewHolder.getView(R.id.tvNo)).setText((viewHolder.getPosition() + 1) + "");
            hc.a.p(normalCircleImageView, contributionBean.getImg(), R.mipmap.icon_head_default);
            normalCircleImageView.setOnClickListener(new a(contributionBean));
            ((TextView) viewHolder.getView(R.id.tvNickName)).setText(contributionBean.getNick_name());
            ((TextView) viewHolder.getView(R.id.tvPriceCount)).setText(contributionBean.getTotalPrice() + "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements SwipeRefreshLayout.OnRefreshListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20671a;

        c(VideoItem videoItem) {
            this.f20671a = videoItem;
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
            baseShortVideoFragment.I = 1;
            baseShortVideoFragment.v2(this.f20671a);
            BaseShortVideoFragment.this.f20665z.setRefreshing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements SVGAParser.ParseCompletion {
        d() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            BaseShortVideoFragment.this.f20656q.f20825a.setVisibility(0);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, BaseShortVideoFragment.this.f20656q.f20825a);
            BaseShortVideoFragment.this.f20656q.f20825a.setImageDrawable(new SVGADrawable(sVGAVideoEntity));
            BaseShortVideoFragment.this.f20656q.f20825a.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<GiftData.GiftItemData>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<GiftData.GiftItemData>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<GiftData.GiftItemData> list, @NonNull FaceCastBaseResponse<List<GiftData.GiftItemData>> faceCastBaseResponse) {
            BaseShortVideoFragment.this.H = list;
            if (list != null && list.size() != 0) {
                BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
                baseShortVideoFragment.f20663x.setLayoutManager(new GridLayoutManager(baseShortVideoFragment.getActivity(), 4));
            } else {
                BaseShortVideoFragment baseShortVideoFragment2 = BaseShortVideoFragment.this;
                baseShortVideoFragment2.f20663x.setLayoutManager(new GridLayoutManager(baseShortVideoFragment2.getActivity(), 1));
            }
            BaseShortVideoFragment.this.C.resetData(BaseShortVideoFragment.this.H);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<ContributionListBean.Page> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ContributionListBean.Page> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable ContributionListBean.Page page, @NonNull FaceCastBaseResponse<ContributionListBean.Page> faceCastBaseResponse) {
            if (page != null) {
                BaseShortVideoFragment.this.G = page.totalPage;
                BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
                if (baseShortVideoFragment.I == 1) {
                    baseShortVideoFragment.F.resetData(page.list);
                } else {
                    baseShortVideoFragment.F.addData(page.list);
                }
                BaseShortVideoFragment baseShortVideoFragment2 = BaseShortVideoFragment.this;
                if (baseShortVideoFragment2.I >= baseShortVideoFragment2.G) {
                    BaseShortVideoFragment.this.f20664y.g(true, false);
                } else {
                    BaseShortVideoFragment.this.f20664y.g(false, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements a.h {
        g() {
        }

        @Override // c8.a.h
        public void a() {
            if (BaseShortVideoFragment.this.isDetached() || BaseShortVideoFragment.this.getActivity() == null || BaseShortVideoFragment.this.getActivity().isDestroyed() || BaseShortVideoFragment.this.getActivity().isFinishing() || BaseShortVideoFragment.this.E == null) {
                return;
            }
            BaseShortVideoFragment.this.E.setText(BaseShortVideoFragment.this.getString(R.string.loading));
        }

        @Override // c8.a.h
        public void b(AdsBean adsBean) {
            if (BaseShortVideoFragment.this.isDetached() || BaseShortVideoFragment.this.getActivity() == null || BaseShortVideoFragment.this.getActivity().isDestroyed() || BaseShortVideoFragment.this.getActivity().isFinishing()) {
                return;
            }
            if (BaseShortVideoFragment.this.E != null) {
                BaseShortVideoFragment.this.E.setText(BaseShortVideoFragment.this.getString(R.string.ugc_claim));
            }
            p9.a.g().B(p9.a.g().f() + 1);
        }

        @Override // c8.a.h
        public void c(String str) {
            if (BaseShortVideoFragment.this.isDetached() || BaseShortVideoFragment.this.getActivity() == null || BaseShortVideoFragment.this.getActivity().isDestroyed() || BaseShortVideoFragment.this.getActivity().isFinishing()) {
                return;
            }
            if (BaseShortVideoFragment.this.E != null) {
                BaseShortVideoFragment.this.E.setText(BaseShortVideoFragment.this.getString(R.string.ugc_claim));
                BaseShortVideoFragment.this.E.setTextColor(Color.parseColor("#ffffff"));
            }
            BaseShortVideoFragment.this.D.setBackgroundResource(R.drawable.zz_shape_rect_radius_ads_yellow);
        }

        @Override // c8.a.h
        public void onError() {
            if (BaseShortVideoFragment.this.isDetached() || BaseShortVideoFragment.this.getActivity() == null || BaseShortVideoFragment.this.getActivity().isDestroyed() || BaseShortVideoFragment.this.getActivity().isFinishing()) {
                return;
            }
            if (BaseShortVideoFragment.this.E != null) {
                BaseShortVideoFragment.this.E.setText(BaseShortVideoFragment.this.getString(R.string.unavailable));
                BaseShortVideoFragment.this.E.setTextColor(Color.parseColor("#66ffffff"));
            }
            BaseShortVideoFragment.this.D.setBackgroundResource(R.drawable.zz_shape_rect_radius_ads_gray);
            BaseShortVideoFragment.this.D.setClickable(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                c8.a.r().y(BaseShortVideoFragment.this.getActivity());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements GiftFragment.o {
        i() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment.o
        public void a() {
            MyWalletActivity.m0(BaseShortVideoFragment.this.getActivity(), 2);
        }
    }

    /* loaded from: classes3.dex */
    class j extends a.j<File> {
        j() {
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        /* renamed from: d */
        public void c(@NonNull ResourceCategoryItem resourceCategoryItem, @NonNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
            BaseShortVideoFragment.this.G2(file);
        }
    }

    /* loaded from: classes3.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseShortVideoFragment.this.H2(null);
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = BaseShortVideoFragment.this.getRecyclerView().findViewHolderForAdapterPosition(BaseShortVideoFragment.this.f20660u);
                if (findViewHolderForAdapterPosition != null) {
                    BaseShortVideoFragment.this.getRecyclerView().scrollBy(0, findViewHolderForAdapterPosition.itemView.getTop());
                }
            }
        }

        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseShortVideoFragment.this.getRecyclerView().postDelayed(new a(), 100L);
        }
    }

    /* loaded from: classes3.dex */
    class m extends com.guochao.faceshow.aaspring.base.http.callback.c<AppResource> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendGiftCallBack f20683a;

        m(SendGiftCallBack sendGiftCallBack) {
            this.f20683a = sendGiftCallBack;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<AppResource> aVar) {
            if (BaseShortVideoFragment.this.getActivity() != null) {
                GiftSender.sendGiftFailure(BaseShortVideoFragment.this.getActivity(), aVar.a());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable AppResource appResource, @NonNull FaceCastBaseResponse<AppResource> faceCastBaseResponse) {
            if (this.f20683a != null && appResource != null) {
                if (appResource.getBag() != null) {
                    this.f20683a.onSendGiftFailure(appResource);
                    return;
                }
                this.f20683a.onSendGiftSuccessful();
            }
            BaseShortVideoFragment.this.J2();
        }
    }

    /* loaded from: classes3.dex */
    class n extends com.guochao.faceshow.aaspring.base.http.callback.c<SendGiftResponseModel> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SendGiftRequestModel f20685a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ResourceListItemBean f20686b;

        n(SendGiftRequestModel sendGiftRequestModel, ResourceListItemBean resourceListItemBean) {
            this.f20685a = sendGiftRequestModel;
            this.f20686b = resourceListItemBean;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SendGiftResponseModel> aVar) {
            if (BaseShortVideoFragment.this.getActivity() != null) {
                GiftSender.sendGiftFailure(BaseShortVideoFragment.this.getActivity(), aVar.a());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SendGiftResponseModel sendGiftResponseModel, @NonNull FaceCastBaseResponse<SendGiftResponseModel> faceCastBaseResponse) {
            BaseShortVideoFragment.this.J2();
            GiftFragment.trackEvent(this.f20685a, this.f20686b);
        }
    }

    /* loaded from: classes3.dex */
    class o extends LinearLayoutManager {
        o(Context context, int i9, boolean z10) {
            super(context, i9, z10);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected int getExtraLayoutSpace(RecyclerView.State state) {
            if (state.hasTargetScrollPosition()) {
                return BaseShortVideoFragment.this.getResources().getDisplayMetrics().heightPixels * 5;
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class p extends ViewPager2.OnPageChangeCallback {
        p() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i9) {
            super.onPageScrollStateChanged(i9);
            ShortVideoViewHolder shortVideoViewHolder = BaseShortVideoFragment.this.f20656q;
            if (shortVideoViewHolder != null) {
                if (i9 == 0) {
                    shortVideoViewHolder.v(true);
                } else if (i9 == 1) {
                    shortVideoViewHolder.v(false);
                } else if (i9 != 2) {
                    shortVideoViewHolder.v(true);
                } else {
                    shortVideoViewHolder.v(false);
                }
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i9) {
            super.onPageSelected(i9);
            if (BaseShortVideoFragment.this.getList().size() - i9 == 3) {
                BaseShortVideoFragment.this.D2();
            }
            if (i9 < BaseShortVideoFragment.this.getList().size()) {
                ShortVideoViewHolder shortVideoViewHolder = (ShortVideoViewHolder) BaseShortVideoFragment.this.getRecyclerView().findViewHolderForAdapterPosition(i9);
                ShortVideoViewHolder shortVideoViewHolder2 = BaseShortVideoFragment.this.f20656q;
                if (shortVideoViewHolder2 != null) {
                    if (shortVideoViewHolder2.getAdapterPosition() == i9) {
                        BaseShortVideoFragment.this.f20656q.G(false);
                        return;
                    }
                    BaseShortVideoFragment.this.f20656q.R();
                }
                BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
                baseShortVideoFragment.M2(shortVideoViewHolder, i9, baseShortVideoFragment.getList().get(i9));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20690a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ShortVideoViewHolder f20691b;

        /* loaded from: classes3.dex */
        class a implements ShareFragment.l {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
            public void Z() {
                BaseShortVideoFragment.this.onPause();
                BaseShortVideoFragment.this.f20649j.dismiss();
                BaseShortVideoFragment.this.Z();
            }

            @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
            public void onCancel() {
                BaseShortVideoFragment.this.f20649j.dismiss();
                BaseShortVideoFragment.this.onResume();
                BaseShortVideoFragment.this.onCancel();
            }

            @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
            public void onDelete() {
                BaseShortVideoFragment.this.getList().remove(q.this.f20691b.getAdapterPosition());
                BaseShortVideoFragment.this.notifyDataLoaded();
                BaseShortVideoFragment.this.onDelete();
            }

            @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
            public void onDismiss() {
                BaseShortVideoFragment.this.onResume();
                BaseShortVideoFragment.this.onCancel();
            }
        }

        /* loaded from: classes3.dex */
        class b implements ShareFragment.m {
            b() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.m
            public void a(String str, ShareContentBean shareContentBean) {
                q.this.f20690a.setShareNum(String.valueOf(Integer.parseInt(TextUtils.isEmpty(q.this.f20690a.getShareNum()) ? "0" : q.this.f20690a.getShareNum()) + 1));
                q qVar = q.this;
                qVar.f20691b.setText(R.id.share_num, qVar.f20690a.getShareNum());
            }
        }

        q(VideoItem videoItem, ShortVideoViewHolder shortVideoViewHolder) {
            this.f20690a = videoItem;
            this.f20691b = shortVideoViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseShortVideoFragment.this.x2()) {
                PrivateShareFragment.X1(this.f20690a).show(BaseShortVideoFragment.this.getChildFragmentManager(), "privateShare");
                return;
            }
            TextView textView = (TextView) this.f20691b.getView(R.id.tv_expandable);
            if (textView == null || textView.getText() == null) {
                return;
            }
            ShareContentBean shareContentBean = new ShareContentBean();
            shareContentBean.setContent(this.f20690a.getUserNickName() + "(ID:" + this.f20690a.getUserId() + ")|buzzcast| " + textView.getText().toString());
            shareContentBean.setImgUrl(this.f20690a.getVideoImg());
            shareContentBean.setShortUrl(this.f20690a.getShortUrl());
            BaseShortVideoFragment.this.f20649j = ShareFragment.f2(shareContentBean, this.f20690a);
            BaseShortVideoFragment.this.f20649j.show(BaseShortVideoFragment.this.getChildFragmentManager(), ShareDialog.WEB_SHARE_DIALOG);
            BaseShortVideoFragment.this.onPause();
            BaseShortVideoFragment.this.f20649j.setOnListener(new a());
            BaseShortVideoFragment.this.f20649j.setOnSharePlatformClickListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20695a;

        r(VideoItem videoItem) {
            this.f20695a = videoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseShortVideoFragment.this.J = null;
            if (this.f20695a.getUserId().equals(SpUtils.getStr(BaseShortVideoFragment.this.getActivity(), Contants.USER_ID))) {
                BaseShortVideoFragment.this.O2(this.f20695a);
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_gift_click);
            BaseShortVideoFragment.this.P2(this.f20695a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20697a;

        s(VideoItem videoItem) {
            this.f20697a = videoItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f20697a.getMusicId() <= 0) {
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_music_click);
            Intent intent = new Intent(BaseShortVideoFragment.this.getActivity(), MusicVideoActivity.class);
            intent.putExtra("musicId", this.f20697a.getMusicId() + "");
            if (TextUtils.isEmpty(this.f20697a.getMusicName())) {
                intent.putExtra("titleName", BaseShortVideoFragment.this.getString(R.string.yuansheng) + " - " + this.f20697a.getUserNickName());
                intent.putExtra("musicName", BaseShortVideoFragment.this.getString(R.string.yuansheng) + " - " + this.f20697a.getUserNickName());
            } else {
                intent.putExtra("titleName", this.f20697a.getMusicName());
                intent.putExtra("musicName", this.f20697a.getMusicName());
            }
            intent.putExtra("musicUrl", this.f20697a.getMusicUrl());
            intent.putExtra("type_id", this.f20697a.getTypeId());
            intent.putExtra("tyPeName", this.f20697a.getTypeName());
            BaseShortVideoFragment.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VideoItem f20699a;

        t(VideoItem videoItem) {
            this.f20699a = videoItem;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i9) {
            if (i9 == R.id.free_diamonds) {
                BaseShortVideoFragment.this.f20663x.setVisibility(8);
                BaseShortVideoFragment.this.f20665z.setVisibility(8);
                BaseShortVideoFragment.this.A.setVisibility(0);
                BaseShortVideoFragment.this.w2();
            } else if (i9 == R.id.my_gift) {
                BaseShortVideoFragment.this.f20663x.setVisibility(0);
                BaseShortVideoFragment.this.f20665z.setVisibility(8);
                BaseShortVideoFragment.this.A.setVisibility(8);
            } else if (i9 != R.id.pay_top) {
            } else {
                BaseShortVideoFragment baseShortVideoFragment = BaseShortVideoFragment.this;
                if (baseShortVideoFragment.J == null) {
                    baseShortVideoFragment.I = 1;
                    baseShortVideoFragment.v2(this.f20699a);
                }
                BaseShortVideoFragment.this.A.setVisibility(8);
                BaseShortVideoFragment.this.f20665z.setVisibility(0);
                BaseShortVideoFragment.this.f20663x.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u extends ZZ_RecycleAdapter<GiftData.GiftItemData> {
        u(Context context, int i9) {
            super(context, i9);
        }

        @Override // com.guochao.faceshow.adapter.ZZ_RecycleAdapter
        /* renamed from: a */
        public void convert(ZZ_RecycleAdapter.ViewHolder viewHolder, GiftData.GiftItemData giftItemData) {
            hc.a.j(viewHolder.c(R.id.gift_iv), giftItemData.img);
            viewHolder.g(R.id.count_tv, 0);
            viewHolder.f(R.id.count_tv, giftItemData.counts + "");
            viewHolder.f(R.id.gName, giftItemData.gname + "");
            viewHolder.f(R.id.gift_price, giftItemData.price + "");
            viewHolder.g(R.id.gift_price, 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G2(File file) {
        if (getActivity() == null) {
            return;
        }
        if (this.f20656q.f20825a != null && file != null && file.exists() && file.getPath().endsWith("svga")) {
            this.f20656q.f20825a.setLoops(1);
            try {
                SvgaImageViewUtils.getParser().decodeFromInputStream(new FileInputStream(file), file.getAbsolutePath(), new d(), true);
            } catch (FileNotFoundException e10) {
                e10.printStackTrace();
            }
        } else if (this.f20656q.f20826b == null || file == null || !file.exists() || !file.getPath().endsWith("mp4")) {
        } else {
            this.f20656q.f20826b.setVisibility(0);
            AnimView animView = new AnimView(this.f20656q.f20826b.getContext());
            animView.setLoop(1);
            animView.setTag(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            this.f20656q.f20826b.addView(animView);
            VaPlayerUtils.startPlay(animView, file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J2() {
        GiftFragment giftFragment = this.K;
        if (giftFragment != null) {
            giftFragment.refreshDiamonds();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O2(VideoItem videoItem) {
        Tool.dismissPopWindow();
        View inflate = View.inflate(getActivity(), R.layout.pop_mygift_layout, null);
        this.f20663x = (RecyclerView) inflate.findViewById(R.id.rlOwnerSelectGift);
        this.f20664y = (SwipeMenuRecyclerView) inflate.findViewById(R.id.myRecyclerView);
        this.f20665z = (SwipeRefreshLayout) inflate.findViewById(R.id.refreshLayout);
        this.A = (RelativeLayout) inflate.findViewById(R.id.ads_rl);
        this.B = (ViewGroup) inflate.findViewById(R.id.empty_ads_lay);
        this.D = (LinearLayout) inflate.findViewById(R.id.ads_ll);
        this.E = (TextView) inflate.findViewById(R.id.ads_tv);
        ((RadioGroup) inflate.findViewById(R.id.radio_group)).setOnCheckedChangeListener(new t(videoItem));
        u uVar = new u(getActivity(), R.layout.item_video_gift);
        this.C = uVar;
        this.f20663x.setAdapter(uVar);
        this.C.setEmptyFLMargeTop(70);
        u2(videoItem);
        this.f20664y.setLayoutManager(new LinearLayoutManager(getActivity()));
        new DefineLoadMoreView(getActivity());
        this.f20664y.setLoadMoreListener(new a(videoItem));
        b bVar = new b(getActivity(), R.layout.item_top_gift_list);
        this.F = bVar;
        this.f20664y.setAdapter(bVar);
        this.F.setEmptyFLMargeTop(70);
        this.f20665z.setOnRefreshListener(new c(videoItem));
        Tool.creatPopWindowBottomAnim(inflate, getView(), -1, -2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P2(VideoItem videoItem) {
        GiftFragment giftFragment = GiftFragment.getInstance((int) R.style.BottomDialog_FullScreen, 2, videoItem.getUserId(), false);
        this.K = giftFragment;
        giftFragment.show(getChildFragmentManager(), "gift");
        this.K.setOnClickChargeListener(new i());
    }

    private void u2(VideoItem videoItem) {
        post(Contants.haveGift).D(Contants.USER_ID, SpUtils.getStr(getActivity(), Contants.USER_ID)).D("is_type", "1").D("ITEM_ID", videoItem.getVideoId()).M(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v2(VideoItem videoItem) {
        post(Contants.haveGiftRank).D("videoId", videoItem.getVideoId()).D("limit", ThirdPushHelper.TYPE_XIAOMI_CHINA).D("page", this.I + "").M(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w2() {
        if (getCurrentUser().getRegType() != 2 && c8.a.r().q() != 0) {
            c8.a.r().w(getActivity(), new g());
            this.D.setOnClickListener(new h());
            return;
        }
        this.B.setVisibility(0);
        this.A.getChildAt(0).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z2(VideoItem videoItem, View view) {
        UserHomePageAct.start((Activity) getActivity(), videoItem.getUserId(), 2);
    }

    public void A2(RecyclerView recyclerView) {
        this.mViewPager2.registerOnPageChangeCallback(new p());
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    /* renamed from: B2 */
    public ShortVideoViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        Context activity = getActivity();
        if (activity == null) {
            activity = BaseApplication.getInstance();
        }
        if (this.f20653n == 0) {
            return new ShortVideoViewHolder(getActivity(), this, LayoutInflater.from(activity).inflate(R.layout.video_list_item_private, viewGroup, false), this.f20653n == 0);
        } else if (this instanceof ShortVideoFragment) {
            return new ShortVideoViewHolder(getActivity(), this, LayoutInflater.from(activity).inflate(R.layout.video_list_item, viewGroup, false), this.f20653n == 0);
        } else {
            return new ShortVideoViewHolder(getActivity(), this, LayoutInflater.from(activity).inflate(R.layout.video_list_self, viewGroup, false), this.f20653n == 0);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment
    /* renamed from: C2 */
    public void onItemClick(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
    }

    public void D2() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    /* renamed from: E2 */
    public void onViewRecycled(@NonNull ShortVideoViewHolder shortVideoViewHolder) {
        shortVideoViewHolder.R();
        if (shortVideoViewHolder.y() != null) {
            shortVideoViewHolder.y().cancel();
            shortVideoViewHolder.J(null);
        }
    }

    public void F2(boolean z10) {
        ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
        if (shortVideoViewHolder != null) {
            shortVideoViewHolder.E(z10);
        }
        NetworkObserverHelper networkObserverHelper = this.f20651l;
        if (networkObserverHelper != null) {
            networkObserverHelper.destroy(this);
            this.f20652m = -1;
        }
        U1();
    }

    public void H2(String str) {
        int findFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) getRecyclerView().getLayoutManager()).findFirstCompletelyVisibleItemPosition();
        if (findFirstCompletelyVisibleItemPosition >= 0) {
            RecyclerView.ViewHolder findViewHolderForAdapterPosition = getRecyclerView().findViewHolderForAdapterPosition(findFirstCompletelyVisibleItemPosition);
            if (findViewHolderForAdapterPosition instanceof ShortVideoViewHolder) {
                if (r2()) {
                    ShortVideoViewHolder shortVideoViewHolder = (ShortVideoViewHolder) findViewHolderForAdapterPosition;
                    shortVideoViewHolder.I(str);
                    if (this.f20655p) {
                        M2(shortVideoViewHolder, findFirstCompletelyVisibleItemPosition, getList().get(findFirstCompletelyVisibleItemPosition));
                        return;
                    } else {
                        this.f20656q = shortVideoViewHolder;
                        return;
                    }
                }
                this.f20656q = (ShortVideoViewHolder) findViewHolderForAdapterPosition;
            }
        }
    }

    public void I2(boolean z10) {
        boolean r22 = r2();
        if (r2()) {
            ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
            if (shortVideoViewHolder != null) {
                shortVideoViewHolder.G(z10);
            }
            if (r22) {
                a2();
            }
            NetworkObserverHelper create = NetworkObserverHelper.create(getActivity());
            this.f20651l = create;
            create.register(this);
        }
    }

    public void K2(Comment comment, boolean z10) {
        int findFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) getRecyclerView().getLayoutManager()).findFirstCompletelyVisibleItemPosition();
        if (findFirstCompletelyVisibleItemPosition >= 0) {
            ShortVideoViewHolder shortVideoViewHolder = (ShortVideoViewHolder) getRecyclerView().findViewHolderForAdapterPosition(findFirstCompletelyVisibleItemPosition);
            if (!r2() || shortVideoViewHolder == null) {
                return;
            }
            shortVideoViewHolder.H(comment);
            if (z10) {
                shortVideoViewHolder.getView(R.id.comments).callOnClick();
            }
        }
    }

    public void L2(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
        shortVideoViewHolder.M(i9, videoItem);
        if (shortVideoViewHolder.getView(R.id.more) == null) {
            return;
        }
        shortVideoViewHolder.getView(R.id.more).setOnClickListener(new q(videoItem, shortVideoViewHolder));
        shortVideoViewHolder.getView(R.id.gift).setOnClickListener(new r(videoItem));
        shortVideoViewHolder.getView(R.id.music_area).setOnClickListener(new s(videoItem));
    }

    public void M2(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
        LogUtils.i("ShortVideoFragment", "shouldPlay: " + i9);
        if (shortVideoViewHolder == null) {
            return;
        }
        ShortVideoViewHolder shortVideoViewHolder2 = this.f20656q;
        if (shortVideoViewHolder2 == null || shortVideoViewHolder2.getAdapterPosition() != shortVideoViewHolder.getAdapterPosition()) {
            this.f20656q = shortVideoViewHolder;
            shortVideoViewHolder.O(videoItem, i9);
        }
    }

    public void N2(ShortVideoViewHolder shortVideoViewHolder, int i9, final VideoItem videoItem) {
        shortVideoViewHolder.n(videoItem, i9);
        if (videoItem == null) {
            return;
        }
        ImageView imageView = (ImageView) shortVideoViewHolder.getView(R.id.video_cover);
        imageView.setAlpha(1.0f);
        imageView.setVisibility(0);
        hc.a.h(imageView, videoItem.getVideoImg(), R.mipmap.default_short_bg);
        ImageView imageView2 = (ImageView) shortVideoViewHolder.getView(R.id.praise);
        if (imageView2 == null) {
            return;
        }
        if ((videoItem.getIsFeatured() != null && "1".equals(videoItem.getIsFeatured())) || this.f20653n == 0) {
            shortVideoViewHolder.getView(R.id.is_feature).setVisibility(0);
        } else {
            shortVideoViewHolder.getView(R.id.is_feature).setVisibility(8);
        }
        imageView2.setSelected(videoItem.getIsZan() != 0);
        shortVideoViewHolder.setText(R.id.praise_num, Formatter.getFormat(videoItem.getVideoCollectionNum()));
        TextView textView = (TextView) shortVideoViewHolder.getView(R.id.name_tv);
        textView.setText("@" + videoItem.getUserNickName());
        textView.setSelected(true);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseShortVideoFragment.this.z2(videoItem, view);
            }
        });
        this.f20662w = "";
        View view = shortVideoViewHolder.getView(R.id.video_translate);
        if (view != null) {
            VideoTranslateHolder videoTranslateHolder = new VideoTranslateHolder(view);
            this.f20650k = videoTranslateHolder;
            videoTranslateHolder.e(videoItem, false);
        }
        if (TextUtils.isEmpty(videoItem.getVideoIntroductionContent())) {
            return;
        }
        this.f20662w = videoItem.getVideoIntroductionContent() + this.f20662w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Q2(int i9) {
        getRecyclerView().removeCallbacks(this.f20661v);
        this.f20660u = i9;
        getRecyclerView().postDelayed(this.f20661v, 100L);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void Z() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().c(false).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_short_video_viewpager2;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        this.mViewPager2.setOffscreenPageLimit(1);
        getRefreshableLayout().L(true);
        getRefreshableLayout().b(false);
        getRefreshableLayout().M(true);
        getRefreshableLayout().P(DensityUtil.dp2px(getActivity(), 48.0f));
        A2(getRecyclerView());
    }

    @Override // eb.b.n
    public void l1(ShareLogData shareLogData) {
        ShareLogData.ShareLogResult shareLogResult;
        if (shareLogData == null || (shareLogResult = shareLogData.result) == null || shareLogResult.isLottery != 1) {
            return;
        }
        ActivityTypeDialog.sharePrizeDialog(getActivity(), shareLogData.result.lotteryUrl);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.c
    public void loadData(int i9) {
        super.loadData(i9);
        ShortVideoViewHolder shortVideoViewHolder = this.f20656q;
        if (shortVideoViewHolder != null) {
            shortVideoViewHolder.R();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void onCancel() {
    }

    @Override // com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.OnNetworkChangeCallBack
    public void onChange(int i9) {
        if (this.f20652m == -1) {
            this.f20652m = i9;
            return;
        }
        this.f20652m = i9;
        if (i9 != 1) {
            return;
        }
        showToast(R.string.non_WiFi_environment);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.FloatingViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!(this instanceof ShortVideoFragment) && !(this instanceof DynamicVideoListActivity.DynamicVideoFragment)) {
            this.f20658s = true;
        } else {
            this.f20657r = AppSettings.getSetting("first_danmu", true);
            boolean setting = AppSettings.getSetting("first_Main_v2", true);
            if (getParentFragment() instanceof UgcAndShortVideoFragment) {
                this.f20658s = !setting;
            } else {
                this.f20658s = true;
            }
            this.f20659t = setting;
        }
        if (getArguments() != null) {
            this.f20653n = getArguments().getInt("type", this.f20653n);
        }
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    public RecyclerView.LayoutManager onCreateLayoutManager(RecyclerView recyclerView) {
        o oVar = new o(getActivity(), 1, false);
        oVar.setItemPrefetchEnabled(true);
        oVar.setInitialPrefetchItemCount(5);
        return oVar;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void onDelete() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f20655p = false;
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        c8.a.r().z();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.share.fragment.ShareFragment.l
    public void onDismiss() {
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(String str) {
        if ("homeDataRefresh".equals(str)) {
            F2(true);
        } else if (!"clear_halloween".equals(str) && TextUtils.equals(str, LOCAL_EVENT_MSG.BLACK_NAME_ADD_OTHER) && this.f20654o != -1 && getItemCount() >= this.f20654o) {
            if (getItemCount() > this.f20654o) {
                getRecyclerView().scrollToPosition(this.f20654o + 1);
            } else if (getItemCount() == this.f20654o) {
                getRecyclerView().scrollToPosition(this.f20654o - 1);
            }
            getList().remove(this.f20654o);
            notifyDataLoaded();
            this.f20654o = -1;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        View findViewByPosition;
        View findViewByPosition2;
        if (TextUtils.isEmpty(eVar.a())) {
            return;
        }
        for (int i9 = 0; i9 < getList().size(); i9++) {
            if (eVar.a().equalsIgnoreCase(getList().get(i9).getUserId())) {
                getList().get(i9).setIsAttention(eVar.c() ? 1 : 0);
                if (getRecyclerView() != null && getRecyclerView().getAdapter() != null) {
                    if (eVar.b() == -1) {
                        if ((getRecyclerView().getLayoutManager() instanceof LinearLayoutManager) && (findViewByPosition2 = ((LinearLayoutManager) getRecyclerView().getLayoutManager()).findViewByPosition(i9)) != null) {
                            RecyclerView.ViewHolder childViewHolder = getRecyclerView().getChildViewHolder(findViewByPosition2);
                            if (childViewHolder instanceof ShortVideoViewHolder) {
                                ((ShortVideoViewHolder) childViewHolder).r();
                            }
                        }
                    } else if (eVar.b() != -1 && eVar.b() != i9) {
                        getRecyclerView().getAdapter().notifyItemChanged(i9);
                    } else if (eVar.b() != -1 && (getRecyclerView().getLayoutManager() instanceof LinearLayoutManager) && (findViewByPosition = ((LinearLayoutManager) getRecyclerView().getLayoutManager()).findViewByPosition(i9)) != null) {
                        RecyclerView.ViewHolder childViewHolder2 = getRecyclerView().getChildViewHolder(findViewByPosition);
                        if (childViewHolder2 instanceof ShortVideoViewHolder) {
                            ((ShortVideoViewHolder) childViewHolder2).r();
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f20655p = false;
        F2(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPlayEvent(VideoPlayPauseEvent videoPlayPauseEvent) {
        if (videoPlayPauseEvent.getStop()) {
            F2(false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPostComment(y7.n nVar) {
        ShortVideoViewHolder shortVideoViewHolder;
        if (nVar == null || nVar.f60149b == null || (shortVideoViewHolder = this.f20656q) == null || shortVideoViewHolder.getAdapterPosition() < 0 || !AppSettings.getSetting("danmu", true) || getCurrentUser().getVideoBarrageSwitch() != 1) {
            return;
        }
        this.f20656q.K(nVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        ShareFragment shareFragment;
        super.onResume();
        this.f20655p = true;
        if (ScreenShotHelper.onActivityResult && (shareFragment = this.f20649j) != null) {
            shareFragment.dismiss();
            onPause();
            ScreenShotHelper.onActivityResult = false;
            return;
        }
        I2(false);
    }

    @Override // u8.b
    public void onSelectGift(ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List<GiftFragment.r> list, int i9, boolean z10, SendGiftCallBack sendGiftCallBack) {
        com.guochao.faceshow.aaspring.manager.a.g().l(resourceCategoryItem, resourceListItemBean, new j());
        SendGiftRequestModel sendGiftRequestModel = new SendGiftRequestModel(String.valueOf(resourceListItemBean.getId()), resourceListItemBean.isLuckyGift());
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f20656q.x().getUserId());
        sendGiftRequestModel.setSendType(1);
        sendGiftRequestModel.setToUserIds(arrayList);
        sendGiftRequestModel.setBusinessId(this.f20656q.x().getVideoId());
        if (z10) {
            sendGiftRequestModel.setUseDiamonds("1");
        } else {
            sendGiftRequestModel.setUseDiamonds("0");
        }
        sendGiftRequestModel.setSinglePrice(resourceListItemBean.getPrice());
        sendGiftRequestModel.setSendNumber(i9);
        GiftSender.checkSendGiftType(resourceListItemBean.getItemType(), sendGiftRequestModel, new m(sendGiftCallBack), new n(sendGiftRequestModel, resourceListItemBean));
    }

    @Override // u8.b
    public /* synthetic */ void onSelectGift(GiftFragment giftFragment, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean, List list, int i9, boolean z10, int i10, SendGiftCallBack sendGiftCallBack) {
        u8.a.c(this, giftFragment, resourceCategoryItem, resourceListItemBean, list, i9, z10, i10, sendGiftCallBack);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVideoFilter(AppContentFilter.EventBusVideoItem eventBusVideoItem) {
        VideoItem videoItem = eventBusVideoItem.getVideoItem();
        int i9 = 0;
        while (true) {
            if (i9 >= getList().size()) {
                i9 = -1;
                break;
            } else if (Objects.equals(videoItem.getVideoId(), getList().get(i9).getVideoId())) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            getList().remove(i9);
            getRecyclerView().getAdapter().notifyDataSetChanged();
            getRecyclerView().post(new k());
        }
    }

    public boolean r2() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (!parentFragment.isAdded() || parentFragment.isHidden() || !getUserVisibleHint() || !parentFragment.isResumed() || parentFragment.isDetached()) {
                return false;
            }
        }
        return isAdded() && !isHidden() && getUserVisibleHint() && isResumed() && !isDetached();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment, d7.a
    /* renamed from: s2 */
    public void convertItem(ShortVideoViewHolder shortVideoViewHolder, int i9, VideoItem videoItem) {
        N2(shortVideoViewHolder, i9, videoItem);
        L2(shortVideoViewHolder, i9, videoItem);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
        if (z10) {
            I2(false);
        } else {
            F2(false);
        }
    }

    public boolean t2() {
        return false;
    }

    public boolean x2() {
        return false;
    }

    public boolean y2() {
        return this.f20655p;
    }
}
