package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.ColorUtils;
import com.guochao.faceshow.aaspring.views.q;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import java.lang.reflect.Field;
@Deprecated
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private View f24475a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f24476b;

    /* renamed from: c  reason: collision with root package name */
    private Toolbar f24477c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f24478d;

    /* renamed from: e  reason: collision with root package name */
    private ImageButton f24479e;

    /* renamed from: f  reason: collision with root package name */
    private View f24480f;

    /* renamed from: g  reason: collision with root package name */
    private View f24481g;

    /* renamed from: h  reason: collision with root package name */
    private View f24482h;

    /* renamed from: i  reason: collision with root package name */
    private int f24483i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f24484j = true;

    /* renamed from: k  reason: collision with root package name */
    private int f24485k;

    /* renamed from: l  reason: collision with root package name */
    private e f24486l;

    /* renamed from: m  reason: collision with root package name */
    private d f24487m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (v.this.f24486l != null) {
                v.this.f24486l.onClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements q.a<View> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.views.q.a
        /* renamed from: onClick */
        public void a(View view) {
            if (v.this.f24487m != null) {
                v.this.f24487m.onFirstIconClick(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (v.this.f24487m != null) {
                v.this.f24487m.onSecondIconClick(view);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class d {
        public abstract void onFirstIconClick(View view);

        public void onSecondIconClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onClick(View view);
    }

    public v(BaseActivity baseActivity) {
        View findViewById = baseActivity.findViewById(R.id.float_title_back);
        this.f24475a = findViewById;
        if (findViewById == null) {
            return;
        }
        View findViewById2 = baseActivity.findViewById(16908310);
        this.f24480f = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f24476b = (TextView) baseActivity.findViewById(R.id.float_title);
        Toolbar toolbar = (Toolbar) baseActivity.findViewById(R.id.toolbar);
        this.f24477c = toolbar;
        if (toolbar != null) {
            toolbar.setTitle("");
            ImageButton e10 = e(this.f24477c);
            this.f24479e = e10;
            e10.setImageResource(R.drawable.icon_left_back);
        }
        ImageButton imageButton = this.f24479e;
        if (imageButton != null) {
            imageButton.getLayoutParams().width = DensityUtil.dp2px(this.f24475a.getContext(), 44.0f);
            this.f24479e.getLayoutParams().height = DensityUtil.dp2px(this.f24475a.getContext(), 44.0f);
        }
    }

    private void c(Menu menu, int i9, int i10) {
        View view = this.f24475a;
        if (view == null) {
            return;
        }
        int dp2px = DensityUtil.dp2px(view.getContext(), 10.0f);
        if (i9 != 0) {
            menu.add(0, 1, 0, "").setShowAsAction(2);
            MenuItem findItem = menu.findItem(1);
            ImageView imageView = new ImageView(this.f24475a.getContext());
            this.f24481g = imageView;
            imageView.setImageResource(i9);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(DensityUtil.dp2px(BaseApplication.getInstance(), 69.0f), DensityUtil.dp2px(BaseApplication.getInstance(), 44.0f));
            Toolbar toolbar = this.f24477c;
            if (toolbar != null) {
                this.f24481g.setPadding(toolbar.getLayoutDirection() == 1 ? dp2px : (int) (dp2px * 1.5f), 0, this.f24477c.getLayoutDirection() == 1 ? (int) (dp2px * 1.5f) : dp2px, 0);
            }
            this.f24481g.setLayoutParams(marginLayoutParams);
            ((ImageView) this.f24481g).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            q.c(new b(), this.f24481g);
            findItem.setActionView(this.f24481g);
        }
        if (i10 != 0) {
            menu.add(0, 2, 0, "").setShowAsAction(2);
            MenuItem findItem2 = menu.findItem(2);
            View actionView = findItem2.getActionView();
            this.f24482h = actionView;
            if (actionView == null) {
                this.f24482h = new ImageView(this.f24475a.getContext());
            }
            ((ImageView) this.f24482h).setImageResource(i10);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(DensityUtil.dp2px(BaseApplication.getInstance(), 54.0f), DensityUtil.dp2px(BaseApplication.getInstance(), 44.0f));
            Toolbar toolbar2 = this.f24477c;
            if (toolbar2 != null) {
                View view2 = this.f24482h;
                int i11 = toolbar2.getLayoutDirection() == 1 ? dp2px : 0;
                if (this.f24477c.getLayoutDirection() == 1) {
                    dp2px = 0;
                }
                view2.setPadding(i11, 0, dp2px, 0);
            }
            this.f24482h.setLayoutParams(marginLayoutParams2);
            ((ImageView) this.f24482h).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.f24482h.setOnClickListener(new c());
            findItem2.setActionView(this.f24482h);
        }
        k();
    }

    private void k() {
        if (this.f24475a == null) {
            return;
        }
        TextView textView = this.f24478d;
        if (textView != null && !TextUtils.isEmpty(textView.getText())) {
            float measureText = this.f24478d.getPaint().measureText(this.f24478d.getText().toString()) + DensityUtil.dp2px(this.f24475a.getContext(), 25.0f);
            int dp2px = DensityUtil.dp2px(this.f24475a.getContext(), 90.0f);
            if (this.f24485k >= 0) {
                this.f24478d.setMaxWidth(dp2px);
            }
            TextView textView2 = this.f24476b;
            if (textView2 != null) {
                float screenWidth = ScreenTools.getScreenWidth();
                if (this.f24485k >= 0) {
                    measureText = Math.min(measureText, dp2px);
                }
                textView2.setMaxWidth((int) (screenWidth - (measureText * 2.0f)));
            }
        } else if (this.f24481g == null && this.f24482h == null) {
            TextView textView3 = this.f24476b;
            if (textView3 != null) {
                textView3.setMaxWidth(ScreenTools.getScreenWidth() - DensityUtil.dp2px(this.f24475a.getContext(), 118.0f));
            }
        } else {
            TextView textView4 = this.f24476b;
            if (textView4 != null) {
                textView4.setMaxWidth(ScreenTools.getScreenWidth() - DensityUtil.dp2px(this.f24475a.getContext(), this.f24482h == null ? 138.0f : 246.0f));
            }
        }
    }

    public View d() {
        return this.f24479e;
    }

    public ImageButton e(Toolbar toolbar) {
        try {
            Field declaredField = Toolbar.class.getDeclaredField("mNavButtonView");
            declaredField.setAccessible(true);
            return (ImageButton) declaredField.get(toolbar);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (NoSuchFieldException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void f() {
        View view = this.f24475a;
        if (view instanceof TitleBackgroundView) {
            ((TitleBackgroundView) view).setBottomEnable(false);
        }
    }

    public void g(boolean z10) {
        Toolbar toolbar;
        ImageButton e10;
        if (!z10 || (toolbar = this.f24477c) == null || (e10 = e(toolbar)) == null) {
            return;
        }
        e10.setVisibility(8);
    }

    public void h(Menu menu, int i9) {
        c(menu, i9, 0);
    }

    public void i(Menu menu, int i9, int i10) {
        c(menu, i9, i10);
    }

    public void j(Menu menu, String str, int i9, int i10) {
        if (this.f24475a == null) {
            return;
        }
        menu.add(0, 1, 0, str).setShowAsAction(2);
        MenuItem findItem = menu.findItem(1);
        TextView textView = (TextView) findItem.getActionView();
        this.f24478d = textView;
        if (textView == null) {
            this.f24478d = new TextView(this.f24475a.getContext());
        }
        this.f24478d.setPadding(DensityUtil.dp2px(this.f24475a.getContext(), 16.0f), DensityUtil.dp2px(16.0f), DensityUtil.dp2px(this.f24475a.getContext(), 16.0f), DensityUtil.dp2px(16.0f));
        TextView textView2 = this.f24478d;
        Context context = this.f24475a.getContext();
        if (i9 == 0) {
            i9 = R.color.color_ugc_text_level_2;
        }
        textView2.setTextColor(ContextCompat.getColor(context, i9));
        this.f24478d.setText(str);
        this.f24478d.setEnabled(this.f24484j);
        int i11 = this.f24483i;
        if (i11 != 0) {
            u(i11);
        } else if (i10 >= 0) {
            u(i10);
        } else {
            u(1);
        }
        this.f24478d.setMaxLines(1);
        this.f24478d.setEllipsize(TextUtils.TruncateAt.END);
        this.f24478d.setOnClickListener(new a());
        findItem.setActionView(this.f24478d);
        k();
    }

    public void l(@ColorRes int i9) {
        View view = this.f24475a;
        view.setBackgroundColor(ContextCompat.getColor(view.getContext(), i9));
    }

    public void m(@DrawableRes int i9) {
        if (this.f24477c != null) {
            this.f24477c.setNavigationIcon(BaseApplication.getInstance().getResources().getDrawable(i9));
        }
    }

    public void n(int i9) {
        if (this.f24478d != null && i9 == -1) {
            k();
        } else {
            this.f24485k = i9;
        }
    }

    public void o(boolean z10) {
        View view = this.f24481g;
        if (view != null) {
            view.setEnabled(z10);
        }
    }

    public void p(int i9, int i10) {
        View view = this.f24481g;
        if (view != null && (view instanceof ImageView) && i9 != 0) {
            ((ImageView) view).setImageResource(i9);
        } else if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f24482h;
        if (view2 != null && (view2 instanceof ImageView) && i10 != 0) {
            ((ImageView) view2).setImageResource(i10);
        } else if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    public void q(int i9, int i10, int i11) {
        View view = this.f24481g;
        if (view != null && (view instanceof ImageView) && i9 != 0) {
            ((ImageView) view).setImageDrawable(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f24475a.getContext(), i9), i11));
        } else if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f24482h;
        if (view2 != null && (view2 instanceof ImageView) && i10 != 0) {
            ((ImageView) view2).setImageDrawable(ColorUtils.tintDrawable(ContextCompat.getDrawable(this.f24475a.getContext(), i10), i11));
        } else if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    public void r(boolean z10) {
        View view = this.f24481g;
        if (view != null) {
            view.setEnabled(z10);
        }
        View view2 = this.f24482h;
        if (view2 != null) {
            view2.setEnabled(z10);
        }
    }

    public void s(String str, @ColorRes int i9) {
        TextView textView = this.f24478d;
        if (textView != null) {
            textView.setText(str);
            this.f24478d.setTextColor(ContextCompat.getColor(this.f24475a.getContext(), i9));
        }
    }

    public void setOnRightIconClickListener(d dVar) {
        this.f24487m = dVar;
    }

    public void setOnRightTextClickListener(e eVar) {
        this.f24486l = eVar;
    }

    public void t(boolean z10) {
        TextView textView = this.f24478d;
        if (textView != null) {
            textView.setEnabled(z10);
        } else {
            this.f24484j = z10;
        }
    }

    public void u(int i9) {
        TextView textView = this.f24478d;
        if (textView != null) {
            textView.getPaint().setTypeface(Typeface.create(Typeface.SANS_SERIF, i9));
        } else {
            this.f24483i = i9;
        }
    }

    public void v(CharSequence charSequence) {
        if (this.f24475a == null) {
            return;
        }
        TextView textView = this.f24476b;
        if (textView != null) {
            textView.setVisibility(0);
            this.f24476b.setText(charSequence);
        }
        k();
    }

    public void w(@ColorRes int i9) {
        TextView textView = this.f24476b;
        if (textView != null) {
            textView.setTextColor(ContextCompat.getColor(this.f24475a.getContext(), i9));
        }
    }
}
