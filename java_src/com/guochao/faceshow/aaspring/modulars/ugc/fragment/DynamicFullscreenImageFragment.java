package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.app.Dialog;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import butterknife.BindView;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.views.DownloadDialogProgressView;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import com.guochao.faceshow.aaspring.views.GifImageView;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.views.Love;
import com.guochao.faceshow.views.e;
import java.io.File;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class DynamicFullscreenImageFragment extends BaseFragment implements BaseZoomHelper.Zoomable {

    /* renamed from: a  reason: collision with root package name */
    DynamicFile f22696a;

    /* renamed from: b  reason: collision with root package name */
    h1.f f22697b;

    /* renamed from: c  reason: collision with root package name */
    private int f22698c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f22699d;

    /* renamed from: e  reason: collision with root package name */
    private Love f22700e;

    /* renamed from: f  reason: collision with root package name */
    private String f22701f;

    /* renamed from: g  reason: collision with root package name */
    private String f22702g;

    /* renamed from: h  reason: collision with root package name */
    float f22703h = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    s0.c<File> f22704i = new a();

    /* renamed from: j  reason: collision with root package name */
    boolean f22705j = false;

    /* renamed from: k  reason: collision with root package name */
    l f22706k;

    /* renamed from: l  reason: collision with root package name */
    FullScreenScrollToExitViewV2 f22707l;
    @BindView
    DownloadDialogProgressView mDownloadDialogProgressView;
    @BindView
    GifImageView mImageView;
    @BindView
    View mProgressView;
    @BindView
    TextView mTextViewProgress;

    /* loaded from: classes3.dex */
    class a extends s0.c<File> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0223a implements Runnable {
            RunnableC0223a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
                dynamicFullscreenImageFragment.mImageView.c(dynamicFullscreenImageFragment.f22703h, 0.0f, 0.0f, true);
            }
        }

        a() {
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((File) obj, (t0.f<? super File>) fVar);
        }

        public void onResourceReady(@NonNull File file, @Nullable t0.f<? super File> fVar) {
            int statusbarHeight;
            if (DynamicFullscreenImageFragment.this.getActivity() == null) {
                return;
            }
            DynamicFullscreenImageFragment.this.mImageView.setGifDrawable(file);
            int width = DynamicFullscreenImageFragment.this.f22696a.getWidth();
            int height = DynamicFullscreenImageFragment.this.f22696a.getHeight();
            if (width > 0 && height > 0 && (statusbarHeight = DynamicFullscreenImageFragment.this.getResources().getDisplayMetrics().heightPixels + StatusBarHelper.getStatusbarHeight(DynamicFullscreenImageFragment.this.getActivity())) < height) {
                float f10 = (height * 1.0f) / statusbarHeight;
                float f11 = f10 * 1.5f;
                DynamicFullscreenImageFragment.this.mImageView.e(f10, f11, 1.5f * f11);
                DynamicFullscreenImageFragment.this.mImageView.setScale(f10);
                DynamicFullscreenImageFragment.this.f22703h = f10;
            }
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
            if (dynamicFullscreenImageFragment.f22703h > 0.0f) {
                dynamicFullscreenImageFragment.mImageView.post(new RunnableC0223a());
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements com.bumptech.glide.request.g<Drawable> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
                dynamicFullscreenImageFragment.mImageView.c(dynamicFullscreenImageFragment.f22703h, 0.0f, 0.0f, true);
            }
        }

        b() {
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, s0.k<Drawable> kVar, boolean z10) {
            return false;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: c */
        public boolean a(Drawable drawable, Object obj, s0.k<Drawable> kVar, DataSource dataSource, boolean z10) {
            if (DynamicFullscreenImageFragment.this.getActivity() == null) {
                return true;
            }
            DynamicFullscreenImageFragment.this.mProgressView.setVisibility(8);
            int width = DynamicFullscreenImageFragment.this.f22696a.getWidth();
            int height = DynamicFullscreenImageFragment.this.f22696a.getHeight();
            if (width > 0 && height > 0) {
                int statusbarHeight = DynamicFullscreenImageFragment.this.getResources().getDisplayMetrics().heightPixels + StatusBarHelper.getStatusbarHeight(DynamicFullscreenImageFragment.this.getActivity());
                float f10 = DynamicFullscreenImageFragment.this.getResources().getDisplayMetrics().widthPixels * 1.0f;
                float f11 = statusbarHeight;
                float f12 = width;
                float f13 = height;
                if ((f12 * 1.0f) / f13 < f10 / f11 && statusbarHeight < height) {
                    float f14 = ((f13 * 1.0f) / f11) * (f10 / f12);
                    float f15 = f14 * 1.5f;
                    DynamicFullscreenImageFragment.this.mImageView.e(f14, f15, 1.5f * f15);
                    DynamicFullscreenImageFragment.this.mImageView.setScale(f14);
                    DynamicFullscreenImageFragment.this.f22703h = f14;
                }
            }
            DynamicFullscreenImageFragment.this.mImageView.setImageDrawable(drawable);
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
            if (dynamicFullscreenImageFragment.f22703h > 0.0f && obj.equals(dynamicFullscreenImageFragment.f22696a.getFileUrl())) {
                DynamicFullscreenImageFragment.this.mImageView.postDelayed(new a(), 100L);
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class c extends s0.c<Drawable> {
        c() {
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            DynamicFullscreenImageFragment.this.mImageView.setImageDrawable(drawable);
        }
    }

    /* loaded from: classes3.dex */
    class d implements h1.h {
        d() {
        }

        @Override // h1.h
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            DynamicFullscreenImageFragment.this.Y1();
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class e implements h1.i {
        e() {
        }

        @Override // h1.i
        public void a(float f10, float f11) {
            DynamicFullscreenImageFragment.this.Y1();
        }
    }

    /* loaded from: classes3.dex */
    class f implements h1.g {
        f() {
        }

        @Override // h1.g
        public void a(float f10, float f11, float f12) {
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
            if (dynamicFullscreenImageFragment.f22706k == null || !dynamicFullscreenImageFragment.getUserVisibleHint() || DynamicFullscreenImageFragment.this.b2()) {
                return;
            }
            if (DynamicFullscreenImageFragment.this.mImageView.getScale() <= 1.005f) {
                DynamicFullscreenImageFragment dynamicFullscreenImageFragment2 = DynamicFullscreenImageFragment.this;
                dynamicFullscreenImageFragment2.f22706k.onScaled(false, f10, dynamicFullscreenImageFragment2.f22698c);
                return;
            }
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment3 = DynamicFullscreenImageFragment.this;
            dynamicFullscreenImageFragment3.f22706k.onScaled(dynamicFullscreenImageFragment3.c2(), f10, DynamicFullscreenImageFragment.this.f22698c);
        }
    }

    /* loaded from: classes3.dex */
    class g implements GestureDetector.OnDoubleTapListener {
        g() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            if (!DynamicFullscreenImageFragment.this.f22699d) {
                DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
                if (dynamicFullscreenImageFragment.f22696a != null && TextUtils.isEmpty(dynamicFullscreenImageFragment.f22701f)) {
                    DynamicFullscreenImageFragment dynamicFullscreenImageFragment2 = DynamicFullscreenImageFragment.this;
                    l lVar = dynamicFullscreenImageFragment2.f22706k;
                    if (lVar != null) {
                        lVar.onScaled(motionEvent, dynamicFullscreenImageFragment2.f22698c);
                        DynamicFullscreenImageFragment.this.f22700e.a(motionEvent);
                        return false;
                    }
                    return false;
                }
            }
            float scale = DynamicFullscreenImageFragment.this.mImageView.getScale();
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment3 = DynamicFullscreenImageFragment.this;
            float f10 = dynamicFullscreenImageFragment3.f22703h;
            if (scale > f10) {
                dynamicFullscreenImageFragment3.mImageView.d(f10, true);
            } else if (scale <= 1.0f && scale >= 1.0f) {
                dynamicFullscreenImageFragment3.mImageView.d(f10 * 1.5f, true);
            } else {
                dynamicFullscreenImageFragment3.mImageView.d(f10, true);
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
            h1.f fVar = dynamicFullscreenImageFragment.f22697b;
            if (fVar != null) {
                fVar.onPhotoTap(dynamicFullscreenImageFragment.mImageView, 0.0f, 0.0f);
                return true;
            } else if (dynamicFullscreenImageFragment.getActivity() != null) {
                ActivityCompat.finishAfterTransition(DynamicFullscreenImageFragment.this.getActivity());
                return true;
            } else {
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends SimpleObserver<te.a> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends s0.c<Bitmap> {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment$h$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public class C0224a extends SimpleObserver<File> {
                C0224a() {
                }

                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                /* renamed from: a */
                public void onNext(File file) {
                    super.onNext(file);
                    String photoPath = FilePathProvider.getPhotoPath();
                    if (FileUtils.saveImageFileToGallery(file.getAbsolutePath(), new File(photoPath, System.currentTimeMillis() + "." + DynamicFullscreenImageFragment.this.f22696a.getFileUrl().substring(DynamicFullscreenImageFragment.this.f22696a.getFileUrl().lastIndexOf("."))).getAbsolutePath())) {
                        DynamicFullscreenImageFragment.this.showToast(R.string.save_successful);
                    } else {
                        DynamicFullscreenImageFragment.this.showToast(R.string.saved_error);
                    }
                }

                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onComplete() {
                    super.onComplete();
                    DynamicFullscreenImageFragment.this.f22705j = false;
                }

                @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                public void onError(Throwable th2) {
                    super.onError(th2);
                    DynamicFullscreenImageFragment.this.showToast(R.string.saved_error);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes3.dex */
            public class b implements vh.o<Bitmap, File> {
                b() {
                }

                @Override // vh.o
                /* renamed from: a */
                public File apply(Bitmap bitmap) {
                    String cachePath = FilePathProvider.getCachePath();
                    String absolutePath = new File(cachePath, System.currentTimeMillis() + "." + DynamicFullscreenImageFragment.this.f22696a.getFileUrl().substring(DynamicFullscreenImageFragment.this.f22696a.getFileUrl().lastIndexOf("."))).getAbsolutePath();
                    FileUtil.saveBitmap(absolutePath, bitmap);
                    return new File(absolutePath);
                }
            }

            a() {
            }

            @Override // s0.k
            public void onLoadCleared(@Nullable Drawable drawable) {
            }

            @Override // s0.c, s0.k
            public void onLoadFailed(@Nullable Drawable drawable) {
                super.onLoadFailed(drawable);
                DynamicFullscreenImageFragment.this.showToast(R.string.saved_error);
                DynamicFullscreenImageFragment.this.f22705j = false;
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NonNull Bitmap bitmap, @Nullable t0.f<? super Bitmap> fVar) {
                io.reactivex.k.just(bitmap).subscribeOn(di.a.b()).observeOn(sh.a.a()).map(new b()).subscribe(new C0224a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class b implements e.a {
            b() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                if (z10) {
                    dialog.dismiss();
                    PackageUtils.gotoSetting(DynamicFullscreenImageFragment.this.getActivity());
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        h() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((h) aVar);
            if (aVar.f58133b) {
                DynamicFullscreenImageFragment.this.f22705j = true;
                ic.c<Bitmap> b10 = ic.a.b(BaseApplication.getInstance()).b();
                if (!TextUtils.isEmpty(DynamicFullscreenImageFragment.this.f22702g)) {
                    b10 = b10.q0(new jc.c(DynamicFullscreenImageFragment.this.f22702g));
                }
                b10.Z0(DynamicFullscreenImageFragment.this.f22696a.getFileUrl()).M0(new a());
            } else if (aVar.f58134c) {
            } else {
                DynamicFullscreenImageFragment dynamicFullscreenImageFragment = DynamicFullscreenImageFragment.this;
                dynamicFullscreenImageFragment.alert(dynamicFullscreenImageFragment.getString(R.string.Open_storage_permission_to_use), null, new b(), false).k(DynamicFullscreenImageFragment.this.getString(R.string.payment_password_setting));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22722a;

        i(int i9) {
            this.f22722a = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            DynamicFullscreenImageFragment.this.mDownloadDialogProgressView.setProgress(this.f22722a);
            DynamicFullscreenImageFragment.this.mTextViewProgress.setText(String.format("%s%s", String.valueOf(this.f22722a), "%"));
            if (this.f22722a >= 100) {
                DynamicFullscreenImageFragment.this.mProgressView.setVisibility(8);
            }
        }
    }

    /* loaded from: classes3.dex */
    static class j implements ic.f {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<DynamicFullscreenImageFragment> f22724a;

        public j(DynamicFullscreenImageFragment dynamicFullscreenImageFragment) {
            this.f22724a = new WeakReference<>(dynamicFullscreenImageFragment);
        }

        @Override // ic.f
        public void onProgress(int i9) {
            DynamicFullscreenImageFragment dynamicFullscreenImageFragment = this.f22724a.get();
            if (dynamicFullscreenImageFragment == null || !dynamicFullscreenImageFragment.isAdded()) {
                return;
            }
            dynamicFullscreenImageFragment.e2(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        if (this.f22706k == null || !getUserVisibleHint() || b2()) {
            return;
        }
        float scale = this.mImageView.getScale();
        if (scale <= 1.0f && scale >= 1.0f) {
            this.f22706k.onScaled(false, scale, this.f22698c);
        } else {
            this.f22706k.onScaled(!c2(), scale, this.f22698c);
        }
    }

    public static DynamicFullscreenImageFragment Z1(String str, int i9, int i10, int i11) {
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putInt("width", i9);
        bundle.putInt("height", i10);
        bundle.putInt("position", i11);
        DynamicFullscreenImageFragment dynamicFullscreenImageFragment = new DynamicFullscreenImageFragment();
        dynamicFullscreenImageFragment.setArguments(bundle);
        return dynamicFullscreenImageFragment;
    }

    public static DynamicFullscreenImageFragment a2(String str, DynamicFile dynamicFile, boolean z10, int i9) {
        Bundle bundle = new Bundle();
        bundle.putString(Contants.USER_ID, str);
        bundle.putParcelable("data", dynamicFile);
        bundle.putBoolean("local", z10);
        bundle.putInt("position", i9);
        DynamicFullscreenImageFragment dynamicFullscreenImageFragment = new DynamicFullscreenImageFragment();
        dynamicFullscreenImageFragment.setArguments(bundle);
        return dynamicFullscreenImageFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b2() {
        FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2 = this.f22707l;
        return fullScreenScrollToExitViewV2 != null && fullScreenScrollToExitViewV2.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c2() {
        Matrix matrix = new Matrix();
        float[] fArr = new float[9];
        this.mImageView.a(matrix);
        matrix.getValues(fArr);
        return new int[]{(int) fArr[2], (int) fArr[5]}[1] == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2(int i9) {
        if (getActivity() != null) {
            getActivity().runOnUiThread(new i(i9));
        }
    }

    public void d2(FullScreenScrollToExitViewV2 fullScreenScrollToExitViewV2) {
        this.f22707l = fullScreenScrollToExitViewV2;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_dynamic_fullscreen_image;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Love love = new Love(getContext());
        this.f22700e = love;
        love.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ((ViewGroup) view).addView(this.f22700e);
        if (this.f22696a.getFileUrl() != null) {
            if (this.f22696a.getFileUrl().toLowerCase().endsWith(".gif")) {
                ic.a.c(this.mImageView).d().g1(ic.a.c(this.mImageView).d().Z0(this.f22696a.getFileSmallUrl())).Z0(this.f22696a.getFileUrl()).M0(this.f22704i);
            } else {
                this.mImageView.setVisibility(0);
                ic.e.a(this.f22696a.getFileUrl(), new j(this));
                b bVar = new b();
                c cVar = new c();
                if (!TextUtils.isEmpty(this.f22696a.getUriString())) {
                    ic.a.c(this.mImageView).n(Uri.parse(this.f22696a.getUriString())).g1(ic.a.c(this.mImageView).n(Uri.parse(this.f22696a.getUriString()))).x0(bVar).M0(cVar);
                } else {
                    ic.a.c(this.mImageView).r(this.f22696a.getFileUrl()).g1(ic.a.c(this.mImageView).r(this.f22696a.getFileSmallUrl())).x0(bVar).M0(cVar);
                }
            }
        }
        this.mImageView.getAttacher().setOnSingleFlingListener(new d());
        this.mImageView.getAttacher().setOnViewDragListener(new e());
        this.mImageView.setOnScaleChangeListener(new f());
        this.mImageView.setOnDoubleTapListener(new g());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            DynamicFile dynamicFile = (DynamicFile) getArguments().getParcelable("data");
            this.f22696a = dynamicFile;
            if (dynamicFile == null) {
                this.f22701f = getArguments().getString("url");
                DynamicFile dynamicFile2 = new DynamicFile();
                this.f22696a = dynamicFile2;
                dynamicFile2.setFileUrl(this.f22701f);
                this.f22696a.setWidth(getArguments().getInt("width"));
                this.f22696a.setHeight(getArguments().getInt("height"));
            }
            this.f22702g = getArguments().getString(Contants.USER_ID);
            this.f22698c = getArguments().getInt("position");
            this.f22699d = getArguments().getBoolean("local");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DynamicFile dynamicFile = this.f22696a;
        if (dynamicFile != null) {
            ic.e.b(dynamicFile.getFileUrl());
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public void save(View view) {
        if (this.f22705j) {
            return;
        }
        new com.tbruyelle.rxpermissions2.a(getActivity()).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new h());
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public boolean scaled() {
        GifImageView gifImageView = this.mImageView;
        return gifImageView != null && gifImageView.getScale() >= 1.005f && c2();
    }

    public void setOnPhotoTapListener(h1.f fVar) {
        this.f22697b = fVar;
    }

    public void setOnScaleListener(l lVar) {
        this.f22706k = lVar;
    }
}
