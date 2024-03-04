package com.guochao.faceshow.aaspring.modulars.personal.invite;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.beans.More;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.utils.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 12\u00020\u0001:\u00011B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010(\u001a\u00020#H\u0016J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\b\u0010-\u001a\u00020*H\u0014J\u0012\u0010.\u001a\u00020*2\b\u0010/\u001a\u0004\u0018\u000100H\u0016R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u00062"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;", "()V", "PERMISSIONS_DUAN", "", "", "getPERMISSIONS_DUAN", "()[Ljava/lang/String;", "[Ljava/lang/String;", "ivBlack", "Landroid/widget/ImageView;", "getIvBlack", "()Landroid/widget/ImageView;", "setIvBlack", "(Landroid/widget/ImageView;)V", "mShareContentBean", "Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;", "getMShareContentBean", "()Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;", "setMShareContentBean", "(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;)V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "shareList", "", "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;", "getShareList", "()Ljava/util/List;", "setShareList", "(Ljava/util/List;)V", "shareType", "", "getShareType", "()I", "setShareType", "(I)V", "getLayoutId", "initView", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ShareNewUiDialogFragment extends BaseDialogFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public ImageView ivBlack;
    @Nullable
    private ShareContentBean mShareContentBean;
    public RecyclerView recyclerView;
    private int shareType;
    @NotNull
    private final String[] PERMISSIONS_DUAN = {"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    @NotNull
    private List<SharePlatformBean> shareList = new ArrayList();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$Companion;", "", "()V", "getInstance", "Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;", "shareContentBean", "Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;", "type", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ShareNewUiDialogFragment getInstance(@NotNull ShareContentBean shareContentBean, int i9) {
            Intrinsics.checkNotNullParameter(shareContentBean, "shareContentBean");
            ShareNewUiDialogFragment shareNewUiDialogFragment = new ShareNewUiDialogFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("type", i9);
            if (i9 != 0) {
                bundle.putParcelable("data", shareContentBean);
            }
            shareNewUiDialogFragment.setArguments(bundle);
            return shareNewUiDialogFragment;
        }
    }

    @JvmStatic
    @NotNull
    public static final ShareNewUiDialogFragment getInstance(@NotNull ShareContentBean shareContentBean, int i9) {
        return Companion.getInstance(shareContentBean, i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m540initView$lambda0(ShareNewUiDialogFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @NotNull
    public final ImageView getIvBlack() {
        ImageView imageView = this.ivBlack;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ivBlack");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_share_new_ui;
    }

    @Nullable
    public final ShareContentBean getMShareContentBean() {
        return this.mShareContentBean;
    }

    @NotNull
    public final String[] getPERMISSIONS_DUAN() {
        return this.PERMISSIONS_DUAN;
    }

    @NotNull
    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
        return null;
    }

    @NotNull
    public final List<SharePlatformBean> getShareList() {
        return this.shareList;
    }

    public final int getShareType() {
        return this.shareType;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@Nullable View view) {
        if (SharePlatformBean.checkApkExist(SharePlatformBean.TwitterPackage)) {
            this.shareList.add(new SharePlatformBean(Constants.ThirdPartyLogin.PLATFORM_TWITTER, R.mipmap.icon_video_share_twi, R.string.Twitter));
        }
        if (SharePlatformBean.checkApkExist(SharePlatformBean.WechatPackage)) {
            this.shareList.add(new SharePlatformBean(SharePlatformBean.Wechat.NAME, R.mipmap.icon_video_share_wechat, R.string.wechat));
            this.shareList.add(new SharePlatformBean(SharePlatformBean.WechatMoments.NAME, R.mipmap.icon_video_share_friend, R.string.wechat_moment));
        }
        if (SharePlatformBean.checkApkExist(SharePlatformBean.WeiBoPackage)) {
            this.shareList.add(new SharePlatformBean(SharePlatformBean.SinaWeibo.NAME, R.mipmap.icon_video_share_weibo, R.string.sina));
        }
        this.shareList.add(new SharePlatformBean(SharePlatformBean.Copy.NAME, R.mipmap.show_pop_fuzhilianjie, R.string.copy_link));
        this.shareList.add(new SharePlatformBean(More.NAME, R.mipmap.show_pop_qita, R.string.muser_center_report_tenth));
        if (view != null) {
            View findViewById = view.findViewById(R.id.recycler_view);
            Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById(R.id.recycler_view)");
            setRecyclerView((RecyclerView) findViewById);
            View findViewById2 = view.findViewById(R.id.iv_black);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "view.findViewById(R.id.iv_black)");
            setIvBlack((ImageView) findViewById2);
            GridLayoutManager gridLayoutManager = new GridLayoutManager(getActivity(), 6);
            getIvBlack().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShareNewUiDialogFragment.m540initView$lambda0(ShareNewUiDialogFragment.this, view2);
                }
            });
            getRecyclerView().setLayoutManager(gridLayoutManager);
            getRecyclerView().setAdapter(new ShareNewUiDialogFragment$initView$2(this));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        Integer valueOf = arguments != null ? Integer.valueOf(arguments.getInt("type")) : null;
        Intrinsics.checkNotNull(valueOf);
        int intValue = valueOf.intValue();
        this.shareType = intValue;
        if (intValue == 0) {
            ShareContentBean shareContentBean = new ShareContentBean();
            this.mShareContentBean = shareContentBean;
            Intrinsics.checkNotNull(shareContentBean);
            shareContentBean.setShortUrl(j.a().b().getShareUrl());
            ShareContentBean shareContentBean2 = this.mShareContentBean;
            Intrinsics.checkNotNull(shareContentBean2);
            shareContentBean2.setImgUrl(j.a().b().getImageBase64());
            return;
        }
        Bundle arguments2 = getArguments();
        this.mShareContentBean = arguments2 != null ? (ShareContentBean) arguments2.getParcelable("data") : null;
    }

    public final void setIvBlack(@NotNull ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.ivBlack = imageView;
    }

    public final void setMShareContentBean(@Nullable ShareContentBean shareContentBean) {
        this.mShareContentBean = shareContentBean;
    }

    public final void setRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recyclerView = recyclerView;
    }

    public final void setShareList(@NotNull List<SharePlatformBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.shareList = list;
    }

    public final void setShareType(int i9) {
        this.shareType = i9;
    }
}
