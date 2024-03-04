package com.guochao.faceshow.aaspring.modulars.vip.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import butterknife.BindView;
import com.facebook.share.internal.ShareConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.GifUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.ImageCropView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.TCConstants;
import io.reactivex.k;
import java.io.File;
import org.light.utils.FileUtils;
import vh.o;
/* loaded from: classes3.dex */
public class ImageCropActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    int f23307a = 300;

    /* renamed from: b  reason: collision with root package name */
    String f23308b;

    /* renamed from: c  reason: collision with root package name */
    int f23309c;
    @BindView
    ImageCropView mPhotoView;

    /* loaded from: classes3.dex */
    class a implements v.e {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.vip.activity.ImageCropActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0229a implements GifUtils.OnGiftEncodeListener {
            C0229a() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.GifUtils.OnGiftEncodeListener
            public void onEncodeFail(String str, String str2) {
                ImageCropActivity.this.dismissProgressDialog();
            }

            @Override // com.guochao.faceshow.aaspring.utils.GifUtils.OnGiftEncodeListener
            public void onEncodeSuccess(String str, String str2) {
                ImageCropActivity.this.dismissProgressDialog();
                ImageCropActivity.this.setResult(-1, new Intent().putExtra(TCConstants.VIDEO_RECORD_VIDEPATH, str2));
                ImageCropActivity.this.finish();
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.e
        public void onClick(View view) {
            String str = ImageCropActivity.this.f23308b;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ImageCropActivity imageCropActivity = ImageCropActivity.this;
            if (imageCropActivity.f23309c == 0) {
                return;
            }
            imageCropActivity.showProgressDialog("");
            RectF rectF = new RectF(ImageCropActivity.this.mPhotoView.getAttacher().D());
            float f10 = rectF.right;
            float f11 = rectF.left;
            float f12 = (f10 - f11) / ImageCropActivity.this.f23309c;
            float abs = Math.abs(f11 / (f10 - f11));
            ImageCropActivity.this.showProgressDialog("");
            int i9 = ImageCropActivity.this.f23307a;
            String gifCacheDir = FilePathProvider.getGifCacheDir(BaseApplication.getInstance());
            GifUtils.cropGif(str, abs, 0.5f, f12, i9, i9, new File(gifCacheDir, System.currentTimeMillis() + ".gif").getAbsolutePath(), new C0229a());
        }
    }

    /* loaded from: classes3.dex */
    class b extends SimpleObserver<String> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((b) str);
            if (ImageCropActivity.this.isFinishing() || ImageCropActivity.this.isDestroyed()) {
                return;
            }
            ImageCropActivity.this.b0(str);
        }
    }

    /* loaded from: classes3.dex */
    class c implements o<String, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f23313a;

        c(Uri uri) {
            this.f23313a = uri;
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(String str) throws Exception {
            String str2 = FilePathProvider.getCachePath("crop") + FileUtils.RES_PREFIX_STORAGE + System.currentTimeMillis() + ".gif";
            FileUtil.copyUriToFile(BaseApplication.getInstance(), this.f23313a, new File(str2));
            return str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f23315a;

        d(float f10) {
            this.f23315a = f10;
        }

        @Override // java.lang.Runnable
        public void run() {
            ImageCropActivity.this.mPhotoView.d(this.f23315a, false);
        }
    }

    public static void d0(Context context, String str, Uri uri, int i9, int i10) {
        Intent intent = new Intent(context, ImageCropActivity.class);
        intent.putExtra(ShareInternalUtility.STAGING_PARAM, str);
        intent.putExtra("size", i9);
        intent.putExtra(ShareConstants.MEDIA_URI, uri);
        if (context instanceof Activity) {
            ((Activity) context).startActivityForResult(intent, i10);
            return;
        }
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    protected void b0(String str) {
        this.f23308b = str;
        this.f23307a = getIntent().getIntExtra("size", 300);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i9 = options.outWidth;
        int i10 = options.outHeight;
        this.mPhotoView.setGifDrawable(new File(str));
        float f10 = 1.0f / ((i9 != i10 && i10 < i9) ? (i10 * 1.0f) / i9 : 1.0f);
        this.mPhotoView.e(f10, 1.2f * f10, 1.5f * f10);
        this.mPhotoView.post(new d(f10));
        this.f23309c = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_image_crop;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.vip_mall_title_crop_img);
        if (this.mTitleBarHelper != null) {
            setEndText(getString(R.string.f16064ok), R.color.color_ugc_app_primary);
            this.mTitleBarHelper.setOnRightTextClickListener(new a());
        }
        String stringExtra = getIntent().getStringExtra(ShareInternalUtility.STAGING_PARAM);
        if (Build.VERSION.SDK_INT >= 29) {
            k.just(stringExtra).map(new c((Uri) getIntent().getParcelableExtra(ShareConstants.MEDIA_URI))).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new b());
        } else {
            b0(stringExtra);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
