package com.guochao.faceshow.aaspring.modulars.live.area;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.aaspring.beans.RankListBean;
import com.guochao.faceshow.aaspring.modulars.live.fragment.AppEventFragment;
import com.guochao.faceshow.aaspring.modulars.rank.activity.RankListActivity;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.activitycenter.ActivityActivity;
import com.rd.PageIndicatorView;
import com.youth.banner.Banner;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.loader.ImageLoaderInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\"\u0010\u001b\u001a\u00020\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u001eJ\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0002R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "avatarGroupView", "Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;", "getAvatarGroupView", "()Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;", "setAvatarGroupView", "(Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;)V", "mBannerViewPager", "Lcom/youth/banner/Banner;", "getMBannerViewPager", "()Lcom/youth/banner/Banner;", "setMBannerViewPager", "(Lcom/youth/banner/Banner;)V", "mOnPageChangeListener", "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;", "mPageIndicatorView", "Lcom/rd/PageIndicatorView;", "getMPageIndicatorView", "()Lcom/rd/PageIndicatorView;", "setMPageIndicatorView", "(Lcom/rd/PageIndicatorView;)V", "getLayoutId", "", "updateDatas", "", "mEventItemBeans", "", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "mRankRows", "Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;", "urls", "", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveBannerHeader extends BaseViewHolder {
    @Nullable
    private AvatarGroupView avatarGroupView;
    @Nullable
    private Banner mBannerViewPager;
    @Nullable
    private ViewPager.OnPageChangeListener mOnPageChangeListener;
    @Nullable
    private PageIndicatorView mPageIndicatorView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBannerHeader(@NotNull View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.mPageIndicatorView = (PageIndicatorView) itemView.findViewById(R.id.pageIndicatorView);
        this.mBannerViewPager = (Banner) itemView.findViewById(R.id.banner);
        this.avatarGroupView = (AvatarGroupView) itemView.findViewById(R.id.avatar_group_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateDatas$lambda-0  reason: not valid java name */
    public static final void m462updateDatas$lambda0(View view) {
        EventTrackingUtils.getInstance().track(EventTrackingUtils.RANK_LIST_CLICK);
        view.getContext().startActivity(new Intent(view.getContext(), RankListActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateDatas$lambda-1  reason: not valid java name */
    public static final void m463updateDatas$lambda1(View view) {
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.activity_center_entrance);
        ActivityActivity.Companion companion = ActivityActivity.Companion;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "it.context");
        companion.start(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateDatas$lambda-2  reason: not valid java name */
    public static final void m464updateDatas$lambda2(LiveBannerHeader this$0, List mEventItemBeans, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(mEventItemBeans, "$mEventItemBeans");
        try {
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingV2Utils.activity_banner);
            eventTrackingV2Utils.track(EventTrackingV2Utils.activity_load_from, "1");
            AppEventFragment.Q1(this$0.itemView.getContext(), (BannerBeanData) mEventItemBeans.get(i9));
        } catch (Exception unused) {
        }
        ja.a.b().e("KEY_LIVE_CLICK_TIPS");
    }

    private final List<String> urls(List<BannerBeanData> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            String fileUrl = list.get(i9).getFileUrl();
            Intrinsics.checkNotNullExpressionValue(fileUrl, "mEventItemBeans[i].fileUrl");
            arrayList.add(fileUrl);
        }
        return arrayList;
    }

    @Nullable
    public final AvatarGroupView getAvatarGroupView() {
        return this.avatarGroupView;
    }

    public final int getLayoutId() {
        return R.layout.header_live_banner;
    }

    @Nullable
    public final Banner getMBannerViewPager() {
        return this.mBannerViewPager;
    }

    @Nullable
    public final PageIndicatorView getMPageIndicatorView() {
        return this.mPageIndicatorView;
    }

    public final void setAvatarGroupView(@Nullable AvatarGroupView avatarGroupView) {
        this.avatarGroupView = avatarGroupView;
    }

    public final void setMBannerViewPager(@Nullable Banner banner) {
        this.mBannerViewPager = banner;
    }

    public final void setMPageIndicatorView(@Nullable PageIndicatorView pageIndicatorView) {
        this.mPageIndicatorView = pageIndicatorView;
    }

    public final void updateDatas(@NotNull final List<BannerBeanData> mEventItemBeans, @NotNull List<RankListBean.RankRowsBean> mRankRows) {
        Intrinsics.checkNotNullParameter(mEventItemBeans, "mEventItemBeans");
        Intrinsics.checkNotNullParameter(mRankRows, "mRankRows");
        AvatarGroupView avatarGroupView = this.avatarGroupView;
        if (avatarGroupView != null) {
            avatarGroupView.setAvatarList(mRankRows);
        }
        if (mEventItemBeans.isEmpty()) {
            return;
        }
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveBannerHeader$updateDatas$1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i9) {
                PageIndicatorView mPageIndicatorView;
                if (this.getMPageIndicatorView() == null || (mPageIndicatorView = this.getMPageIndicatorView()) == null) {
                    return;
                }
                mPageIndicatorView.onPageScrollStateChanged(i9);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i9, float f10, int i10) {
                PageIndicatorView mPageIndicatorView;
                if (mEventItemBeans.size() == 0 || (mPageIndicatorView = this.getMPageIndicatorView()) == null) {
                    return;
                }
                mPageIndicatorView.onPageScrolled(i9 % mEventItemBeans.size(), f10, i10);
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i9) {
                PageIndicatorView mPageIndicatorView;
                if (mEventItemBeans.size() == 0 || (mPageIndicatorView = this.getMPageIndicatorView()) == null) {
                    return;
                }
                mPageIndicatorView.onPageSelected(i9 % mEventItemBeans.size());
            }
        };
        this.itemView.findViewById(R.id.rank_area).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveBannerHeader.m462updateDatas$lambda0(view);
            }
        });
        this.itemView.findViewById(R.id.activity_area).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveBannerHeader.m463updateDatas$lambda1(view);
            }
        });
        Banner banner = this.mBannerViewPager;
        if (banner != null) {
            banner.setOnPageChangeListener(this.mOnPageChangeListener);
        }
        Banner banner2 = this.mBannerViewPager;
        if (banner2 != null) {
            banner2.setImageLoader(new ImageLoaderInterface<View>() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.LiveBannerHeader$updateDatas$4
                @Override // com.youth.banner.loader.ImageLoaderInterface
                @Nullable
                public View createImageView(@NotNull Context context) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    return LayoutInflater.from(context).inflate(R.layout.fragment_app_event, (ViewGroup) null);
                }

                @Override // com.youth.banner.loader.ImageLoaderInterface
                public void displayImage(@Nullable Context context, @Nullable Object obj, @Nullable View view) {
                    hc.a.b(view != null ? (ImageView) view.findViewById(R.id.img) : null, String.valueOf(obj), -1);
                }
            });
        }
        Banner banner3 = this.mBannerViewPager;
        if (banner3 != null) {
            banner3.setDelayTime(5000);
        }
        Banner banner4 = this.mBannerViewPager;
        if (banner4 != null) {
            banner4.setOnBannerListener(new OnBannerListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.n
                @Override // com.youth.banner.listener.OnBannerListener
                public final void OnBannerClick(int i9) {
                    LiveBannerHeader.m464updateDatas$lambda2(LiveBannerHeader.this, mEventItemBeans, i9);
                }
            });
        }
        Banner banner5 = this.mBannerViewPager;
        if (banner5 != null) {
            banner5.setBannerStyle(0);
        }
        Banner banner6 = this.mBannerViewPager;
        if (banner6 != null) {
            banner6.setImages(urls(mEventItemBeans));
        }
        PageIndicatorView pageIndicatorView = this.mPageIndicatorView;
        if (pageIndicatorView != null) {
            pageIndicatorView.setCount(mEventItemBeans.size());
        }
        Banner banner7 = this.mBannerViewPager;
        if (banner7 != null) {
            banner7.start();
        }
    }
}
