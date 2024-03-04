package com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.BackPageGift;
import com.guochao.faceshow.aaspring.beans.DressUpData;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.TimeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q7.a;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B'\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bJ\"\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\bH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter;", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;", "mContext", "Landroid/content/Context;", "data", "", "layoutId", "", "(Landroid/content/Context;Ljava/util/List;I)V", "getMContext", "()Landroid/content/Context;", "setMContext", "(Landroid/content/Context;)V", "addDrawableStart", "", "textView", "Landroid/widget/TextView;", "resId", "convert", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BackPackAdapter extends CommonRecyclerAdapter<BackPageGift> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Context mContext;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/BackPackAdapter$Companion;", "", "()V", "setImageResource", "", "imageView", "Landroid/widget/ImageView;", "rewardBean", "Lcom/guochao/faceshow/aaspring/beans/BackPageGift;", "setImageResourceDressUp", "Lcom/guochao/faceshow/aaspring/beans/DressUpData;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void setImageResource(@NotNull ImageView imageView, @NotNull BackPageGift rewardBean) {
            Intrinsics.checkNotNullParameter(imageView, "imageView");
            Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
            if (rewardBean.getBagAttribute() == 0) {
                imageView.setBackgroundResource(R.mipmap.gift_clip_light);
                imageView.measure(0, 0);
                int dp2px = DensityUtil.dp2px(10.0f);
                imageView.setPadding(dp2px, dp2px, dp2px, dp2px);
            } else {
                imageView.setBackgroundColor(0);
                imageView.measure(0, 0);
                int dp2px2 = DensityUtil.dp2px(0.0f);
                imageView.setPadding(dp2px2, dp2px2, dp2px2, dp2px2);
            }
            c.v(imageView).r(rewardBean.getImg()).Q0(imageView);
        }

        @JvmStatic
        public final void setImageResourceDressUp(@NotNull ImageView imageView, @NotNull DressUpData rewardBean) {
            boolean equals;
            Integer bagAttribute;
            Intrinsics.checkNotNullParameter(imageView, "imageView");
            Intrinsics.checkNotNullParameter(rewardBean, "rewardBean");
            if (rewardBean.getBagAttribute() != null && (bagAttribute = rewardBean.getBagAttribute()) != null && bagAttribute.intValue() == 0) {
                imageView.setBackgroundResource(R.mipmap.gift_clip_light);
                imageView.measure(0, 0);
                int dp2px = DensityUtil.dp2px(10.0f);
                imageView.setPadding(dp2px, dp2px, dp2px, dp2px);
            } else {
                imageView.setBackgroundColor(0);
                imageView.measure(0, 0);
                int dp2px2 = DensityUtil.dp2px(0.0f);
                imageView.setPadding(dp2px2, dp2px2, dp2px2, dp2px2);
            }
            equals = StringsKt__StringsJVMKt.equals(Language.ARABIC, a.e().c(), true);
            if (equals) {
                c.v(imageView).r(rewardBean.getArThumbnailImage()).Q0(imageView);
            } else {
                c.v(imageView).r(rewardBean.getThumbnailImage()).Q0(imageView);
            }
        }
    }

    public BackPackAdapter(@Nullable Context context, @Nullable List<BackPageGift> list, int i9) {
        super(context, list, i9);
        this.mContext = context;
    }

    @JvmStatic
    public static final void setImageResource(@NotNull ImageView imageView, @NotNull BackPageGift backPageGift) {
        Companion.setImageResource(imageView, backPageGift);
    }

    @JvmStatic
    public static final void setImageResourceDressUp(@NotNull ImageView imageView, @NotNull DressUpData dressUpData) {
        Companion.setImageResourceDressUp(imageView, dressUpData);
    }

    public final void addDrawableStart(@NotNull TextView textView, int i9) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Drawable drawable = textView.getContext().getResources().getDrawable(i9);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        textView.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    @Nullable
    public final Context getMContext() {
        return this.mContext;
    }

    public final void setMContext(@Nullable Context context) {
        this.mContext = context;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull BackPageGift item, int i9) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        ImageView imageView;
        Intrinsics.checkNotNullParameter(item, "item");
        if (baseViewHolder != null && (imageView = (ImageView) baseViewHolder.getView(R.id.gift_img)) != null) {
            Companion.setImageResource(imageView, item);
        }
        if (baseViewHolder != null && (textView3 = (TextView) baseViewHolder.getView(R.id.gift_name)) != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(item.getName());
            sb2.append(item.getBagAttribute() == 0 ? textView3.getContext().getString(R.string.signin_task_gift_chips) : "");
            textView3.setText(sb2.toString());
        }
        if (baseViewHolder != null && (textView2 = (TextView) baseViewHolder.getView(R.id.gift_num)) != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append('x');
            sb3.append(item.getNumber() <= 0 ? 1 : item.getNumber());
            textView2.setText(sb3.toString());
        }
        if (baseViewHolder == null || (textView = (TextView) baseViewHolder.getView(R.id.introduction)) == null) {
            return;
        }
        textView.setText(item.getIntroduction());
        if (TextUtils.isEmpty(item.getIntroduction())) {
            if (item.getBagAttribute() == 0) {
                textView.setText(textView.getContext().getString(R.string.signin_task_gift_chips_tip));
                TextDrawableUtil.clearDrawable(textView);
                return;
            }
            textView.setText(TimeUtil.getDressUpTime(textView.getContext(), item.getBagAttribute() == 0 ? 0L : item.getExpireDay(), -1, System.currentTimeMillis() + i.u().s().getServerTimeDiff()));
            addDrawableStart(textView, R.mipmap.icon_timeout);
            textView.setCompoundDrawablePadding(DensityUtil.dp2px(4.0f));
        }
    }
}
