package com.guochao.faceshow.aaspring.modulars.personal.invite;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ShareNewUiDialogFragment$initView$2 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ ShareNewUiDialogFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareNewUiDialogFragment$initView$2(ShareNewUiDialogFragment shareNewUiDialogFragment) {
        this.this$0 = shareNewUiDialogFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-0  reason: not valid java name */
    public static final void m541onBindViewHolder$lambda0(ShareNewUiDialogFragment this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.getShareList().get(i9).getSharePlatformName().equals(SharePlatformBean.Copy.NAME)) {
            Context context = this$0.getContext();
            Intrinsics.checkNotNull(context);
            Object systemService = context.getSystemService("clipboard");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            ShareContentBean mShareContentBean = this$0.getMShareContentBean();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Label", mShareContentBean != null ? mShareContentBean.getShortUrl() : null));
            BaseApplication baseApplication = BaseApplication.getInstance();
            Context context2 = this$0.getContext();
            Intrinsics.checkNotNull(context2);
            String string = context2.getString(R.string.copy_link_succ);
            Intrinsics.checkNotNullExpressionValue(string, "context!!.getString(R.string.copy_link_succ)");
            ToastUtils.showToast$default(baseApplication, string, 0, 0, 12, null);
            this$0.dismiss();
            return;
        }
        this$0.getMShareContentBean();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.this$0.getShareList().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull BaseViewHolder holder, final int i9) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ((ImageView) holder.getView(R.id.share_icon)).setImageResource(this.this$0.getShareList().get(i9).getIcon());
        ShareNewUiDialogFragment shareNewUiDialogFragment = this.this$0;
        ((TextView) holder.getView(R.id.share_name)).setText(shareNewUiDialogFragment.getString(shareNewUiDialogFragment.getShareList().get(i9).getDiplayNameId()));
        View view = holder.getView(R.id.view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (i9 == 0) {
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(15.0f));
            view.setVisibility(0);
        } else if (i9 == 1 || i9 == 2) {
            view.setVisibility(0);
        } else if (i9 != 3) {
            view.setVisibility(8);
        } else {
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(15.0f));
            view.setVisibility(0);
        }
        View view2 = holder.itemView;
        final ShareNewUiDialogFragment shareNewUiDialogFragment2 = this.this$0;
        view2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.personal.invite.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                ShareNewUiDialogFragment$initView$2.m541onBindViewHolder$lambda0(ShareNewUiDialogFragment.this, i9, view3);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(this.this$0.getLayoutInflater().inflate(R.layout.dialog_collision_share, parent, false));
    }
}
