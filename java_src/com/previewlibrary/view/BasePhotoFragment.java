package com.previewlibrary.view;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.previewlibrary.GPVideoPlayerActivity;
import com.previewlibrary.GPreviewActivity;
import com.previewlibrary.R$id;
import com.previewlibrary.R$layout;
import com.previewlibrary.enitity.IThumbViewInfo;
import com.previewlibrary.wight.SmoothImageView;
import uk.co.senab2.photoview2.c;
/* loaded from: classes4.dex */
public class BasePhotoFragment extends Fragment {

    /* renamed from: h  reason: collision with root package name */
    public static bd.c f28903h;

    /* renamed from: a  reason: collision with root package name */
    private IThumbViewInfo f28904a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28905b = false;

    /* renamed from: c  reason: collision with root package name */
    protected SmoothImageView f28906c;

    /* renamed from: d  reason: collision with root package name */
    protected View f28907d;

    /* renamed from: e  reason: collision with root package name */
    protected View f28908e;

    /* renamed from: f  reason: collision with root package name */
    protected bd.b f28909f;

    /* renamed from: g  reason: collision with root package name */
    protected View f28910g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String videoUrl = BasePhotoFragment.this.f28904a.getVideoUrl();
            if (videoUrl == null || videoUrl.isEmpty()) {
                return;
            }
            bd.c cVar = BasePhotoFragment.f28903h;
            if (cVar != null) {
                cVar.a(videoUrl);
            } else {
                GPVideoPlayerActivity.a(BasePhotoFragment.this.getContext(), videoUrl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements bd.b {
        b() {
        }

        @Override // bd.b
        public void a() {
            BasePhotoFragment.this.f28908e.setVisibility(8);
            String videoUrl = BasePhotoFragment.this.f28904a.getVideoUrl();
            if (videoUrl != null && !videoUrl.isEmpty()) {
                BasePhotoFragment.this.f28910g.setVisibility(0);
                ViewCompat.animate(BasePhotoFragment.this.f28910g).alpha(1.0f).setDuration(1000L).start();
                return;
            }
            BasePhotoFragment.this.f28910g.setVisibility(8);
        }

        @Override // bd.b
        public void onLoadFailed(Drawable drawable) {
            BasePhotoFragment.this.f28908e.setVisibility(8);
            BasePhotoFragment.this.f28910g.setVisibility(8);
            if (drawable != null) {
                BasePhotoFragment.this.f28906c.setImageDrawable(drawable);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements c.i {
        c() {
        }

        @Override // uk.co.senab2.photoview2.c.i
        public void a(View view, float f10, float f11) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements c.i {
        d() {
        }

        @Override // uk.co.senab2.photoview2.c.i
        public void a(View view, float f10, float f11) {
            if (BasePhotoFragment.this.f28906c.l()) {
                ((GPreviewActivity) BasePhotoFragment.this.getActivity()).transformOut();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class e implements c.f {
        e() {
        }

        @Override // uk.co.senab2.photoview2.c.f
        public void a() {
        }

        @Override // uk.co.senab2.photoview2.c.f
        public void b(View view, float f10, float f11) {
            if (BasePhotoFragment.this.f28906c.l()) {
                ((GPreviewActivity) BasePhotoFragment.this.getActivity()).transformOut();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class f implements SmoothImageView.g {
        f() {
        }

        @Override // com.previewlibrary.wight.SmoothImageView.g
        public void a(int i9) {
            if (i9 == 255) {
                String videoUrl = BasePhotoFragment.this.f28904a.getVideoUrl();
                if (videoUrl != null && !videoUrl.isEmpty()) {
                    BasePhotoFragment.this.f28910g.setVisibility(0);
                } else {
                    BasePhotoFragment.this.f28910g.setVisibility(8);
                }
            } else {
                BasePhotoFragment.this.f28910g.setVisibility(8);
            }
            BasePhotoFragment.this.f28907d.setBackgroundColor(BasePhotoFragment.R1(i9 / 255.0f, ViewCompat.MEASURED_STATE_MASK));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class g implements SmoothImageView.h {
        g() {
        }

        @Override // com.previewlibrary.wight.SmoothImageView.h
        public void a() {
            ((GPreviewActivity) BasePhotoFragment.this.getActivity()).transformOut();
        }
    }

    /* loaded from: classes4.dex */
    class h implements SmoothImageView.j {
        h() {
        }

        @Override // com.previewlibrary.wight.SmoothImageView.j
        public void a(SmoothImageView.Status status) {
            BasePhotoFragment.this.f28907d.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public static int R1(float f10, int i9) {
        return (Math.min(255, Math.max(0, (int) (f10 * 255.0f))) << 24) + (i9 & ViewCompat.MEASURED_SIZE_MASK);
    }

    public static BasePhotoFragment S1(Class<? extends BasePhotoFragment> cls, IThumbViewInfo iThumbViewInfo, boolean z10, boolean z11, boolean z12, float f10) {
        BasePhotoFragment basePhotoFragment;
        try {
            basePhotoFragment = cls.newInstance();
        } catch (Exception unused) {
            basePhotoFragment = new BasePhotoFragment();
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("key_item", iThumbViewInfo);
        bundle.putBoolean("is_trans_photo", z10);
        bundle.putBoolean("isSingleFling", z11);
        bundle.putBoolean("isDrag", z12);
        bundle.putFloat("sensitivity", f10);
        basePhotoFragment.setArguments(bundle);
        return basePhotoFragment;
    }

    private void T1() {
        boolean z10;
        Bundle arguments = getArguments();
        if (arguments != null) {
            z10 = arguments.getBoolean("isSingleFling");
            this.f28904a = (IThumbViewInfo) arguments.getParcelable("key_item");
            this.f28906c.q(arguments.getBoolean("isDrag"), arguments.getFloat("sensitivity"));
            this.f28906c.setThumbRect(this.f28904a.getBounds());
            this.f28907d.setTag(this.f28904a.getUrl());
            this.f28905b = arguments.getBoolean("is_trans_photo", false);
            if (this.f28904a.getUrl().toLowerCase().contains(".gif")) {
                this.f28906c.setZoomable(false);
                com.previewlibrary.a.a().b().d(this, this.f28904a.getUrl(), this.f28906c, this.f28909f);
            } else {
                com.previewlibrary.a.a().b().c(this, this.f28904a.getUrl(), this.f28906c, this.f28909f);
            }
        } else {
            z10 = true;
        }
        if (!this.f28905b) {
            this.f28907d.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        } else {
            this.f28906c.setMinimumScale(0.7f);
        }
        if (z10) {
            this.f28906c.setOnViewTapListener(new c());
            this.f28906c.setOnViewTapListener(new d());
        } else {
            this.f28906c.setOnPhotoTapListener(new e());
        }
        this.f28906c.setAlphaChangeListener(new f());
        this.f28906c.setTransformOutListener(new g());
    }

    private void initView(View view) {
        this.f28908e = view.findViewById(R$id.loading);
        this.f28906c = (SmoothImageView) view.findViewById(R$id.photoView);
        this.f28910g = view.findViewById(R$id.btnVideo);
        View findViewById = view.findViewById(R$id.rootView);
        this.f28907d = findViewById;
        findViewById.setDrawingCacheEnabled(false);
        this.f28906c.setDrawingCacheEnabled(false);
        this.f28910g.setOnClickListener(new a());
        this.f28909f = new b();
    }

    public void Q1(int i9) {
        ViewCompat.animate(this.f28910g).alpha(0.0f).setDuration(SmoothImageView.getDuration()).start();
        this.f28907d.setBackgroundColor(i9);
    }

    public void U1() {
        this.f28905b = false;
    }

    public void V1() {
        this.f28906c.s(new h());
    }

    public void W1(SmoothImageView.j jVar) {
        this.f28906c.t(jVar);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R$layout.fragment_image_photo_layout, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.previewlibrary.a.a().b().a(getActivity());
        if (getActivity() == null || !getActivity().isFinishing()) {
            return;
        }
        f28903h = null;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onDestroyView() {
        super.onDestroyView();
        U1();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onStop() {
        com.previewlibrary.a.a().b().b(this);
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        initView(view);
        T1();
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z10) {
        super.setUserVisibleHint(z10);
    }
}
