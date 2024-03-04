package com.guochao.component.mvp.view;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.mvp.R$drawable;
import com.guochao.component.mvp.R$id;
import com.guochao.component.mvp.R$layout;
import com.guochao.component.mvp.R$mipmap;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.model.MVPInfoModel;
import com.guochao.faceshow.aaspring.utils.TextDrawableUtil;
import com.guochao.faceshow.utils.DensityUtil;
import java.math.BigDecimal;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ(\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J \u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0018"}, d2 = {"Lcom/guochao/component/mvp/view/MvpProgressHolder;", "", "itemView", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "getItemView", "()Landroid/view/ViewGroup;", "getFirstCharIndex", "", "content", "", "keyWords", "setSize", "", "size", "currentSize", "progress", "", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/component/mvp/model/MVPInfoModel;", "setSpannerString", "textView", "Landroid/widget/TextView;", "color", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvpProgressHolder {
    @NotNull
    private final ViewGroup itemView;

    public MvpProgressHolder(@NotNull ViewGroup itemView) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        this.itemView = itemView;
    }

    public final int getFirstCharIndex(@NotNull String content, @NotNull String keyWords) {
        boolean contains$default;
        int indexOf$default;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(keyWords, "keyWords");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        String upperCase = content.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale2, "getDefault()");
        String upperCase2 = keyWords.toUpperCase(locale2);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(locale)");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) upperCase, (CharSequence) upperCase2, false, 2, (Object) null);
        if (contains$default) {
            Locale locale3 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale3, "getDefault()");
            String upperCase3 = keyWords.toUpperCase(locale3);
            Intrinsics.checkNotNullExpressionValue(upperCase3, "this as java.lang.String).toUpperCase(locale)");
            Locale locale4 = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale4, "getDefault()");
            String upperCase4 = content.toUpperCase(locale4);
            Intrinsics.checkNotNullExpressionValue(upperCase4, "this as java.lang.String).toUpperCase(locale)");
            indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) upperCase4, upperCase3, 0, false, 6, (Object) null);
            return indexOf$default;
        }
        return -1;
    }

    @NotNull
    public final ViewGroup getItemView() {
        return this.itemView;
    }

    public final void setSize(int i9, int i10, float f10, @Nullable MVPInfoModel mVPInfoModel) {
        List<MVPInfoModel.MvpConfVo> mvpConfVoList;
        MVPInfoModel.MvpConfVo mvpConfVo;
        double rechargeMin;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList2;
        MVPInfoModel.MvpConfVo mvpConfVo2;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList3;
        MVPInfoModel.MvpConfVo mvpConfVo3;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList4;
        MVPInfoModel.MvpConfVo mvpConfVo4;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList5;
        MVPInfoModel.MvpConfVo mvpConfVo5;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList6;
        MVPInfoModel.MvpConfVo mvpConfVo6;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList7;
        MVPInfoModel.MvpConfVo mvpConfVo7;
        int i11;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList8;
        MVPInfoModel.MvpConfVo mvpConfVo8;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList9;
        MVPInfoModel.MvpConfVo mvpConfVo9;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList10;
        MVPInfoModel.MvpConfVo mvpConfVo10;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList11;
        MVPInfoModel.MvpConfVo mvpConfVo11;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList12;
        MVPInfoModel.MvpConfVo mvpConfVo12;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList13;
        MVPInfoModel.MvpConfVo mvpConfVo13;
        float f11;
        String str;
        int i12;
        int i13;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList14;
        MVPInfoModel.MvpConfVo mvpConfVo14;
        float f12;
        double d10;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList15;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList16;
        MVPInfoModel.MvpConfVo mvpConfVo15;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList17;
        MVPInfoModel.MvpConfVo mvpConfVo16;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList18;
        MVPInfoModel.MvpConfVo mvpConfVo17;
        List<MVPInfoModel.MvpConfVo> mvpConfVoList19;
        MVPInfoModel.MvpConfVo mvpConfVo18;
        Double rechargeMoney;
        this.itemView.removeAllViews();
        if (i9 == 0) {
            this.itemView.setVisibility(8);
            return;
        }
        this.itemView.setBackgroundColor(0);
        double doubleValue = (mVPInfoModel == null || (rechargeMoney = mVPInfoModel.getRechargeMoney()) == null) ? 0.0d : rechargeMoney.doubleValue();
        int i14 = i10 + 1;
        if (i14 == i9) {
            if (mVPInfoModel != null && (mvpConfVoList19 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo18 = mvpConfVoList19.get(i9 - 1)) != null) {
                rechargeMin = mvpConfVo18.getRechargeMin();
            }
            rechargeMin = 0.0d;
        } else {
            if (i14 <= i9 && mVPInfoModel != null && (mvpConfVoList = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo = mvpConfVoList.get(i10)) != null) {
                rechargeMin = mvpConfVo.getRechargeMin();
            }
            rechargeMin = 0.0d;
        }
        double doubleValue2 = new BigDecimal(String.valueOf(rechargeMin)).subtract(new BigDecimal(String.valueOf(doubleValue))).doubleValue();
        if (doubleValue2 < 0.0d) {
            doubleValue2 = 0.0d;
        }
        String str2 = "MVP";
        Integer num = null;
        if (i9 == 1) {
            int measuredWidth = this.itemView.getMeasuredWidth();
            View inflate = LayoutInflater.from(this.itemView.getContext()).inflate(R$layout.layout_mvp1_progress, this.itemView, true);
            Intrinsics.checkNotNull(inflate, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) inflate;
            viewGroup.findViewById(R$id.select_progress).getLayoutParams().width = (int) (measuredWidth * f10);
            TextView textView = (TextView) viewGroup.findViewById(R$id.mvpTV);
            TextDrawableUtil.addDrawableEnd(textView, i10 < 1 ? R$mipmap.ic_mvp_mvp1 : R$mipmap.ic_mvp_mvp1_select);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("($");
            sb2.append((mVPInfoModel == null || (mvpConfVoList3 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo3 = mvpConfVoList3.get(0)) == null) ? null : Integer.valueOf((int) mvpConfVo3.getRechargeMin()));
            sb2.append(')');
            textView.setText(sb2.toString());
            Unit unit = Unit.INSTANCE;
            if (i10 < 1) {
                TextView textView2 = new TextView(this.itemView.getContext());
                Context context = this.itemView.getContext();
                int i15 = R$string.mvp_diff_tips;
                Object[] objArr = new Object[2];
                StringBuilder sb3 = new StringBuilder();
                sb3.append(Typography.dollar);
                sb3.append(doubleValue2);
                objArr[0] = sb3.toString();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList2 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo2 = mvpConfVoList2.get(0)) != null) {
                    num = Integer.valueOf(mvpConfVo2.getMvpLevel());
                }
                sb4.append(num);
                objArr[1] = sb4.toString();
                textView2.setText(context.getString(i15, objArr));
                textView2.setTextSize(2, 15.0f);
                textView2.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView2.setTextColor(-1);
                textView2.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView2.setMaxLines(1);
                textView2.setSingleLine(true);
                textView2.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView2.setSelected(true);
                ImageView imageView = new ImageView(this.itemView.getContext());
                imageView.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup.addView(imageView);
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.setMarginEnd(DensityUtil.dp2px(7.0f));
                layoutParams2.topMargin = DensityUtil.dp2px(44.0f);
                layoutParams2.gravity = GravityCompat.END;
                viewGroup.addView(textView2);
                ViewGroup.LayoutParams layoutParams3 = textView2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                int measureText = (int) (textView2.getPaint().measureText(textView2.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText <= measuredWidth) {
                    measuredWidth = measureText;
                }
                layoutParams4.width = Integer.valueOf(measuredWidth).intValue();
                layoutParams4.height = -2;
                layoutParams4.topMargin = DensityUtil.dp2px(50.0f);
                layoutParams4.gravity = GravityCompat.END;
                textView2.setGravity(17);
                StringBuilder sb5 = new StringBuilder();
                sb5.append(Typography.dollar);
                sb5.append(doubleValue2);
                setSpannerString(textView2, sb5.toString(), Color.parseColor("#FF80F2"));
            }
        } else if (i9 == 2) {
            int measuredWidth2 = this.itemView.getMeasuredWidth();
            View inflate2 = LayoutInflater.from(this.itemView.getContext()).inflate(R$layout.layout_mvp2_progress, this.itemView, true);
            Intrinsics.checkNotNull(inflate2, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup2 = (ViewGroup) inflate2;
            TextView textView3 = (TextView) viewGroup2.findViewById(R$id.mvpTV1);
            TextDrawableUtil.addDrawableStart(textView3, i10 < 1 ? R$mipmap.ic_mvp_mvp1 : R$mipmap.ic_mvp_mvp1_select);
            StringBuilder sb6 = new StringBuilder();
            sb6.append("($");
            sb6.append((mVPInfoModel == null || (mvpConfVoList7 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo7 = mvpConfVoList7.get(0)) == null) ? null : Integer.valueOf((int) mvpConfVo7.getRechargeMin()));
            sb6.append(')');
            textView3.setText(sb6.toString());
            Unit unit2 = Unit.INSTANCE;
            TextView textView4 = (TextView) viewGroup2.findViewById(R$id.mvpTV2);
            TextDrawableUtil.addDrawableEnd(textView4, i10 < 2 ? R$mipmap.ic_mvp_mvp2 : R$mipmap.ic_mvp_mvp2_select);
            StringBuilder sb7 = new StringBuilder();
            sb7.append("($");
            sb7.append((mVPInfoModel == null || (mvpConfVoList6 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo6 = mvpConfVoList6.get(1)) == null) ? null : Integer.valueOf((int) mvpConfVo6.getRechargeMin()));
            sb7.append(')');
            textView4.setText(sb7.toString());
            if (i10 == 1) {
                float f13 = measuredWidth2;
                viewGroup2.findViewById(R$id.select_progress).getLayoutParams().width = (int) (((1 + f10) * f13) / 2.0f);
                viewGroup2.findViewById(R$id.big_white_point_lay).setVisibility(0);
                TextView textView5 = new TextView(this.itemView.getContext());
                Context context2 = this.itemView.getContext();
                int i16 = R$string.mvp_diff_tips;
                Object[] objArr2 = new Object[2];
                StringBuilder sb8 = new StringBuilder();
                sb8.append(Typography.dollar);
                sb8.append(doubleValue2);
                objArr2[0] = sb8.toString();
                StringBuilder sb9 = new StringBuilder();
                sb9.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList5 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo5 = mvpConfVoList5.get(0)) != null) {
                    num = Integer.valueOf(mvpConfVo5.getMvpLevel());
                }
                sb9.append(num);
                objArr2[1] = sb9.toString();
                textView5.setText(context2.getString(i16, objArr2));
                textView5.setTextSize(2, 15.0f);
                textView5.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView5.setTextColor(-1);
                textView5.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView5.setMaxLines(1);
                textView5.setSingleLine(true);
                textView5.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView5.setSelected(true);
                ImageView imageView2 = new ImageView(this.itemView.getContext());
                imageView2.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView2.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup2.addView(imageView2);
                ViewGroup.LayoutParams layoutParams5 = imageView2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) layoutParams5;
                layoutParams6.setMarginStart((int) ((f13 / 2.0f) - DensityUtil.dp2px(7.0f)));
                layoutParams6.topMargin = DensityUtil.dp2px(44.0f);
                viewGroup2.addView(textView5);
                ViewGroup.LayoutParams layoutParams7 = textView5.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams7, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams8 = (FrameLayout.LayoutParams) layoutParams7;
                int measureText2 = (int) (textView5.getPaint().measureText(textView5.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText2 <= measuredWidth2) {
                    measuredWidth2 = measureText2;
                }
                layoutParams8.width = Integer.valueOf(measuredWidth2).intValue();
                layoutParams8.height = -2;
                layoutParams8.topMargin = DensityUtil.dp2px(50.0f);
                layoutParams8.gravity = GravityCompat.END;
                textView5.setGravity(17);
                StringBuilder sb10 = new StringBuilder();
                sb10.append(Typography.dollar);
                sb10.append(doubleValue2);
                setSpannerString(textView5, sb10.toString(), Color.parseColor("#FF80F2"));
            } else if (f10 < 1.0f) {
                viewGroup2.findViewById(R$id.select_progress).getLayoutParams().width = (int) ((measuredWidth2 * f10) / 2.0f);
                TextView textView6 = new TextView(this.itemView.getContext());
                Context context3 = this.itemView.getContext();
                int i17 = R$string.mvp_diff_tips;
                Object[] objArr3 = new Object[2];
                StringBuilder sb11 = new StringBuilder();
                sb11.append(Typography.dollar);
                sb11.append(doubleValue2);
                objArr3[0] = sb11.toString();
                StringBuilder sb12 = new StringBuilder();
                sb12.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList4 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo4 = mvpConfVoList4.get(1)) != null) {
                    num = Integer.valueOf(mvpConfVo4.getMvpLevel());
                }
                sb12.append(num);
                objArr3[1] = sb12.toString();
                textView6.setText(context3.getString(i17, objArr3));
                textView6.setTextSize(2, 15.0f);
                textView6.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView6.setTextColor(-1);
                textView6.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView6.setMaxLines(1);
                textView6.setSingleLine(true);
                textView6.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView6.setSelected(true);
                ImageView imageView3 = new ImageView(this.itemView.getContext());
                imageView3.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView3.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup2.addView(imageView3);
                ViewGroup.LayoutParams layoutParams9 = imageView3.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams9, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams10 = (FrameLayout.LayoutParams) layoutParams9;
                layoutParams10.setMarginEnd(DensityUtil.dp2px(7.0f));
                layoutParams10.topMargin = DensityUtil.dp2px(44.0f);
                layoutParams10.gravity = GravityCompat.END;
                viewGroup2.addView(textView6);
                ViewGroup.LayoutParams layoutParams11 = textView6.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams11, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams11;
                int measureText3 = (int) (textView6.getPaint().measureText(textView6.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText3 <= measuredWidth2) {
                    measuredWidth2 = measureText3;
                }
                marginLayoutParams.width = Integer.valueOf(measuredWidth2).intValue();
                marginLayoutParams.height = -2;
                marginLayoutParams.topMargin = DensityUtil.dp2px(50.0f);
                textView6.setGravity(17);
                StringBuilder sb13 = new StringBuilder();
                sb13.append(Typography.dollar);
                sb13.append(doubleValue2);
                setSpannerString(textView6, sb13.toString(), Color.parseColor("#FF80F2"));
            }
        } else if (i9 != 3) {
            int measuredWidth3 = this.itemView.getMeasuredWidth();
            View inflate3 = LayoutInflater.from(this.itemView.getContext()).inflate(R$layout.layout_mvpn_progress, this.itemView, true);
            Intrinsics.checkNotNull(inflate3, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup3 = (ViewGroup) inflate3;
            float f14 = measuredWidth3;
            float f15 = 0.5f * f14;
            View findViewById = viewGroup3.findViewById(R$id.content_layout);
            Intrinsics.checkNotNullExpressionValue(findViewById, "mvpn.findViewById<ViewGroup>(R.id.content_layout)");
            ViewGroup viewGroup4 = (ViewGroup) findViewById;
            int i18 = i9 - 3;
            viewGroup4.getLayoutParams().width = (((int) f15) * i18) + measuredWidth3;
            float f16 = i10 + f10;
            int i19 = (f16 > 1.0f ? 1 : (f16 == 1.0f ? 0 : -1));
            if (i19 < 0) {
                f11 = f14;
                i13 = (int) (((f16 * f15) / 5.0f) * 2.0f);
                str = "#FF80F2";
                i12 = measuredWidth3;
            } else {
                f11 = f14;
                if (f16 < 2.0f) {
                    str = "#FF80F2";
                    i12 = measuredWidth3;
                    i13 = (int) (((f15 / 5.0f) * 2.0f) + ((((f16 - 1) * f15) / 5.0f) * 3.0f));
                } else {
                    str = "#FF80F2";
                    i12 = measuredWidth3;
                    i13 = (int) (((f16 - 2) * f15) + f15);
                }
            }
            viewGroup3.findViewById(R$id.select_progress).getLayoutParams().width = i13;
            int i20 = 0;
            while (i20 < i18) {
                View view = new View(this.itemView.getContext());
                int i21 = R$id.mvp_text_lay;
                int i22 = i18;
                ((ViewGroup) viewGroup3.findViewById(i21)).addView(view);
                String str3 = str2;
                view.getLayoutParams().width = 0;
                view.getLayoutParams().height = 0;
                ViewGroup.LayoutParams layoutParams12 = view.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams12, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                ((LinearLayout.LayoutParams) layoutParams12).weight = 5.0f;
                View view2 = new View(this.itemView.getContext());
                int i23 = R$id.big_white_point_lay;
                ((ViewGroup) viewGroup3.findViewById(i23)).addView(view2);
                double d11 = doubleValue2;
                view2.getLayoutParams().width = 0;
                view2.getLayoutParams().height = 0;
                ViewGroup.LayoutParams layoutParams13 = view2.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams13, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                ((LinearLayout.LayoutParams) layoutParams13).weight = 5.0f;
                View view3 = new View(this.itemView.getContext());
                ((ViewGroup) viewGroup3.findViewById(i21)).addView(view3);
                view3.getLayoutParams().width = DensityUtil.dp2px(10.0f);
                view3.getLayoutParams().height = DensityUtil.dp2px(10.0f);
                view3.setBackgroundResource(R$drawable.bg_oval_white);
                View view4 = new View(this.itemView.getContext());
                ((ViewGroup) viewGroup3.findViewById(i23)).addView(view4);
                view4.getLayoutParams().width = DensityUtil.dp2px(20.0f);
                view4.getLayoutParams().height = DensityUtil.dp2px(20.0f);
                view4.setBackgroundResource(R$drawable.bg_mvp_level_selected);
                view4.setVisibility(4);
                TextView textView7 = new TextView(this.itemView.getContext());
                viewGroup4.addView(textView7);
                textView7.getLayoutParams().width = -2;
                textView7.getLayoutParams().height = -2;
                ViewGroup.LayoutParams layoutParams14 = textView7.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams14, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ((ViewGroup.MarginLayoutParams) layoutParams14).topMargin = DensityUtil.dp2px(28.0f);
                StringBuilder sb14 = new StringBuilder();
                sb14.append("($");
                sb14.append((mVPInfoModel == null || (mvpConfVoList18 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo17 = mvpConfVoList18.get(i20)) == null) ? null : Integer.valueOf((int) mvpConfVo17.getRechargeMin()));
                sb14.append(')');
                textView7.setText(sb14.toString());
                textView7.setTextColor(-1);
                i20++;
                str2 = str3;
                i18 = i22;
                doubleValue2 = d11;
            }
            double d12 = doubleValue2;
            String str4 = str2;
            View findViewById2 = viewGroup3.findViewById(R$id.big_white_point_lay);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "mvpn.findViewById<ViewGr…R.id.big_white_point_lay)");
            ViewGroup viewGroup5 = (ViewGroup) findViewById2;
            int childCount = viewGroup5.getChildCount();
            if (childCount > 0) {
                int i24 = 0;
                int i25 = 0;
                while (true) {
                    int i26 = i24 + 1;
                    View childAt = viewGroup5.getChildAt(i24);
                    Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(index)");
                    if (childAt.getLayoutParams().width > 0) {
                        i25++;
                        if (f16 > i25) {
                            childAt.setVisibility(0);
                        }
                    }
                    if (i26 >= childCount) {
                        break;
                    }
                    i24 = i26;
                }
            }
            int childCount2 = viewGroup4.getChildCount();
            int i27 = 0;
            for (int i28 = 0; i28 < childCount2; i28++) {
                View childAt2 = viewGroup4.getChildAt(i28);
                if (childAt2 instanceof TextView) {
                    i27++;
                    if (i27 == 1) {
                        TextView textView8 = (TextView) childAt2;
                        TextDrawableUtil.addDrawableStart(textView8, i10 >= 1 ? R$mipmap.ic_mvp_mvp1_select : R$mipmap.ic_mvp_mvp1);
                        ViewGroup.LayoutParams layoutParams15 = textView8.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams15, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams15).setMarginStart((int) (((f15 / 5.0f) * 2.0f) - DensityUtil.dp2px(20.0f)));
                        Unit unit3 = Unit.INSTANCE;
                    } else if (i27 == 2) {
                        TextView textView9 = (TextView) childAt2;
                        TextDrawableUtil.addDrawableStart(textView9, i10 >= 2 ? R$mipmap.ic_mvp_mvp2_select : R$mipmap.ic_mvp_mvp2);
                        ViewGroup.LayoutParams layoutParams16 = textView9.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams16, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams16).setMarginStart((int) (f15 - DensityUtil.dp2px(20.0f)));
                        Unit unit4 = Unit.INSTANCE;
                    } else if (i27 != 3) {
                        if (i28 == viewGroup4.getChildCount() - 1) {
                            if (i27 >= 5) {
                                TextDrawableUtil.addDrawableEnd((TextView) childAt2, i10 >= 5 ? R$mipmap.ic_mvp_mvp5_select : R$mipmap.ic_mvp_mvp5);
                            } else {
                                TextDrawableUtil.addDrawableEnd((TextView) childAt2, i10 >= 4 ? R$mipmap.ic_mvp_mvp4_select : R$mipmap.ic_mvp_mvp4);
                            }
                            ViewGroup.LayoutParams layoutParams17 = ((TextView) childAt2).getLayoutParams();
                            Intrinsics.checkNotNull(layoutParams17, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                            ((FrameLayout.LayoutParams) layoutParams17).gravity = GravityCompat.END;
                        } else {
                            if (i27 >= 5) {
                                TextDrawableUtil.addDrawableStart((TextView) childAt2, i10 >= 5 ? R$mipmap.ic_mvp_mvp5_select : R$mipmap.ic_mvp_mvp5);
                            } else {
                                TextDrawableUtil.addDrawableStart((TextView) childAt2, i10 >= 4 ? R$mipmap.ic_mvp_mvp4_select : R$mipmap.ic_mvp_mvp4);
                            }
                            ViewGroup.LayoutParams layoutParams18 = ((TextView) childAt2).getLayoutParams();
                            Intrinsics.checkNotNull(layoutParams18, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                            ((ViewGroup.MarginLayoutParams) layoutParams18).setMarginStart((int) ((((i27 - 3) + 2.0f) * f15) - DensityUtil.dp2px(20.0f)));
                        }
                        Unit unit5 = Unit.INSTANCE;
                    } else {
                        TextView textView10 = (TextView) childAt2;
                        TextDrawableUtil.addDrawableStart(textView10, i10 >= 3 ? R$mipmap.ic_mvp_mvp3_select : R$mipmap.ic_mvp_mvp3);
                        ViewGroup.LayoutParams layoutParams19 = textView10.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams19, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ((ViewGroup.MarginLayoutParams) layoutParams19).setMarginStart((int) ((f15 * 2.0f) - DensityUtil.dp2px(20.0f)));
                        Unit unit6 = Unit.INSTANCE;
                    }
                }
            }
            if (i19 < 0) {
                TextView textView11 = new TextView(this.itemView.getContext());
                Context context4 = this.itemView.getContext();
                int i29 = R$string.mvp_diff_tips;
                Object[] objArr4 = new Object[2];
                StringBuilder sb15 = new StringBuilder();
                sb15.append(Typography.dollar);
                sb15.append(d12);
                objArr4[0] = sb15.toString();
                StringBuilder sb16 = new StringBuilder();
                sb16.append(str4);
                if (mVPInfoModel != null && (mvpConfVoList17 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo16 = mvpConfVoList17.get(0)) != null) {
                    num = Integer.valueOf(mvpConfVo16.getMvpLevel());
                }
                sb16.append(num);
                objArr4[1] = sb16.toString();
                textView11.setText(context4.getString(i29, objArr4));
                textView11.setTextSize(2, 12.0f);
                textView11.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView11.setTextColor(-1);
                textView11.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView11.setMaxLines(1);
                textView11.setSingleLine(true);
                textView11.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView11.setSelected(true);
                ImageView imageView4 = new ImageView(this.itemView.getContext());
                imageView4.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView4.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup4.addView(imageView4);
                ViewGroup.LayoutParams layoutParams20 = imageView4.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams20, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams20;
                marginLayoutParams2.setMarginStart(((int) ((f15 / 5.0f) * 2.0f)) - DensityUtil.dp2px(7.0f));
                marginLayoutParams2.topMargin = DensityUtil.dp2px(44.0f);
                Unit unit7 = Unit.INSTANCE;
                viewGroup4.addView(textView11);
                ViewGroup.LayoutParams layoutParams21 = textView11.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams21, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams21;
                int measureText4 = (int) (textView11.getPaint().measureText(textView11.getText().toString()) + DensityUtil.dp2px(24.0f));
                int i30 = i12;
                marginLayoutParams3.width = Integer.valueOf(measureText4 > i30 ? i30 : measureText4).intValue();
                marginLayoutParams3.height = -2;
                marginLayoutParams3.topMargin = DensityUtil.dp2px(50.0f);
                textView11.setGravity(17);
                StringBuilder sb17 = new StringBuilder();
                sb17.append(Typography.dollar);
                sb17.append(d12);
                setSpannerString(textView11, sb17.toString(), Color.parseColor(str));
            } else {
                int i31 = i12;
                if (f16 < 2.0f) {
                    TextView textView12 = new TextView(this.itemView.getContext());
                    Context context5 = this.itemView.getContext();
                    int i32 = R$string.mvp_diff_tips;
                    Object[] objArr5 = new Object[2];
                    StringBuilder sb18 = new StringBuilder();
                    sb18.append(Typography.dollar);
                    sb18.append(d12);
                    objArr5[0] = sb18.toString();
                    StringBuilder sb19 = new StringBuilder();
                    sb19.append(str4);
                    if (mVPInfoModel != null && (mvpConfVoList16 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo15 = mvpConfVoList16.get(1)) != null) {
                        num = Integer.valueOf(mvpConfVo15.getMvpLevel());
                    }
                    sb19.append(num);
                    objArr5[1] = sb19.toString();
                    textView12.setText(context5.getString(i32, objArr5));
                    textView12.setTextSize(2, 15.0f);
                    textView12.setBackgroundResource(R$drawable.icon_bottom_mvp);
                    textView12.setTextColor(-1);
                    textView12.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                    textView12.setMaxLines(1);
                    textView12.setSingleLine(true);
                    textView12.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                    textView12.setSelected(true);
                    ImageView imageView5 = new ImageView(this.itemView.getContext());
                    imageView5.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                    imageView5.setImageResource(R$mipmap.icon_grow_mvp);
                    viewGroup4.addView(imageView5);
                    ViewGroup.LayoutParams layoutParams22 = imageView5.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams22, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams22;
                    marginLayoutParams4.setMarginStart(((int) (f11 / 2.0f)) - DensityUtil.dp2px(7.0f));
                    marginLayoutParams4.topMargin = DensityUtil.dp2px(44.0f);
                    Unit unit8 = Unit.INSTANCE;
                    viewGroup4.addView(textView12);
                    ViewGroup.LayoutParams layoutParams23 = textView12.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams23, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) layoutParams23;
                    int measureText5 = (int) (textView12.getPaint().measureText(textView12.getText().toString()) + DensityUtil.dp2px(24.0f));
                    marginLayoutParams5.width = Integer.valueOf(measureText5 > i31 ? i31 : measureText5).intValue();
                    marginLayoutParams5.height = -2;
                    marginLayoutParams5.topMargin = DensityUtil.dp2px(50.0f);
                    textView12.setGravity(17);
                    StringBuilder sb20 = new StringBuilder();
                    sb20.append(Typography.dollar);
                    sb20.append(d12);
                    setSpannerString(textView12, sb20.toString(), Color.parseColor(str));
                } else {
                    int i33 = i9 - 1;
                    if (f16 < i33) {
                        TextView textView13 = new TextView(this.itemView.getContext());
                        Context context6 = this.itemView.getContext();
                        int i34 = R$string.mvp_diff_tips;
                        Object[] objArr6 = new Object[2];
                        StringBuilder sb21 = new StringBuilder();
                        sb21.append(Typography.dollar);
                        sb21.append(d12);
                        objArr6[0] = sb21.toString();
                        StringBuilder sb22 = new StringBuilder();
                        sb22.append(str4);
                        if (mVPInfoModel == null || (mvpConfVoList15 = mVPInfoModel.getMvpConfVoList()) == null) {
                            f12 = f16;
                            d10 = d12;
                        } else {
                            d10 = d12;
                            f12 = f16;
                            MVPInfoModel.MvpConfVo mvpConfVo19 = mvpConfVoList15.get((int) (Math.ceil(f16) - 1));
                            if (mvpConfVo19 != null) {
                                num = Integer.valueOf(mvpConfVo19.getMvpLevel());
                            }
                        }
                        sb22.append(num);
                        objArr6[1] = sb22.toString();
                        textView13.setText(context6.getString(i34, objArr6));
                        textView13.setTextSize(2, 15.0f);
                        textView13.setBackgroundResource(R$drawable.icon_bottom_mvp);
                        textView13.setTextColor(-1);
                        textView13.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                        textView13.setMaxLines(1);
                        textView13.setSingleLine(true);
                        textView13.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        textView13.setSelected(true);
                        ImageView imageView6 = new ImageView(this.itemView.getContext());
                        imageView6.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                        imageView6.setImageResource(R$mipmap.icon_grow_mvp);
                        viewGroup4.addView(imageView6);
                        ViewGroup.LayoutParams layoutParams24 = imageView6.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams24, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) layoutParams24;
                        marginLayoutParams6.setMarginStart(((int) ((f11 * 1.0f) + (i9 == 4 ? 0.0f : f11 / 2.0f))) - DensityUtil.dp2px(7.0f));
                        marginLayoutParams6.topMargin = DensityUtil.dp2px(44.0f);
                        Unit unit9 = Unit.INSTANCE;
                        viewGroup4.addView(textView13);
                        ViewGroup.LayoutParams layoutParams25 = textView13.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams25, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                        ViewGroup.MarginLayoutParams marginLayoutParams7 = (ViewGroup.MarginLayoutParams) layoutParams25;
                        int measureText6 = (int) (textView13.getPaint().measureText(textView13.getText().toString()) + DensityUtil.dp2px(24.0f));
                        marginLayoutParams7.width = Integer.valueOf(measureText6 > i31 ? i31 : measureText6).intValue();
                        marginLayoutParams7.height = -2;
                        marginLayoutParams7.topMargin = DensityUtil.dp2px(50.0f);
                        if (i10 == 2) {
                            marginLayoutParams7.setMarginStart((int) (f15 * (i33 - ((int) f12))));
                        } else if (i10 != 3) {
                            marginLayoutParams7.setMarginStart((int) (((f15 * 2) + ((i33 - ((int) f12)) * f15)) - (marginLayoutParams7.width / 2.0f)));
                        } else {
                            marginLayoutParams7.setMarginStart((int) (((f15 * 2) + ((i33 - ((int) f12)) * f15)) - (marginLayoutParams7.width / 2.0f)));
                        }
                        textView13.setGravity(17);
                        StringBuilder sb23 = new StringBuilder();
                        sb23.append(Typography.dollar);
                        sb23.append(d10);
                        setSpannerString(textView13, sb23.toString(), Color.parseColor(str));
                    } else if (((int) f16) == i33) {
                        TextView textView14 = new TextView(this.itemView.getContext());
                        Context context7 = this.itemView.getContext();
                        int i35 = R$string.mvp_diff_tips;
                        Object[] objArr7 = new Object[2];
                        StringBuilder sb24 = new StringBuilder();
                        sb24.append(Typography.dollar);
                        sb24.append(d12);
                        objArr7[0] = sb24.toString();
                        StringBuilder sb25 = new StringBuilder();
                        sb25.append(str4);
                        if (mVPInfoModel != null && (mvpConfVoList14 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo14 = mvpConfVoList14.get(i33)) != null) {
                            num = Integer.valueOf(mvpConfVo14.getMvpLevel());
                        }
                        sb25.append(num);
                        objArr7[1] = sb25.toString();
                        textView14.setText(context7.getString(i35, objArr7));
                        textView14.setTextSize(2, 15.0f);
                        textView14.setMaxLines(1);
                        textView14.setSingleLine(true);
                        textView14.setBackgroundResource(R$drawable.icon_bottom_mvp);
                        textView14.setTextColor(-1);
                        textView14.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                        textView14.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                        textView14.setSelected(true);
                        ImageView imageView7 = new ImageView(this.itemView.getContext());
                        imageView7.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                        imageView7.setImageResource(R$mipmap.icon_grow_mvp);
                        viewGroup4.addView(imageView7);
                        ViewGroup.LayoutParams layoutParams26 = imageView7.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams26, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                        FrameLayout.LayoutParams layoutParams27 = (FrameLayout.LayoutParams) layoutParams26;
                        layoutParams27.setMarginEnd(DensityUtil.dp2px(7.0f));
                        layoutParams27.topMargin = DensityUtil.dp2px(44.0f);
                        layoutParams27.gravity = GravityCompat.END;
                        Unit unit10 = Unit.INSTANCE;
                        viewGroup4.addView(textView14);
                        ViewGroup.LayoutParams layoutParams28 = textView14.getLayoutParams();
                        Intrinsics.checkNotNull(layoutParams28, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                        FrameLayout.LayoutParams layoutParams29 = (FrameLayout.LayoutParams) layoutParams28;
                        int measureText7 = (int) (textView14.getPaint().measureText(textView14.getText().toString()) + DensityUtil.dp2px(24.0f));
                        layoutParams29.width = Integer.valueOf(measureText7 > i31 ? i31 : measureText7).intValue();
                        layoutParams29.height = -2;
                        layoutParams29.topMargin = DensityUtil.dp2px(50.0f);
                        layoutParams29.gravity = GravityCompat.END;
                        textView14.setGravity(17);
                        StringBuilder sb26 = new StringBuilder();
                        sb26.append(Typography.dollar);
                        sb26.append(d12);
                        setSpannerString(textView14, sb26.toString(), Color.parseColor(str));
                    }
                }
            }
            Unit unit11 = Unit.INSTANCE;
        } else {
            int measuredWidth4 = this.itemView.getMeasuredWidth();
            View inflate4 = LayoutInflater.from(this.itemView.getContext()).inflate(R$layout.layout_mvp3_progress, this.itemView, true);
            Intrinsics.checkNotNull(inflate4, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup6 = (ViewGroup) inflate4;
            TextView textView15 = (TextView) viewGroup6.findViewById(R$id.mvpTV1);
            TextDrawableUtil.addDrawableStart(textView15, i10 < 1 ? R$mipmap.ic_mvp_mvp1 : R$mipmap.ic_mvp_mvp1_select);
            StringBuilder sb27 = new StringBuilder();
            sb27.append("($");
            sb27.append((mVPInfoModel == null || (mvpConfVoList13 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo13 = mvpConfVoList13.get(0)) == null) ? null : Integer.valueOf((int) mvpConfVo13.getRechargeMin()));
            sb27.append(')');
            textView15.setText(sb27.toString());
            Unit unit12 = Unit.INSTANCE;
            TextView textView16 = (TextView) viewGroup6.findViewById(R$id.mvpTV2);
            TextDrawableUtil.addDrawableStart(textView16, i10 < 2 ? R$mipmap.ic_mvp_mvp2 : R$mipmap.ic_mvp_mvp2_select);
            StringBuilder sb28 = new StringBuilder();
            sb28.append("($");
            sb28.append((mVPInfoModel == null || (mvpConfVoList12 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo12 = mvpConfVoList12.get(1)) == null) ? null : Integer.valueOf((int) mvpConfVo12.getRechargeMin()));
            sb28.append(')');
            textView16.setText(sb28.toString());
            TextView textView17 = (TextView) viewGroup6.findViewById(R$id.mvpTV3);
            TextDrawableUtil.addDrawableEnd(textView17, i10 < 3 ? R$mipmap.ic_mvp_mvp3 : R$mipmap.ic_mvp_mvp3_select);
            StringBuilder sb29 = new StringBuilder();
            sb29.append("($");
            sb29.append((mVPInfoModel == null || (mvpConfVoList11 = mVPInfoModel.getMvpConfVoList()) == null || (mvpConfVo11 = mvpConfVoList11.get(2)) == null) ? null : Integer.valueOf((int) mvpConfVo11.getRechargeMin()));
            sb29.append(')');
            textView17.setText(sb29.toString());
            float f17 = measuredWidth4 * 0.5f;
            float f18 = f10 + i10;
            ViewGroup viewGroup7 = (ViewGroup) viewGroup6.findViewById(R$id.big_white_point_lay);
            if (f18 < 1.0f) {
                i11 = (int) (((f18 * f17) / 5.0f) * 2.0f);
                TextView textView18 = new TextView(this.itemView.getContext());
                Context context8 = this.itemView.getContext();
                int i36 = R$string.mvp_diff_tips;
                Object[] objArr8 = new Object[2];
                StringBuilder sb30 = new StringBuilder();
                sb30.append(Typography.dollar);
                sb30.append(doubleValue2);
                objArr8[0] = sb30.toString();
                StringBuilder sb31 = new StringBuilder();
                sb31.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList10 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo10 = mvpConfVoList10.get(0)) != null) {
                    num = Integer.valueOf(mvpConfVo10.getMvpLevel());
                }
                sb31.append(num);
                objArr8[1] = sb31.toString();
                textView18.setText(context8.getString(i36, objArr8));
                textView18.setTextSize(2, 12.0f);
                textView18.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView18.setTextColor(-1);
                textView18.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView18.setMaxLines(1);
                textView18.setSingleLine(true);
                textView18.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView18.setSelected(true);
                ImageView imageView8 = new ImageView(this.itemView.getContext());
                imageView8.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView8.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup6.addView(imageView8);
                ViewGroup.LayoutParams layoutParams30 = imageView8.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams30, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams8 = (ViewGroup.MarginLayoutParams) layoutParams30;
                marginLayoutParams8.setMarginStart(((int) ((f17 / 5.0f) * 2.0f)) - DensityUtil.dp2px(7.0f));
                marginLayoutParams8.topMargin = DensityUtil.dp2px(44.0f);
                viewGroup6.addView(textView18);
                ViewGroup.LayoutParams layoutParams31 = textView18.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams31, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams9 = (ViewGroup.MarginLayoutParams) layoutParams31;
                int measureText8 = (int) (textView18.getPaint().measureText(textView18.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText8 <= measuredWidth4) {
                    measuredWidth4 = measureText8;
                }
                marginLayoutParams9.width = Integer.valueOf(measuredWidth4).intValue();
                marginLayoutParams9.height = -2;
                marginLayoutParams9.topMargin = DensityUtil.dp2px(50.0f);
                textView18.setGravity(17);
                StringBuilder sb32 = new StringBuilder();
                sb32.append(Typography.dollar);
                sb32.append(doubleValue2);
                setSpannerString(textView18, sb32.toString(), Color.parseColor("#FF80F2"));
            } else if (f18 < 2.0f) {
                i11 = (int) (((f17 / 5.0f) * 2.0f) + ((((f18 - 1) * f17) / 5.0f) * 3.0f));
                viewGroup7.getChildAt(1).setVisibility(0);
                TextView textView19 = new TextView(this.itemView.getContext());
                Context context9 = this.itemView.getContext();
                int i37 = R$string.mvp_diff_tips;
                Object[] objArr9 = new Object[2];
                StringBuilder sb33 = new StringBuilder();
                sb33.append(Typography.dollar);
                sb33.append(doubleValue2);
                objArr9[0] = sb33.toString();
                StringBuilder sb34 = new StringBuilder();
                sb34.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList9 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo9 = mvpConfVoList9.get(1)) != null) {
                    num = Integer.valueOf(mvpConfVo9.getMvpLevel());
                }
                sb34.append(num);
                objArr9[1] = sb34.toString();
                textView19.setText(context9.getString(i37, objArr9));
                textView19.setTextSize(2, 15.0f);
                textView19.setMaxLines(1);
                textView19.setSingleLine(true);
                textView19.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView19.setTextColor(-1);
                textView19.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView19.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView19.setSelected(true);
                ImageView imageView9 = new ImageView(this.itemView.getContext());
                imageView9.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView9.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup6.addView(imageView9);
                ViewGroup.LayoutParams layoutParams32 = imageView9.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams32, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams10 = (ViewGroup.MarginLayoutParams) layoutParams32;
                marginLayoutParams10.setMarginStart(((int) f17) - DensityUtil.dp2px(7.0f));
                marginLayoutParams10.topMargin = DensityUtil.dp2px(44.0f);
                viewGroup6.addView(textView19);
                ViewGroup.LayoutParams layoutParams33 = textView19.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams33, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams34 = (FrameLayout.LayoutParams) layoutParams33;
                int measureText9 = (int) (textView19.getPaint().measureText(textView19.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText9 <= measuredWidth4) {
                    measuredWidth4 = measureText9;
                }
                layoutParams34.width = Integer.valueOf(measuredWidth4).intValue();
                layoutParams34.gravity = 1;
                layoutParams34.height = -2;
                layoutParams34.topMargin = DensityUtil.dp2px(50.0f);
                textView19.setGravity(17);
                StringBuilder sb35 = new StringBuilder();
                sb35.append(Typography.dollar);
                sb35.append(doubleValue2);
                setSpannerString(textView19, sb35.toString(), Color.parseColor("#FF80F2"));
            } else if (f18 < 3.0f) {
                i11 = (int) (f17 + ((f18 - 2) * f17));
                viewGroup7.getChildAt(1).setVisibility(0);
                viewGroup7.getChildAt(3).setVisibility(0);
                TextView textView20 = new TextView(this.itemView.getContext());
                Context context10 = this.itemView.getContext();
                int i38 = R$string.mvp_diff_tips;
                Object[] objArr10 = new Object[2];
                StringBuilder sb36 = new StringBuilder();
                sb36.append(Typography.dollar);
                sb36.append(doubleValue2);
                objArr10[0] = sb36.toString();
                StringBuilder sb37 = new StringBuilder();
                sb37.append("MVP");
                if (mVPInfoModel != null && (mvpConfVoList8 = mVPInfoModel.getMvpConfVoList()) != null && (mvpConfVo8 = mvpConfVoList8.get(2)) != null) {
                    num = Integer.valueOf(mvpConfVo8.getMvpLevel());
                }
                sb37.append(num);
                objArr10[1] = sb37.toString();
                textView20.setText(context10.getString(i38, objArr10));
                textView20.setTextSize(2, 15.0f);
                textView20.setMaxLines(1);
                textView20.setSingleLine(true);
                textView20.setBackgroundResource(R$drawable.icon_bottom_mvp);
                textView20.setTextColor(-1);
                textView20.setPadding(0, DensityUtil.dp2px(2.5f), 0, DensityUtil.dp2px(2.5f));
                textView20.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textView20.setSelected(true);
                ImageView imageView10 = new ImageView(this.itemView.getContext());
                imageView10.setLayoutParams(new FrameLayout.LayoutParams(DensityUtil.dp2px(14.0f), DensityUtil.dp2px(6.0f)));
                imageView10.setImageResource(R$mipmap.icon_grow_mvp);
                viewGroup6.addView(imageView10);
                ViewGroup.LayoutParams layoutParams35 = imageView10.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams35, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams36 = (FrameLayout.LayoutParams) layoutParams35;
                layoutParams36.setMarginEnd(DensityUtil.dp2px(7.0f));
                layoutParams36.topMargin = DensityUtil.dp2px(44.0f);
                layoutParams36.gravity = GravityCompat.END;
                viewGroup6.addView(textView20);
                ViewGroup.LayoutParams layoutParams37 = textView20.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams37, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
                FrameLayout.LayoutParams layoutParams38 = (FrameLayout.LayoutParams) layoutParams37;
                int measureText10 = (int) (textView20.getPaint().measureText(textView20.getText().toString()) + DensityUtil.dp2px(24.0f));
                if (measureText10 <= measuredWidth4) {
                    measuredWidth4 = measureText10;
                }
                layoutParams38.width = Integer.valueOf(measuredWidth4).intValue();
                layoutParams38.height = -2;
                layoutParams38.topMargin = DensityUtil.dp2px(50.0f);
                layoutParams38.gravity = GravityCompat.END;
                textView20.setGravity(17);
                StringBuilder sb38 = new StringBuilder();
                sb38.append(Typography.dollar);
                sb38.append(doubleValue2);
                setSpannerString(textView20, sb38.toString(), Color.parseColor("#FF80F2"));
            } else {
                i11 = (int) (f17 + ((f18 - 2) * f17));
                viewGroup7.getChildAt(1).setVisibility(0);
                viewGroup7.getChildAt(3).setVisibility(0);
                viewGroup7.getChildAt(5).setVisibility(0);
            }
            viewGroup6.findViewById(R$id.select_progress).getLayoutParams().width = i11;
        }
    }

    public final void setSpannerString(@NotNull TextView textView, @Nullable String str, int i9) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        String obj = textView.getText().toString();
        int length = obj.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean z11 = Intrinsics.compare((int) obj.charAt(!z10 ? i10 : length), 32) <= 0;
            if (z10) {
                if (!z11) {
                    break;
                }
                length--;
            } else if (z11) {
                i10++;
            } else {
                z10 = true;
            }
        }
        String obj2 = obj.subSequence(i10, length + 1).toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(obj2);
        int firstCharIndex = str != null ? getFirstCharIndex(obj2, str) : -1;
        if (firstCharIndex >= 0) {
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i9);
            Intrinsics.checkNotNull(str);
            spannableStringBuilder.setSpan(foregroundColorSpan, firstCharIndex, str.length() + firstCharIndex, 18);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), 0, 0, 18);
        }
        textView.setText(spannableStringBuilder);
    }
}
