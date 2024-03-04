package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.modulars.chat.models.ImageMessage;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.l;
import com.guochao.faceshow.aaspring.utils.BaseZoomHelper;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.FileUtils;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.views.e;
import com.tencent.imsdk.v2.V2TIMDownloadCallback;
import com.tencent.imsdk.v2.V2TIMElem;
import h1.g;
import java.io.File;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class IMImagePreviewFragment extends BaseFragment implements BaseZoomHelper.Zoomable {

    /* renamed from: a  reason: collision with root package name */
    public int f16970a;

    /* renamed from: b  reason: collision with root package name */
    public ImageMessage f16971b;

    /* renamed from: c  reason: collision with root package name */
    File f16972c;

    /* renamed from: d  reason: collision with root package name */
    File f16973d;

    /* renamed from: e  reason: collision with root package name */
    h1.f f16974e;

    /* renamed from: f  reason: collision with root package name */
    l f16975f;
    @BindView
    ImageView mErrorImageView;
    @BindView
    PhotoView mImageView;

    /* loaded from: classes3.dex */
    class a implements GestureDetector.OnDoubleTapListener {
        a() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            float scale = IMImagePreviewFragment.this.mImageView.getScale();
            int i9 = (scale > 1.0f ? 1 : (scale == 1.0f ? 0 : -1));
            if (i9 > 0) {
                IMImagePreviewFragment.this.mImageView.d(1.0f, true);
            } else if (i9 <= 0 && scale >= 1.0f) {
                IMImagePreviewFragment.this.mImageView.d(1.5f, true);
            } else {
                IMImagePreviewFragment.this.mImageView.d(1.0f, true);
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            IMImagePreviewFragment iMImagePreviewFragment = IMImagePreviewFragment.this;
            h1.f fVar = iMImagePreviewFragment.f16974e;
            if (fVar != null) {
                fVar.onPhotoTap(iMImagePreviewFragment.mImageView, 0.0f, 0.0f);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class b implements g {
        b() {
        }

        @Override // h1.g
        public void a(float f10, float f11, float f12) {
            IMImagePreviewFragment iMImagePreviewFragment = IMImagePreviewFragment.this;
            if (iMImagePreviewFragment.f16975f == null || !iMImagePreviewFragment.getUserVisibleHint()) {
                return;
            }
            if (IMImagePreviewFragment.this.mImageView.getScale() <= 1.005f) {
                IMImagePreviewFragment iMImagePreviewFragment2 = IMImagePreviewFragment.this;
                iMImagePreviewFragment2.f16975f.onScaled(false, f10, iMImagePreviewFragment2.f16970a);
                return;
            }
            IMImagePreviewFragment iMImagePreviewFragment3 = IMImagePreviewFragment.this;
            iMImagePreviewFragment3.f16975f.onScaled(true, f10, iMImagePreviewFragment3.f16970a);
        }
    }

    /* loaded from: classes3.dex */
    class c extends e {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f16978b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(IMImagePreviewFragment iMImagePreviewFragment, String str) {
            super(iMImagePreviewFragment);
            this.f16978b = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.IMImagePreviewFragment.e
        void a(IMImagePreviewFragment iMImagePreviewFragment) {
            IMImagePreviewFragment iMImagePreviewFragment2 = IMImagePreviewFragment.this;
            if (iMImagePreviewFragment2.f16971b.mThumbnailDownloadSuccess) {
                ic.a.c(iMImagePreviewFragment2.mImageView).r(this.f16978b).m().g1(ic.a.c(IMImagePreviewFragment.this.mImageView).J(IMImagePreviewFragment.this.f16973d)).d0(IMImagePreviewFragment.this.mImageView.getDrawable()).i().j().Q0(IMImagePreviewFragment.this.mImageView);
            } else {
                ic.a.c(iMImagePreviewFragment2.mImageView).r(this.f16978b).m().i().j().Q0(IMImagePreviewFragment.this.mImageView);
            }
            IMImagePreviewFragment.this.f16971b.mOriginalDownloadSuccess = true;
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f16980a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends s0.c<File> {
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
                String photoPath = FilePathProvider.getPhotoPath();
                if (FileUtils.saveImageFileToGallery(file.getAbsolutePath(), new File(photoPath, System.currentTimeMillis() + IMImagePreviewFragment.this.f16972c.getName()).getAbsolutePath())) {
                    IMImagePreviewFragment.this.showToast(R.string.save_successful);
                } else {
                    IMImagePreviewFragment.this.showToast(R.string.saved_error);
                }
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
                    PackageUtils.gotoSetting(IMImagePreviewFragment.this.getActivity());
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        d(View view) {
            this.f16980a = view;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((d) aVar);
            if (aVar.f58133b) {
                File file = IMImagePreviewFragment.this.f16972c;
                if (file != null && file.exists()) {
                    String photoPath = FilePathProvider.getPhotoPath();
                    if (FileUtils.saveImageFileToGallery(IMImagePreviewFragment.this.f16972c.getPath(), new File(photoPath, System.currentTimeMillis() + IMImagePreviewFragment.this.f16972c.getName()).getAbsolutePath())) {
                        IMImagePreviewFragment.this.showToast(R.string.save_successful);
                    } else {
                        IMImagePreviewFragment.this.showToast(R.string.saved_error);
                    }
                } else {
                    ic.a.c(IMImagePreviewFragment.this.mImageView).F(IMImagePreviewFragment.this.f16971b.getUrl(0)).M0(new a());
                }
                this.f16980a.setVisibility(8);
            } else if (aVar.f58134c) {
            } else {
                IMImagePreviewFragment iMImagePreviewFragment = IMImagePreviewFragment.this;
                iMImagePreviewFragment.alert(iMImagePreviewFragment.getString(R.string.Open_storage_permission_to_use), null, new b(), false).k(IMImagePreviewFragment.this.getString(R.string.payment_password_setting));
            }
        }
    }

    /* loaded from: classes3.dex */
    private static abstract class e implements V2TIMDownloadCallback {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<IMImagePreviewFragment> f16984a;

        public e(IMImagePreviewFragment iMImagePreviewFragment) {
            this.f16984a = new WeakReference<>(iMImagePreviewFragment);
        }

        abstract void a(IMImagePreviewFragment iMImagePreviewFragment);

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            IMImagePreviewFragment iMImagePreviewFragment = this.f16984a.get();
            if (iMImagePreviewFragment == null || iMImagePreviewFragment.getActivity() == null || iMImagePreviewFragment.getActivity().isDestroyed() || iMImagePreviewFragment.getActivity().isFinishing()) {
                return;
            }
            a(iMImagePreviewFragment);
        }
    }

    public static IMImagePreviewFragment P1(int i9) {
        IMImagePreviewFragment iMImagePreviewFragment = new IMImagePreviewFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        iMImagePreviewFragment.setArguments(bundle);
        return iMImagePreviewFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.activity_chat_image_preview;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        File file;
        if (com.guochao.faceshow.aaspring.manager.im.b.l0().i0() == null) {
            return;
        }
        if (com.guochao.faceshow.aaspring.manager.im.b.l0().i0().size() <= this.f16970a) {
            this.f16970a = com.guochao.faceshow.aaspring.manager.im.b.l0().i0().size() - 1;
        }
        ImageMessage imageMessage = (ImageMessage) com.guochao.faceshow.aaspring.manager.im.b.l0().i0().get(this.f16970a);
        this.f16971b = imageMessage;
        if (imageMessage != null) {
            this.f16972c = imageMessage.getOriginalFile();
            this.f16973d = this.f16971b.getThumbnailFile();
        }
        this.mImageView.setOnDoubleTapListener(new a());
        this.mImageView.setOnScaleChangeListener(new b());
        File file2 = this.f16972c;
        if ((file2 != null && file2.exists()) || ((file = this.f16973d) != null && file.exists())) {
            ImageMessage imageMessage2 = this.f16971b;
            boolean z10 = imageMessage2.mThumbnailDownloadSuccess;
            if (z10 && imageMessage2.mOriginalDownloadSuccess) {
                ic.a.c(this.mImageView).J(this.f16972c).m().g1(ic.a.c(this.mImageView).J(this.f16973d)).i().j().Q0(this.mImageView);
                return;
            }
            if (z10) {
                this.mImageView.setImageURI(Uri.fromFile(this.f16973d));
            }
            if (this.f16971b.getOrignalImage() == null) {
                return;
            }
            String absolutePath = this.f16971b.getOriginalFile().getAbsolutePath();
            this.f16971b.getOrignalImage().downloadImage(absolutePath, new c(this, absolutePath));
            return;
        }
        ic.a.c(this.mImageView).r(this.f16971b.getUrl(0)).g1(ic.a.c(this.mImageView).r(this.f16971b.getUrl(1))).i().j().Q0(this.mImageView);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f16970a = getArguments().getInt("position");
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public void save(View view) {
        if (this.f16971b == null || getActivity() == null) {
            return;
        }
        new com.tbruyelle.rxpermissions2.a(getActivity()).p("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE").subscribe(new d(view));
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper.Zoomable
    public boolean scaled() {
        PhotoView photoView = this.mImageView;
        return photoView != null && photoView.getScale() >= 1.005f;
    }

    public void setOnPhotoTapListener(h1.f fVar) {
        this.f16974e = fVar;
    }

    public void setOnScaleListener(l lVar) {
        this.f16975f = lVar;
    }
}
