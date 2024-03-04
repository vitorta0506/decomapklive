package com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MvpBagBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\"\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\bH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/MvpBagAdapter;", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "(Landroid/content/Context;Ljava/util/List;I)V", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "convert", "", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpBagAdapter extends CommonRecyclerAdapter<MvpBagBean> {
    @Nullable
    private Context mContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MvpBagAdapter(@Nullable Context context, @NotNull List<MvpBagBean> data, int i9) {
        super(context, data, i9);
        Intrinsics.checkNotNullParameter(data, "data");
        this.mContext = context;
    }

    @Nullable
    public final Context getMContext() {
        return this.mContext;
    }

    public final void setMContext(@Nullable Context context) {
        this.mContext = context;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull MvpBagBean item, int i9) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        ImageView imageView;
        Context context;
        Intrinsics.checkNotNullParameter(item, "item");
        if (baseViewHolder != null && (imageView = (ImageView) baseViewHolder.getView(R.id.gift_img)) != null && (context = this.mContext) != null) {
            c.u(context).r(item.getUrl()).Q0(imageView);
        }
        if (baseViewHolder != null && (textView3 = (TextView) baseViewHolder.getView(R.id.gift_name)) != null) {
            textView3.setText(textView3.getContext().getString(R.string.mvp_only_for_you_badge));
        }
        if (baseViewHolder != null && (textView2 = (TextView) baseViewHolder.getView(R.id.gift_num)) != null) {
            textView2.setVisibility(8);
        }
        if (baseViewHolder == null || (textView = (TextView) baseViewHolder.getView(R.id.introduction)) == null) {
            return;
        }
        textView.setText(TimeUtil.getDressUpTime(this.mContext, item.getExpireTime(), 3, i.u().s().getServerTimeDiff() + System.currentTimeMillis()));
    }
}
