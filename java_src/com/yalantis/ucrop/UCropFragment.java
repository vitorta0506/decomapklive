package com.yalantis.ucrop;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
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
public class UCropFragment extends Fragment {

    /* renamed from: y  reason: collision with root package name */
    public static final Bitmap.CompressFormat f37614y = Bitmap.CompressFormat.JPEG;

    /* renamed from: a  reason: collision with root package name */
    private com.yalantis.ucrop.b f37615a;

    /* renamed from: b  reason: collision with root package name */
    private int f37616b;
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    private int f37617c;

    /* renamed from: d  reason: collision with root package name */
    private int f37618d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37619e;

    /* renamed from: f  reason: collision with root package name */
    private Transition f37620f;

    /* renamed from: g  reason: collision with root package name */
    private UCropView f37621g;

    /* renamed from: h  reason: collision with root package name */
    private GestureCropImageView f37622h;

    /* renamed from: i  reason: collision with root package name */
    private OverlayView f37623i;

    /* renamed from: j  reason: collision with root package name */
    private ViewGroup f37624j;

    /* renamed from: k  reason: collision with root package name */
    private ViewGroup f37625k;

    /* renamed from: l  reason: collision with root package name */
    private ViewGroup f37626l;

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f37627m;

    /* renamed from: n  reason: collision with root package name */
    private ViewGroup f37628n;

    /* renamed from: o  reason: collision with root package name */
    private ViewGroup f37629o;

    /* renamed from: q  reason: collision with root package name */
    private TextView f37631q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f37632r;

    /* renamed from: s  reason: collision with root package name */
    private View f37633s;

    /* renamed from: p  reason: collision with root package name */
    private List<ViewGroup> f37630p = new ArrayList();

    /* renamed from: t  reason: collision with root package name */
    private Bitmap.CompressFormat f37634t = f37614y;

    /* renamed from: u  reason: collision with root package name */
    private int f37635u = 90;

    /* renamed from: v  reason: collision with root package name */
    private int[] f37636v = {1, 2, 3};

    /* renamed from: w  reason: collision with root package name */
    private TransformImageView.b f37637w = new a();

    /* renamed from: x  reason: collision with root package name */
    private final View.OnClickListener f37638x = new g();

    /* loaded from: classes5.dex */
    class a implements TransformImageView.b {
        a() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void a() {
            UCropFragment.this.f37621g.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropFragment.this.f37633s.setClickable(false);
            UCropFragment.this.f37615a.b(false);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void b(@NonNull Exception exc) {
            UCropFragment.this.f37615a.a(UCropFragment.this.b2(exc));
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void c(float f10) {
            UCropFragment.this.l2(f10);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void d(float f10) {
            UCropFragment.this.h2(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropFragment.this.f37622h.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).b(view.isSelected()));
            UCropFragment.this.f37622h.x();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropFragment.this.f37630p) {
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
            UCropFragment.this.f37622h.x();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropFragment.this.f37622h.r();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            UCropFragment.this.f37622h.v(f10 / 42.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropFragment.this.e2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropFragment.this.f2(90);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f implements HorizontalProgressWheelView.a {
        f() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            UCropFragment.this.f37622h.x();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropFragment.this.f37622h.r();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            if (f10 > 0.0f) {
                UCropFragment.this.f37622h.A(UCropFragment.this.f37622h.getCurrentScale() + (f10 * ((UCropFragment.this.f37622h.getMaxScale() - UCropFragment.this.f37622h.getMinScale()) / 15000.0f)));
            } else {
                UCropFragment.this.f37622h.C(UCropFragment.this.f37622h.getCurrentScale() + (f10 * ((UCropFragment.this.f37622h.getMaxScale() - UCropFragment.this.f37622h.getMinScale()) / 15000.0f)));
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
            UCropFragment.this.n2(view.getId());
        }
    }

    /* loaded from: classes5.dex */
    public class h {

        /* renamed from: a  reason: collision with root package name */
        public int f37646a;

        /* renamed from: b  reason: collision with root package name */
        public Intent f37647b;

        public h(int i9, Intent intent) {
            this.f37646a = i9;
            this.f37647b = intent;
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void Z1(View view) {
        if (this.f37633s == null) {
            this.f37633s = new View(getContext());
            this.f37633s.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f37633s.setClickable(true);
        }
        ((RelativeLayout) view.findViewById(R$id.ucrop_photobox)).addView(this.f37633s);
    }

    private void a2(int i9) {
        if (getView() != null) {
            TransitionManager.beginDelayedTransition((ViewGroup) getView().findViewById(R$id.ucrop_photobox), this.f37620f);
        }
        this.f37626l.findViewById(R$id.text_view_scale).setVisibility(i9 == R$id.state_scale ? 0 : 8);
        this.f37624j.findViewById(R$id.text_view_crop).setVisibility(i9 == R$id.state_aspect_ratio ? 0 : 8);
        this.f37625k.findViewById(R$id.text_view_rotate).setVisibility(i9 != R$id.state_rotate ? 8 : 0);
    }

    private void c2(View view) {
        UCropView uCropView = (UCropView) view.findViewById(R$id.ucrop);
        this.f37621g = uCropView;
        this.f37622h = uCropView.getCropImageView();
        this.f37623i = this.f37621g.getOverlayView();
        this.f37622h.setTransformImageListener(this.f37637w);
        ((ImageView) view.findViewById(R$id.image_view_logo)).setColorFilter(this.f37618d, PorterDuff.Mode.SRC_ATOP);
        view.findViewById(R$id.ucrop_frame).setBackgroundColor(this.f37617c);
    }

    private void d2(@NonNull Bundle bundle) {
        String string = bundle.getString("com.yalantis.ucrop.CompressionFormatName");
        Bitmap.CompressFormat valueOf = !TextUtils.isEmpty(string) ? Bitmap.CompressFormat.valueOf(string) : null;
        if (valueOf == null) {
            valueOf = f37614y;
        }
        this.f37634t = valueOf;
        this.f37635u = bundle.getInt("com.yalantis.ucrop.CompressionQuality", 90);
        int[] intArray = bundle.getIntArray("com.yalantis.ucrop.AllowedGestures");
        if (intArray != null && intArray.length == 3) {
            this.f37636v = intArray;
        }
        this.f37622h.setMaxBitmapSize(bundle.getInt("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.f37622h.setMaxScaleMultiplier(bundle.getFloat("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.f37622h.setImageToWrapCropBoundsAnimDuration(bundle.getInt("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.f37623i.setFreestyleCropEnabled(bundle.getBoolean("com.yalantis.ucrop.FreeStyleCrop", false));
        this.f37623i.setDimmedColor(bundle.getInt("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(R$color.ucrop_color_default_dimmed)));
        this.f37623i.setCircleDimmedLayer(bundle.getBoolean("com.yalantis.ucrop.CircleDimmedLayer", false));
        this.f37623i.setShowCropFrame(bundle.getBoolean("com.yalantis.ucrop.ShowCropFrame", true));
        this.f37623i.setCropFrameColor(bundle.getInt("com.yalantis.ucrop.CropFrameColor", getResources().getColor(R$color.ucrop_color_default_crop_frame)));
        this.f37623i.setCropFrameStrokeWidth(bundle.getInt("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_frame_stoke_width)));
        this.f37623i.setShowCropGrid(bundle.getBoolean("com.yalantis.ucrop.ShowCropGrid", true));
        this.f37623i.setCropGridRowCount(bundle.getInt("com.yalantis.ucrop.CropGridRowCount", 2));
        this.f37623i.setCropGridColumnCount(bundle.getInt("com.yalantis.ucrop.CropGridColumnCount", 2));
        this.f37623i.setCropGridColor(bundle.getInt("com.yalantis.ucrop.CropGridColor", getResources().getColor(R$color.ucrop_color_default_crop_grid)));
        this.f37623i.setCropGridStrokeWidth(bundle.getInt("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(R$dimen.ucrop_default_crop_grid_stoke_width)));
        float f10 = bundle.getFloat("com.yalantis.ucrop.AspectRatioX", -1.0f);
        float f11 = bundle.getFloat("com.yalantis.ucrop.AspectRatioY", -1.0f);
        int i9 = bundle.getInt("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("com.yalantis.ucrop.AspectRatioOptions");
        if (f10 >= 0.0f && f11 >= 0.0f) {
            ViewGroup viewGroup = this.f37624j;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f12 = f10 / f11;
            this.f37622h.setTargetAspectRatio(Float.isNaN(f12) ? 0.0f : f12);
        } else if (parcelableArrayList != null && i9 < parcelableArrayList.size()) {
            float b10 = ((AspectRatio) parcelableArrayList.get(i9)).b() / ((AspectRatio) parcelableArrayList.get(i9)).c();
            this.f37622h.setTargetAspectRatio(Float.isNaN(b10) ? 0.0f : b10);
        } else {
            this.f37622h.setTargetAspectRatio(0.0f);
        }
        int i10 = bundle.getInt("com.yalantis.ucrop.MaxSizeX", 0);
        int i11 = bundle.getInt("com.yalantis.ucrop.MaxSizeY", 0);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.f37622h.setMaxResultImageSizeX(i10);
        this.f37622h.setMaxResultImageSizeY(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        GestureCropImageView gestureCropImageView = this.f37622h;
        gestureCropImageView.v(-gestureCropImageView.getCurrentAngle());
        this.f37622h.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(int i9) {
        this.f37622h.v(i9);
        this.f37622h.x();
    }

    private void g2(int i9) {
        GestureCropImageView gestureCropImageView = this.f37622h;
        int[] iArr = this.f37636v;
        boolean z10 = false;
        gestureCropImageView.setScaleEnabled(iArr[i9] == 3 || iArr[i9] == 1);
        GestureCropImageView gestureCropImageView2 = this.f37622h;
        int[] iArr2 = this.f37636v;
        gestureCropImageView2.setRotateEnabled((iArr2[i9] == 3 || iArr2[i9] == 2) ? true : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h2(float f10) {
        TextView textView = this.f37631q;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f10)));
        }
    }

    private void i2(int i9) {
        TextView textView = this.f37631q;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    private void j2(@NonNull Bundle bundle) {
        Uri uri = (Uri) bundle.getParcelable("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) bundle.getParcelable("com.yalantis.ucrop.OutputUri");
        d2(bundle);
        if (uri != null && uri2 != null) {
            try {
                this.f37622h.l(uri, uri2);
                return;
            } catch (Exception e10) {
                this.f37615a.a(b2(e10));
                return;
            }
        }
        this.f37615a.a(b2(new NullPointerException(getString(R$string.ucrop_error_input_data_is_absent))));
    }

    private void k2() {
        if (this.f37619e) {
            if (this.f37624j.getVisibility() == 0) {
                n2(R$id.state_aspect_ratio);
                return;
            } else {
                n2(R$id.state_scale);
                return;
            }
        }
        g2(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(float f10) {
        TextView textView = this.f37632r;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f10 * 100.0f))));
        }
    }

    private void m2(int i9) {
        TextView textView = this.f37632r;
        if (textView != null) {
            textView.setTextColor(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n2(@IdRes int i9) {
        if (this.f37619e) {
            ViewGroup viewGroup = this.f37624j;
            int i10 = R$id.state_aspect_ratio;
            viewGroup.setSelected(i9 == i10);
            ViewGroup viewGroup2 = this.f37625k;
            int i11 = R$id.state_rotate;
            viewGroup2.setSelected(i9 == i11);
            ViewGroup viewGroup3 = this.f37626l;
            int i12 = R$id.state_scale;
            viewGroup3.setSelected(i9 == i12);
            this.f37627m.setVisibility(i9 == i10 ? 0 : 8);
            this.f37628n.setVisibility(i9 == i11 ? 0 : 8);
            this.f37629o.setVisibility(i9 == i12 ? 0 : 8);
            a2(i9);
            if (i9 == i12) {
                g2(0);
            } else if (i9 == i11) {
                g2(1);
            } else {
                g2(2);
            }
        }
    }

    private void o2(@NonNull Bundle bundle, View view) {
        int i9 = bundle.getInt("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("com.yalantis.ucrop.AspectRatioOptions");
        if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
            i9 = 2;
            parcelableArrayList = new ArrayList();
            parcelableArrayList.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayList.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayList.add(new AspectRatio(getString(R$string.ucrop_label_original).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayList.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayList.add(new AspectRatio(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.layout_aspect_ratio);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R$layout.ucrop_aspect_ratio, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f37616b);
            aspectRatioTextView.setAspectRatio((AspectRatio) it.next());
            linearLayout.addView(frameLayout);
            this.f37630p.add(frameLayout);
        }
        this.f37630p.get(i9).setSelected(true);
        for (ViewGroup viewGroup : this.f37630p) {
            viewGroup.setOnClickListener(new b());
        }
    }

    private void p2(View view) {
        this.f37631q = (TextView) view.findViewById(R$id.text_view_rotate);
        int i9 = R$id.rotate_scroll_wheel;
        ((HorizontalProgressWheelView) view.findViewById(i9)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) view.findViewById(i9)).setMiddleLineColor(this.f37616b);
        view.findViewById(R$id.wrapper_reset_rotate).setOnClickListener(new d());
        view.findViewById(R$id.wrapper_rotate_by_angle).setOnClickListener(new e());
        i2(this.f37616b);
    }

    private void q2(View view) {
        this.f37632r = (TextView) view.findViewById(R$id.text_view_scale);
        int i9 = R$id.scale_scroll_wheel;
        ((HorizontalProgressWheelView) view.findViewById(i9)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) view.findViewById(i9)).setMiddleLineColor(this.f37616b);
        m2(this.f37616b);
    }

    private void r2(View view) {
        ImageView imageView = (ImageView) view.findViewById(R$id.image_view_state_scale);
        ImageView imageView2 = (ImageView) view.findViewById(R$id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) view.findViewById(R$id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new i(imageView.getDrawable(), this.f37616b));
        imageView2.setImageDrawable(new i(imageView2.getDrawable(), this.f37616b));
        imageView3.setImageDrawable(new i(imageView3.getDrawable(), this.f37616b));
    }

    protected h b2(Throwable th2) {
        return new h(96, new Intent().putExtra("com.yalantis.ucrop.Error", th2));
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof com.yalantis.ucrop.b) {
            this.f37615a = (com.yalantis.ucrop.b) getParentFragment();
        } else if (context instanceof com.yalantis.ucrop.b) {
            this.f37615a = (com.yalantis.ucrop.b) context;
        } else {
            throw new IllegalArgumentException(context.toString() + " must implement UCropFragmentCallback");
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(R$layout.ucrop_fragment_photobox, viewGroup, false);
        Bundle arguments = getArguments();
        s2(inflate, arguments);
        j2(arguments);
        k2();
        Z1(inflate);
        return inflate;
    }

    public void s2(View view, Bundle bundle) {
        this.f37616b = bundle.getInt("com.yalantis.ucrop.UcropColorControlsWidgetActive", ContextCompat.getColor(getContext(), R$color.ucrop_color_widget_active));
        this.f37618d = bundle.getInt("com.yalantis.ucrop.UcropLogoColor", ContextCompat.getColor(getContext(), R$color.ucrop_color_default_logo));
        this.f37619e = !bundle.getBoolean("com.yalantis.ucrop.HideBottomControls", false);
        this.f37617c = bundle.getInt("com.yalantis.ucrop.UcropRootViewBackgroundColor", ContextCompat.getColor(getContext(), R$color.ucrop_color_crop_background));
        c2(view);
        this.f37615a.b(true);
        if (this.f37619e) {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R$id.controls_wrapper);
            viewGroup.setVisibility(0);
            LayoutInflater.from(getContext()).inflate(R$layout.ucrop_controls, viewGroup, true);
            AutoTransition autoTransition = new AutoTransition();
            this.f37620f = autoTransition;
            autoTransition.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R$id.state_aspect_ratio);
            this.f37624j = viewGroup2;
            viewGroup2.setOnClickListener(this.f37638x);
            ViewGroup viewGroup3 = (ViewGroup) view.findViewById(R$id.state_rotate);
            this.f37625k = viewGroup3;
            viewGroup3.setOnClickListener(this.f37638x);
            ViewGroup viewGroup4 = (ViewGroup) view.findViewById(R$id.state_scale);
            this.f37626l = viewGroup4;
            viewGroup4.setOnClickListener(this.f37638x);
            this.f37627m = (ViewGroup) view.findViewById(R$id.layout_aspect_ratio);
            this.f37628n = (ViewGroup) view.findViewById(R$id.layout_rotate_wheel);
            this.f37629o = (ViewGroup) view.findViewById(R$id.layout_scale_wheel);
            o2(bundle, view);
            p2(view);
            q2(view);
            r2(view);
            return;
        }
        int i9 = R$id.ucrop_frame;
        ((RelativeLayout.LayoutParams) view.findViewById(i9).getLayoutParams()).bottomMargin = 0;
        view.findViewById(i9).requestLayout();
    }
}
