package com.guochao.faceshow.aaspring.modulars.personal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import com.guochao.faceshow.aaspring.views.m;
import com.guochao.faceshow.aaspring.views.n;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
/* loaded from: classes3.dex */
public class b {
    public static void a(Context context, TextView textView) {
    }

    public static void b(Context context, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, TextView textView, TextView textView2, Boolean bool) {
    }

    public static void c(LinearLayout linearLayout, ImageView imageView, TextView textView, int i9) {
    }

    public static void d(View view, View view2) {
    }

    public static void e(Context context) {
    }

    public static void f(BaseActivity baseActivity, List<PayoneerData> list, LinearLayout linearLayout, m mVar) {
        if (list == null || list.size() == 0) {
            return;
        }
        new n(baseActivity, list, mVar).showAsDropDown(linearLayout, -DensityUtil.dp2px(16.0f), DensityUtil.dp2px(8.0f));
    }

    public static void g(int i9, int i10, FragmentManager fragmentManager) {
    }

    public static void h(Activity activity, int i9) {
        Intent intent = new Intent(activity, PayoneerBindActivity.class);
        intent.putExtra("type", i9);
        activity.startActivity(intent);
    }

    public static void i(Context context, Boolean bool) {
    }

    public static <T extends BaseActivity> void j(T t10) {
        t10.startActivity(SetLoginPasswordActivity.class);
    }
}
