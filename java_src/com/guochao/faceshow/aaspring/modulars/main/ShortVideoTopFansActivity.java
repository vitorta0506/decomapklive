package com.guochao.faceshow.aaspring.modulars.main;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.model.ContributionBean;
import com.guochao.faceshow.mine.model.ContributionListBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J \u0010\u001b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/ShortVideoTopFansActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;", "Lcom/guochao/faceshow/mine/model/ContributionBean;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "()V", "mVideoId", "", "getMVideoId", "()Ljava/lang/String;", "setMVideoId", "(Ljava/lang/String;)V", "convertItem", "", "holder", "position", "", BaseConfig.ITEM, "getLayoutId", "loadData", "pageNo", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onItemClick", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ShortVideoTopFansActivity extends BaseRecyclerViewActivity<ContributionBean, BaseViewHolder> {
    @Nullable
    private String mVideoId = "";

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_short_video_top_fans;
    }

    @Nullable
    public final String getMVideoId() {
        return this.mVideoId;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        post("tokens/gift/giftRankingList").D(Contants.USER_ID, this.mVideoId).B("limit", 10).D("page", String.valueOf(getCurrentPage())).M(new c<ContributionListBean.Page>() { // from class: com.guochao.faceshow.aaspring.modulars.main.ShortVideoTopFansActivity$loadData$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<ContributionListBean.Page> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                ShortVideoTopFansActivity.this.notifyDataLoaded();
                ShortVideoTopFansActivity.this.showEmptyView();
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable ContributionListBean.Page page, @NotNull FaceCastBaseResponse<ContributionListBean.Page> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                if ((page != null ? page.list : null) != null) {
                    ArrayList<ContributionBean> arrayList = page.list;
                    Boolean valueOf = arrayList != null ? Boolean.valueOf(arrayList.isEmpty()) : null;
                    Intrinsics.checkNotNull(valueOf);
                    if (!valueOf.booleanValue()) {
                        ShortVideoTopFansActivity.this.addDatas(page.list);
                        ShortVideoTopFansActivity shortVideoTopFansActivity = ShortVideoTopFansActivity.this;
                        ArrayList<ContributionBean> arrayList2 = page.list;
                        Integer valueOf2 = arrayList2 != null ? Integer.valueOf(arrayList2.size()) : null;
                        Intrinsics.checkNotNull(valueOf2);
                        shortVideoTopFansActivity.notifyDataLoaded(valueOf2.intValue() > 0);
                        return;
                    }
                }
                ShortVideoTopFansActivity.this.notifyDataLoaded();
                ShortVideoTopFansActivity.this.showEmptyView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        this.mVideoId = getIntent().getStringExtra("data");
        setTitle(R.string.Top_Fans);
        super.onCreate(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    public void onItemClick(@NotNull BaseViewHolder holder, int i9, @NotNull ContributionBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
    }

    public final void setMVideoId(@Nullable String str) {
        this.mVideoId = str;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void convertItem(@NotNull BaseViewHolder holder, int i9, @NotNull ContributionBean item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        View view = holder.getView(R.id.head_view);
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.views.HeadPortraitView");
        holder.setText(R.id.user_name, item.getNick_name());
        holder.setText(R.id.count, String.valueOf(item.getTotalPrice()));
        View view2 = holder.getView(R.id.iv_rank);
        Intrinsics.checkNotNull(view2, "null cannot be cast to non-null type android.widget.ImageView");
        ImageView imageView = (ImageView) view2;
        TextView textView = (TextView) holder.getView(R.id.tv_rank);
        UserBean userBean = new UserBean();
        userBean.userId = item.user_id;
        userBean.img = item.getImg();
        userBean.countryFlag = item.getCountryFlag();
        userBean.setUserVipMsg(item.getUserVipMsg());
        ((HeadPortraitView) view).d(userBean);
        imageView.setVisibility(i9 < 3 ? 0 : 8);
        textView.setVisibility(i9 < 3 ? 8 : 0);
        textView.setText(String.valueOf(i9 + 1));
        if (i9 == 0) {
            imageView.setImageResource(R.mipmap.fans_rank_list1);
        } else if (i9 == 1) {
            imageView.setImageResource(R.mipmap.fans_rank_list2);
        } else if (i9 != 2) {
        } else {
            imageView.setImageResource(R.mipmap.fans_rank_list3);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.list_item_short_video_fans_rank, parent, false));
    }
}
