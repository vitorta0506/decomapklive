package com.guochao.component.mvp.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.databinding.ViewMvpInfoBinding;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0003J\b\u0010\u0015\u001a\u00020\bH\u0002J\b\u0010\u0016\u001a\u00020\nH\u0002J0\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\nH\u0014J\u0018\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nH\u0014J\u0012\u0010\"\u001a\u00020\u00182\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/guochao/component/mvp/view/MVPInfoView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "leftMargin", "", "mWidth", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/mvp/model/MVPInfoModel;", "viewBinding", "Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;", "getViewBinding", "()Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;", "setViewBinding", "(Lcom/guochao/component/mvp/databinding/ViewMvpInfoBinding;)V", "getNextMonthTips", "", "getNextProgress", "getThisMonthLevel", "onLayout", "", "changed", "", NotifyType.LIGHTS, "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "setData", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MVPInfoView extends LinearLayout {
    private final float leftMargin;
    private int mWidth;
    @Nullable
    private MVPInfoModel model;
    @NotNull
    private ViewMvpInfoBinding viewBinding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MVPInfoView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ MVPInfoView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    private final String getNextMonthTips() {
        int thisMonthLevel = getThisMonthLevel();
        if (thisMonthLevel > 0) {
            Context context = getContext();
            int i9 = R$string.mvp_next_month;
            String string = context.getString(i9, "MVP" + thisMonthLevel);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri…onth, \"MVP${level ?: 0}\")");
            return string;
        }
        String string2 = getContext().getString(R$string.mvp_next_month_no_get);
        Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.string.mvp_next_month_no_get)");
        return string2;
    }

    private final float getNextProgress() {
        float f10;
        MVPInfoModel.MvpConfVo mvpConfVo;
        MVPInfoModel.MvpConfVo mvpConfVo2;
        MVPInfoModel.MvpConfVo mvpConfVo3;
        Double rechargeMoney;
        MVPInfoModel mVPInfoModel = this.model;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList = mVPInfoModel != null ? mVPInfoModel.getMvpConfVoList() : null;
        int size = mvpConfVoList != null ? mvpConfVoList.size() : 0;
        MVPInfoModel mVPInfoModel2 = this.model;
        double d10 = 0.0d;
        double doubleValue = (mVPInfoModel2 == null || (rechargeMoney = mVPInfoModel2.getRechargeMoney()) == null) ? 0.0d : rechargeMoney.doubleValue();
        int thisMonthLevel = getThisMonthLevel();
        if (thisMonthLevel >= size || size <= 0) {
            f10 = 0.0f;
        } else {
            double d11 = 1.0d;
            if (thisMonthLevel != 0) {
                if (mvpConfVoList != null && (mvpConfVo2 = mvpConfVoList.get(thisMonthLevel - 1)) != null) {
                    d10 = mvpConfVo2.getRechargeMin();
                }
                if (mvpConfVoList != null && (mvpConfVo = mvpConfVoList.get(thisMonthLevel)) != null) {
                    d11 = mvpConfVo.getRechargeMin();
                }
                doubleValue -= d10;
                d11 -= d10;
            } else if (mvpConfVoList != null && (mvpConfVo3 = mvpConfVoList.get(0)) != null) {
                d11 = mvpConfVo3.getRechargeMin();
            }
            f10 = (float) (doubleValue / d11);
        }
        if (f10 > 1.0f) {
            return 1.0f;
        }
        if (f10 < 0.0f) {
            return 0.0f;
        }
        return f10;
    }

    private final int getThisMonthLevel() {
        List<MVPInfoModel.MvpConfVo> mvpConfVoList;
        Double rechargeMoney;
        MVPInfoModel mVPInfoModel = this.model;
        int i9 = 0;
        if (mVPInfoModel != null && (mvpConfVoList = mVPInfoModel.getMvpConfVoList()) != null) {
            int i10 = 0;
            for (Object obj : mvpConfVoList) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                MVPInfoModel.MvpConfVo mvpConfVo = (MVPInfoModel.MvpConfVo) obj;
                MVPInfoModel mVPInfoModel2 = this.model;
                if (((mVPInfoModel2 == null || (rechargeMoney = mVPInfoModel2.getRechargeMoney()) == null) ? 0.0d : rechargeMoney.doubleValue()) >= (mvpConfVo != null ? mvpConfVo.getRechargeMin() : 0.0d)) {
                    i9 = i11;
                }
                i10 = i11;
            }
        }
        return i9;
    }

    @NotNull
    public final ViewMvpInfoBinding getViewBinding() {
        return this.viewBinding;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
    }

    public final void setData(@Nullable MVPInfoModel mVPInfoModel) {
        List<MVPInfoModel.MvpConfVo> mvpConfVoList;
        this.model = mVPInfoModel;
        if (mVPInfoModel != null && (mvpConfVoList = mVPInfoModel.getMvpConfVoList()) != null) {
            int size = mvpConfVoList.size();
            FrameLayout frameLayout = this.viewBinding.mvpProgressLay;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "viewBinding.mvpProgressLay");
            new MvpProgressHolder(frameLayout).setSize(size, getThisMonthLevel(), getNextProgress(), mVPInfoModel);
        }
        if (mVPInfoModel != null) {
            ViewMvpInfoBinding viewMvpInfoBinding = this.viewBinding;
            TextView textView = viewMvpInfoBinding.rechargeMoneyTV;
            Context context = getContext();
            int i9 = R$string.mvp_this_month_monty;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Typography.dollar);
            sb2.append(mVPInfoModel.getRechargeMoney());
            textView.setText(context.getString(i9, sb2.toString()));
            viewMvpInfoBinding.nextMVPTV.setText(getNextMonthTips());
        }
    }

    public final void setViewBinding(@NotNull ViewMvpInfoBinding viewMvpInfoBinding) {
        Intrinsics.checkNotNullParameter(viewMvpInfoBinding, "<set-?>");
        this.viewBinding = viewMvpInfoBinding;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MVPInfoView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ViewMvpInfoBinding inflate = ViewMvpInfoBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context), this, true)");
        this.viewBinding = inflate;
        this.leftMargin = 14.0f;
    }
}
