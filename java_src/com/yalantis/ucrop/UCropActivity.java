package com.yalantis.ucrop;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.transition.AutoTransition;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import zf.i;
/* loaded from: classes5.dex */
public class UCropActivity extends AppCompatActivity {
    public static final Bitmap.CompressFormat E = Bitmap.CompressFormat.JPEG;

    /* renamed from: a  reason: collision with root package name */
    private String f37580a;

    /* renamed from: b  reason: collision with root package name */
    private int f37581b;

    /* renamed from: c  reason: collision with root package name */
    private int f37582c;

    /* renamed from: d  reason: collision with root package name */
    private int f37583d;

    /* renamed from: e  reason: collision with root package name */
    private int f37584e;
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f37585f;
    @DrawableRes

    /* renamed from: g  reason: collision with root package name */
    private int f37586g;
    @DrawableRes

    /* renamed from: h  reason: collision with root package name */
    private int f37587h;

    /* renamed from: i  reason: collision with root package name */
    private int f37588i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f37589j;

    /* renamed from: l  reason: collision with root package name */
    private UCropView f37591l;

    /* renamed from: m  reason: collision with root package name */
    private GestureCropImageView f37592m;

    /* renamed from: n  reason: collision with root package name */
    private OverlayView f37593n;

    /* renamed from: o  reason: collision with root package name */
    private ViewGroup f37594o;

    /* renamed from: p  reason: collision with root package name */
    private ViewGroup f37595p;

    /* renamed from: q  reason: collision with root package name */
    private ViewGroup f37596q;

    /* renamed from: r  reason: collision with root package name */
    private ViewGroup f37597r;

    /* renamed from: s  reason: collision with root package name */
    private ViewGroup f37598s;

    /* renamed from: t  reason: collision with root package name */
    private ViewGroup f37599t;

    /* renamed from: v  reason: collision with root package name */
    private TextView f37601v;

    /* renamed from: w  reason: collision with root package name */
    private TextView f37602w;

    /* renamed from: x  reason: collision with root package name */
    private View f37603x;

    /* renamed from: y  reason: collision with root package name */
    private Transition f37604y;

    /* renamed from: k  reason: collision with root package name */
    private boolean f37590k = true;

    /* renamed from: u  reason: collision with root package name */
    private List<ViewGroup> f37600u = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    private Bitmap.CompressFormat f37605z = E;
    private int A = 90;
    private int[] B = {1, 2, 3};
    private TransformImageView.b C = new a();
    private final View.OnClickListener D = new g();

    /* loaded from: classes5.dex */
    class a implements TransformImageView.b {
        a() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void a() {
            UCropActivity.this.f37591l.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.f37603x.setClickable(false);
            UCropActivity.this.f37590k = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void b(@NonNull Exception exc) {
            UCropActivity.this.G0(exc);
            UCropActivity.this.finish();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void c(float f10) {
            UCropActivity.this.I0(f10);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void d(float f10) {
            UCropActivity.this.A0(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.f37592m.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).b(view.isSelected()));
            UCropActivity.this.f37592m.x();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropActivity.this.f37600u) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements HorizontalProgressWheelView.a {
        c() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            UCropActivity.this.f37592m.x();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f37592m.r();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            UCropActivity.this.f37592m.v(f10 / 42.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.u0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.v0(90);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements HorizontalProgressWheelView.a {
        f() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            UCropActivity.this.f37592m.x();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f37592m.r();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            if (f10 > 0.0f) {
                UCropActivity.this.f37592m.A(UCropActivity.this.f37592m.getCurrentScale() + (f10 * ((UCropActivity.this.f37592m.getMaxScale() - UCropActivity.this.f37592m.getMinScale()) / 15000.0f)));
            } else {
                UCropActivity.this.f37592m.C(UCropActivity.this.f37592m.getCurrentScale() + (f10 * ((UCropActivity.this.f37592m.getMaxScale() - UCropActivity.this.f37592m.getMinScale()) / 15000.0f)));
            }
        }
    }

    /* loaded from: classes5.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropActivity.this.Q0(view.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class h implements wf.a {
        h() {
        }

        @Override // wf.a
        public void a(@NonNull Uri uri, int i9, int i10, int i11, int i12) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.H0(uri, uCropActivity.f37592m.getTargetAspectRatio(), i9, i10, i11, i12);
            UCropActivity.this.finish();
        }

        @Override // wf.a
        public void b(@NonNull Throwable th2) {
            UCropActivity.this.G0(th2);
            UCropActivity.this.finish();
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(float f10) {
        TextView textView = this.f37601v;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f10)));
        }
    }

    private void B0(int i9) {
        TextView textView = this.f37601v;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    private void E0(@NonNull Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
        t0(intent);
        if (uri != null && uri2 != null) {
            try {
                this.f37592m.l(uri, uri2);
                return;
            } catch (Exception e10) {
                G0(e10);
                finish();
                return;
            }
        }
        G0(new NullPointerException(getString(R$string.ucrop_error_input_data_is_absent)));
        finish();
    }

    private void F0() {
        if (this.f37589j) {
            if (this.f37594o.getVisibility() == 0) {
                Q0(R$id.state_aspect_ratio);
                return;
            } else {
                Q0(R$id.state_scale);
                return;
            }
        }
        y0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0(float f10) {
        TextView textView = this.f37602w;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f10 * 100.0f))));
        }
    }

    private void N0(int i9) {
        TextView textView = this.f37602w;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    private void P0(@ColorInt int i9) {
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q0(@IdRes int i9) {
        if (this.f37589j) {
            ViewGroup viewGroup = this.f37594o;
            int i10 = R$id.state_aspect_ratio;
            viewGroup.setSelected(i9 == i10);
            ViewGroup viewGroup2 = this.f37595p;
            int i11 = R$id.state_rotate;
            viewGroup2.setSelected(i9 == i11);
            ViewGroup viewGroup3 = this.f37596q;
            int i12 = R$id.state_scale;
            viewGroup3.setSelected(i9 == i12);
            this.f37597r.setVisibility(i9 == i10 ? 0 : 8);
            this.f37598s.setVisibility(i9 == i11 ? 0 : 8);
            this.f37599t.setVisibility(i9 == i12 ? 0 : 8);
            q0(i9);
            if (i9 == i12) {
                y0(0);
            } else if (i9 == i11) {
                y0(1);
            } else {
                y0(2);
            }
        }
    }

    private void S0() {
        P0(this.f37582c);
        Toolbar toolbar = (Toolbar) findViewById(R$id.toolbar);
        toolbar.setBackgroundColor(this.f37581b);
        toolbar.setTitleTextColor(this.f37584e);
        TextView textView = (TextView) toolbar.findViewById(R$id.toolbar_title);
        textView.setTextColor(this.f37584e);
        textView.setText(this.f37580a);
        Drawable mutate = ContextCompat.getDrawable(this, this.f37586g).mutate();
        mutate.setColorFilter(this.f37584e, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(mutate);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    private void T0(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            intExtra = 2;
            parcelableArrayListExtra = new ArrayList();
            parcelableArrayListExtra.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayListExtra.add(new AspectRatio(getString(R$string.ucrop_label_original).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R$id.layout_aspect_ratio);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = parcelableArrayListExtra.iterator();
        while (it.hasNext()) {
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R$layout.ucrop_aspect_ratio, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f37583d);
            aspectRatioTextView.setAspectRatio((AspectRatio) it.next());
            linearLayout.addView(frameLayout);
            this.f37600u.add(frameLayout);
        }
        this.f37600u.get(intExtra).setSelected(true);
        for (ViewGroup viewGroup : this.f37600u) {
            viewGroup.setOnClickListener(new b());
        }
    }

    private void W0() {
        this.f37601v = (TextView) findViewById(R$id.text_view_rotate);
        int i9 = R$id.rotate_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i9)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) findViewById(i9)).setMiddleLineColor(this.f37583d);
        findViewById(R$id.wrapper_reset_rotate).setOnClickListener(new d());
        findViewById(R$id.wrapper_rotate_by_angle).setOnClickListener(new e());
        B0(this.f37583d);
    }

    private void X0() {
        this.f37602w = (TextView) findViewById(R$id.text_view_scale);
        int i9 = R$id.scale_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i9)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) findViewById(i9)).setMiddleLineColor(this.f37583d);
        N0(this.f37583d);
    }

    private void Y0() {
        ImageView imageView = (ImageView) findViewById(R$id.image_view_state_scale);
        ImageView imageView2 = (ImageView) findViewById(R$id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) findViewById(R$id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new i(imageView.getDrawable(), this.f37583d));
        imageView2.setImageDrawable(new i(imageView2.getDrawable(), this.f37583d));
        imageView3.setImageDrawable(new i(imageView3.getDrawable(), this.f37583d));
    }

    private void Z0(@NonNull Intent intent) {
        this.f37582c = intent.getIntExtra("com.yalantis.ucrop.StatusBarColor", ContextCompat.getColor(this, R$color.ucrop_color_statusbar));
        this.f37581b = intent.getIntExtra("com.yalantis.ucrop.ToolbarColor", ContextCompat.getColor(this, R$color.ucrop_color_toolbar));
        this.f37583d = intent.getIntExtra("com.yalantis.ucrop.UcropColorControlsWidgetActive", ContextCompat.getColor(this, R$color.ucrop_color_active_controls_color));
        this.f37584e = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarWidgetColor", ContextCompat.getColor(this, R$color.ucrop_color_toolbar_widget));
        this.f37586g = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCancelDrawable", R$drawable.ucrop_ic_cross);
        this.f37587h = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCropDrawable", R$drawable.ucrop_ic_done);
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.UcropToolbarTitleText");
        this.f37580a = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(R$string.ucrop_label_edit_photo);
        }
        this.f37580a = stringExtra;
        this.f37588i = intent.getIntExtra("com.yalantis.ucrop.UcropLogoColor", ContextCompat.getColor(this, R$color.ucrop_color_default_logo));
        this.f37589j = !intent.getBooleanExtra("com.yalantis.ucrop.HideBottomControls", false);
        this.f37585f = intent.getIntExtra("com.yalantis.ucrop.UcropRootViewBackgroundColor", ContextCompat.getColor(this, R$color.ucrop_color_crop_background));
        S0();
        s0();
        if (this.f37589j) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(R$id.ucrop_photobox)).findViewById(R$id.controls_wrapper);
            viewGroup.setVisibility(0);
            LayoutInflater.from(this).inflate(R$layout.ucrop_controls, viewGroup, true);
            AutoTransition autoTransition = new AutoTransition();
            this.f37604y = autoTransition;
            autoTransition.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(R$id.state_aspect_ratio);
            this.f37594o = viewGroup2;
            viewGroup2.setOnClickListener(this.D);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(R$id.state_rotate);
            this.f37595p = viewGroup3;
            viewGroup3.setOnClickListener(this.D);
            ViewGroup viewGroup4 = (ViewGroup) findViewById(R$id.state_scale);
            this.f37596q = viewGroup4;
            viewGroup4.setOnClickListener(this.D);
            this.f37597r = (ViewGroup) findViewById(R$id.layout_aspect_ratio);
            this.f37598s = (ViewGroup) findViewById(R$id.layout_rotate_wheel);
            this.f37599t = (ViewGroup) findViewById(R$id.layout_scale_wheel);
            T0(intent);
            W0();
            X0();
            Y0();
        }
    }

    private void p0() {
        if (this.f37603x == null) {
            this.f37603x = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, R$id.toolbar);
            this.f37603x.setLayoutParams(layoutParams);
            this.f37603x.setClickable(true);
        }
        ((RelativeLayout) findViewById(R$id.ucrop_photobox)).addView(this.f37603x);
    }

    private void q0(int i9) {
        TransitionManager.beginDelayedTransition((ViewGroup) findViewById(R$id.ucrop_photobox), this.f37604y);
        this.f37596q.findViewById(R$id.text_view_scale).setVisibility(i9 == R$id.state_scale ? 0 : 8);
        this.f37594o.findViewById(R$id.text_view_crop).setVisibility(i9 == R$id.state_aspect_ratio ? 0 : 8);
        this.f37595p.findViewById(R$id.text_view_rotate).setVisibility(i9 != R$id.state_rotate ? 8 : 0);
    }

    private void s0() {
        UCropView uCropView = (UCropView) findViewById(R$id.ucrop);
        this.f37591l = uCropView;
        this.f37592m = uCropView.getCropImageView();
        this.f37593n = this.f37591l.getOverlayView();
        this.f37592m.setTransformImageListener(this.C);
        ((ImageView) findViewById(R$id.image_view_logo)).setColorFilter(this.f37588i, PorterDuff.Mode.SRC_ATOP);
        int i9 = R$id.ucrop_frame;
        findViewById(i9).setBackgroundColor(this.f37585f);
        if (this.f37589j) {
            return;
        }
        ((RelativeLayout.LayoutParams) findViewById(i9).getLayoutParams()).bottomMargin = 0;
        findViewById(i9).requestLayout();
    }

    private void t0(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.CompressionFormatName");
        Bitmap.CompressFormat valueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (valueOf == null) {
            valueOf = E;
        }
        this.f37605z = valueOf;
        this.A = intent.getIntExtra("com.yalantis.ucrop.CompressionQuality", 90);
        int[] intArrayExtra = intent.getIntArrayExtra("com.yalantis.ucrop.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.B = intArrayExtra;
        }
        this.f37592m.setMaxBitmapSize(intent.getIntExtra("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.f37592m.setMaxScaleMultiplier(intent.getFloatExtra("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.f37592m.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.f37593n.setFreestyleCropEnabled(intent.getBooleanExtra("com.yalantis.ucrop.FreeStyleCrop", false));
        this.f37593n.setDimmedColor(intent.getIntExtra("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(R$color.ucrop_color_default_dimmed)));
        this.f37593n.setCircleDimmedLayer(intent.getBooleanExtra("com.yalantis.ucrop.CircleDimmedLayer", false));
        this.f37593n.setShowCropFrame(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropFrame", true));
        this.f37593n.setCropFrameColor(intent.getIntExtra("com.yalantis.ucrop.CropFrameColor", getResources().getColor(R$color.ucrop_color_default_crop_frame)));
        this.f37593n.setCropFrameStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_frame_stoke_width)));
        this.f37593n.setShowCropGrid(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropGrid", true));
        this.f37593n.setCropGridRowCount(intent.getIntExtra("com.yalantis.ucrop.CropGridRowCount", 2));
        this.f37593n.setCropGridColumnCount(intent.getIntExtra("com.yalantis.ucrop.CropGridColumnCount", 2));
        OverlayView overlayView = this.f37593n;
        Resources resources = getResources();
        int i9 = R$color.ucrop_color_default_crop_grid;
        overlayView.setCropGridColor(intent.getIntExtra("com.yalantis.ucrop.CropGridColor", resources.getColor(i9)));
        this.f37593n.setCropGridCornerColor(intent.getIntExtra("com.yalantis.ucrop.CropGridCornerColor", getResources().getColor(i9)));
        this.f37593n.setCropGridStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_grid_stoke_width)));
        float floatExtra = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioX", -1.0f);
        float floatExtra2 = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioY", -1.0f);
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (floatExtra >= 0.0f && floatExtra2 >= 0.0f) {
            ViewGroup viewGroup = this.f37594o;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f10 = floatExtra / floatExtra2;
            this.f37592m.setTargetAspectRatio(Float.isNaN(f10) ? 0.0f : f10);
        } else if (parcelableArrayListExtra != null && intExtra < parcelableArrayListExtra.size()) {
            float b10 = ((AspectRatio) parcelableArrayListExtra.get(intExtra)).b() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).c();
            this.f37592m.setTargetAspectRatio(Float.isNaN(b10) ? 0.0f : b10);
        } else {
            this.f37592m.setTargetAspectRatio(0.0f);
        }
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeY", 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.f37592m.setMaxResultImageSizeX(intExtra2);
        this.f37592m.setMaxResultImageSizeY(intExtra3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0() {
        GestureCropImageView gestureCropImageView = this.f37592m;
        gestureCropImageView.v(-gestureCropImageView.getCurrentAngle());
        this.f37592m.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v0(int i9) {
        this.f37592m.v(i9);
        this.f37592m.x();
    }

    private void y0(int i9) {
        GestureCropImageView gestureCropImageView = this.f37592m;
        int[] iArr = this.B;
        boolean z10 = false;
        gestureCropImageView.setScaleEnabled(iArr[i9] == 3 || iArr[i9] == 1);
        GestureCropImageView gestureCropImageView2 = this.f37592m;
        int[] iArr2 = this.B;
        gestureCropImageView2.setRotateEnabled((iArr2[i9] == 3 || iArr2[i9] == 2) ? true : true);
    }

    protected void G0(Throwable th2) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th2));
    }

    protected void H0(Uri uri, float f10, int i9, int i10, int i11, int i12) {
        setResult(-1, new Intent().putExtra("com.yalantis.ucrop.OutputUri", uri).putExtra("com.yalantis.ucrop.CropAspectRatio", f10).putExtra("com.yalantis.ucrop.ImageWidth", i11).putExtra("com.yalantis.ucrop.ImageHeight", i12).putExtra("com.yalantis.ucrop.OffsetX", i9).putExtra("com.yalantis.ucrop.OffsetY", i10));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.ucrop_activity_photobox);
        Intent intent = getIntent();
        Z0(intent);
        E0(intent);
        F0();
        p0();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R$menu.ucrop_menu_activity, menu);
        MenuItem findItem = menu.findItem(R$id.menu_loader);
        Drawable icon = findItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f37584e, PorterDuff.Mode.SRC_ATOP);
                findItem.setIcon(icon);
            } catch (IllegalStateException e10) {
                Log.i("UCropActivity", String.format("%s - %s", e10.getMessage(), getString(R$string.ucrop_mutate_exception_hint)));
            }
            ((Animatable) findItem.getIcon()).start();
        }
        MenuItem findItem2 = menu.findItem(R$id.menu_crop);
        Drawable drawable = ContextCompat.getDrawable(this, this.f37587h);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(this.f37584e, PorterDuff.Mode.SRC_ATOP);
            findItem2.setIcon(drawable);
        }
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R$id.menu_crop) {
            r0();
            return true;
        } else if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R$id.menu_crop).setVisible(!this.f37590k);
        menu.findItem(R$id.menu_loader).setVisible(this.f37590k);
        return super.onPrepareOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f37592m;
        if (gestureCropImageView != null) {
            gestureCropImageView.r();
        }
    }

    protected void r0() {
        this.f37603x.setClickable(true);
        this.f37590k = true;
        supportInvalidateOptionsMenu();
        this.f37592m.s(this.f37605z, this.A, new h());
    }
}
