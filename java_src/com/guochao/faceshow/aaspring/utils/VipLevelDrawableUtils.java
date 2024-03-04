package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.aaspring.views.VipIndicatorViewMall;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VipLevelDrawableUtils {
    public static int getVipImgByLevel(int i9) {
        return i9 != 1 ? i9 != 2 ? R.drawable.transparent_ : R.mipmap.vvip_icon02_mall : R.mipmap.vip_icon02_mall;
    }

    public static Drawable getVipLevelDrawable(Context context, Drawable drawable, int i9) {
        if (drawable != null) {
            return drawable;
        }
        LinearLayout linearLayout = new LinearLayout(BaseApplication.getInstance());
        VipIndicatorView vipIndicatorView = new VipIndicatorView(BaseApplication.getInstance());
        vipIndicatorView.setVipLevel(i9);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) vipIndicatorView.getLayoutParams();
        linearLayout.setPaddingRelative(0, 0, DensityUtil.dp2px(4.0f), 0);
        linearLayout.addView(vipIndicatorView, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setLayoutDirection(Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? 1 : 0);
        linearLayout.setDrawingCacheEnabled(true);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        linearLayout.layout(0, 0, vipIndicatorView.getMeasuredWidth() + DensityUtil.dp2px(4.0f), vipIndicatorView.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(linearLayout.getDrawingCache());
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(createBitmap, (int) (createBitmap.getWidth() * 0.8d), (int) (createBitmap.getHeight() * 0.8d), false));
        bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
        linearLayout.destroyDrawingCache();
        return bitmapDrawable;
    }

    public static Drawable getVipLevelDrawableMall(Context context, Drawable drawable, int i9) {
        if (drawable != null) {
            return drawable;
        }
        LinearLayout linearLayout = new LinearLayout(BaseApplication.getInstance());
        VipIndicatorViewMall vipIndicatorViewMall = new VipIndicatorViewMall(BaseApplication.getInstance());
        vipIndicatorViewMall.setVipLevel(i9);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) vipIndicatorViewMall.getLayoutParams();
        linearLayout.setPaddingRelative(0, 0, DensityUtil.dp2px(4.0f), 0);
        linearLayout.addView(vipIndicatorViewMall, new LinearLayout.LayoutParams(-2, -2));
        linearLayout.setLayoutDirection(Language.ARABIC.equalsIgnoreCase(q7.a.e().c()) ? 1 : 0);
        linearLayout.setDrawingCacheEnabled(true);
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        linearLayout.layout(0, 0, vipIndicatorViewMall.getMeasuredWidth() + DensityUtil.dp2px(4.0f), vipIndicatorViewMall.getMeasuredHeight());
        Bitmap createBitmap = Bitmap.createBitmap(linearLayout.getDrawingCache());
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(createBitmap, (int) (createBitmap.getWidth() * 0.8d), (int) (createBitmap.getHeight() * 0.8d), false));
        bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
        linearLayout.destroyDrawingCache();
        return bitmapDrawable;
    }
}
