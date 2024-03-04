package com.guochao.faceshow.ImageBrowse;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.g;
import com.facebook.share.internal.ShareConstants;
import com.github.chrisbanes.photoview.PhotoView;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.Tool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import org.light.utils.FileUtils;
import s0.k;
/* loaded from: classes3.dex */
public class ImageDetailFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private String f16025a;

    /* renamed from: b  reason: collision with root package name */
    private PhotoView f16026b;

    /* renamed from: c  reason: collision with root package name */
    private FrameLayout f16027c;

    /* renamed from: d  reason: collision with root package name */
    private String f16028d;

    /* renamed from: e  reason: collision with root package name */
    private Uri f16029e;

    /* renamed from: f  reason: collision with root package name */
    private int f16030f;

    /* renamed from: g  reason: collision with root package name */
    private int f16031g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16032h = true;

    /* renamed from: i  reason: collision with root package name */
    private float f16033i;

    /* loaded from: classes3.dex */
    class a implements h1.f {
        a() {
        }

        @Override // h1.f
        public void onPhotoTap(ImageView imageView, float f10, float f11) {
            if (ImageDetailFragment.this.getActivity() != null) {
                ActivityCompat.finishAfterTransition(ImageDetailFragment.this.getActivity());
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnLongClickListener {
        b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ImageDetailFragment.this.f16032h) {
                ImageDetailFragment.this.e2();
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class c implements g<Drawable> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ImageDetailFragment.this.f16026b.c(ImageDetailFragment.this.f16033i, 0.0f, 0.0f, true);
            }
        }

        c() {
        }

        @Override // com.bumptech.glide.request.g
        public boolean b(@Nullable GlideException glideException, Object obj, k<Drawable> kVar, boolean z10) {
            return false;
        }

        @Override // com.bumptech.glide.request.g
        /* renamed from: c */
        public boolean a(Drawable drawable, Object obj, k<Drawable> kVar, DataSource dataSource, boolean z10) {
            if (ImageDetailFragment.this.getActivity() == null) {
                return true;
            }
            if (ImageDetailFragment.this.f16030f <= 0 || ImageDetailFragment.this.f16031g <= 0) {
                return false;
            }
            int i9 = ImageDetailFragment.this.f16030f;
            int i10 = ImageDetailFragment.this.f16031g;
            int statusbarHeight = ImageDetailFragment.this.getResources().getDisplayMetrics().heightPixels + StatusBarHelper.getStatusbarHeight(ImageDetailFragment.this.getActivity());
            float f10 = ImageDetailFragment.this.getResources().getDisplayMetrics().widthPixels * 1.0f;
            float f11 = statusbarHeight;
            float f12 = i9;
            float f13 = i10;
            if ((f12 * 1.0f) / f13 < f10 / f11 && statusbarHeight < i10) {
                float f14 = ((f13 * 1.0f) / f11) * (f10 / f12);
                float f15 = f14 * 1.5f;
                ImageDetailFragment.this.f16026b.e(f14, f15, 1.5f * f15);
                ImageDetailFragment.this.f16026b.setScale(f14);
                ImageDetailFragment.this.f16033i = f14;
            }
            ImageDetailFragment.this.f16026b.setImageDrawable(drawable);
            if (ImageDetailFragment.this.f16033i > 0.0f) {
                ImageDetailFragment.this.f16026b.postDelayed(new a(), 100L);
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    class d extends s0.c<Drawable> {
        d() {
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            ImageDetailFragment.this.f16026b.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: com.guochao.faceshow.ImageBrowse.ImageDetailFragment$f$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0146a implements Runnable {
                RunnableC0146a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    ToastUtils.showToast(ImageDetailFragment.this.getActivity(), ImageDetailFragment.this.getString(R.string.save_successful));
                }
            }

            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Bitmap b22 = ImageDetailFragment.b2(ImageDetailFragment.this.f16028d);
                ImageDetailFragment.this.getActivity().runOnUiThread(new RunnableC0146a());
                ImageDetailFragment.this.c2(b22);
            }
        }

        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Tool.dismissPopWindow();
            new Thread(new a()).start();
        }
    }

    public static ImageDetailFragment Z1(Uri uri) {
        ImageDetailFragment imageDetailFragment = new ImageDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(ShareConstants.MEDIA_URI, uri);
        imageDetailFragment.setArguments(bundle);
        return imageDetailFragment;
    }

    public static ImageDetailFragment a2(String str, int i9, int i10) {
        ImageDetailFragment imageDetailFragment = new ImageDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putString("url", str);
        bundle.putInt(Contants.PARAMS_KEY1, i9);
        bundle.putInt(Contants.PARAMS_KEY2, i10);
        imageDetailFragment.setArguments(bundle);
        return imageDetailFragment;
    }

    public static final Bitmap b2(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        } catch (MalformedURLException e10) {
            e10.printStackTrace();
            return null;
        } catch (IOException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        String str = System.currentTimeMillis() + FileUtils.PIC_POSTFIX_JPEG;
        File file = new File(FilePathProvider.getPhotoPath() + File.separator + str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        Context context = getContext();
        if (context == null) {
            context = BaseApplication.getInstance();
        }
        if (context == null) {
            return;
        }
        try {
            MediaStore.Images.Media.insertImage(context.getContentResolver(), file.getAbsolutePath(), str, (String) null);
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            context.sendBroadcast(intent);
        } catch (FileNotFoundException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        View inflate = View.inflate(getActivity(), R.layout.pop_bitmap_save, null);
        ((TextView) inflate.findViewById(R.id.cancel)).setOnClickListener(new e());
        ((TextView) inflate.findViewById(R.id.save_bitmap_video)).setOnClickListener(new f());
        Tool.creatPopWindowBottomAnim(inflate, this.f16027c, -1, -2);
    }

    public ImageView Y1() {
        return this.f16026b;
    }

    public void d2(boolean z10) {
        this.f16032h = z10;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        c cVar = new c();
        d dVar = new d();
        this.f16028d = "";
        if (this.f16029e != null) {
            ic.a.c(this.f16026b).n(this.f16029e).x0(cVar).M0(dVar);
            return;
        }
        if (this.f16025a == null) {
            this.f16025a = "";
        }
        if (!this.f16025a.startsWith("http") && !this.f16025a.startsWith("/storage")) {
            this.f16028d = Contants.IMAGE_HOST + this.f16025a;
        } else {
            this.f16028d = this.f16025a;
        }
        ic.a.c(this.f16026b).r(this.f16028d).x0(cVar).M0(dVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f16029e = (Uri) getArguments().getParcelable(ShareConstants.MEDIA_URI);
            this.f16025a = getArguments().getString("url");
            this.f16030f = getArguments().getInt(Contants.PARAMS_KEY1);
            this.f16031g = getArguments().getInt(Contants.PARAMS_KEY2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_fragment, viewGroup, false);
        this.f16026b = (PhotoView) inflate.findViewById(R.id.image);
        this.f16027c = (FrameLayout) inflate.findViewById(R.id.main_layout);
        this.f16026b.setOnPhotoTapListener(new a());
        this.f16026b.setOnLongClickListener(new b());
        return inflate;
    }
}
