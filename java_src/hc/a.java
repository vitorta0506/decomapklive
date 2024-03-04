package hc;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.g;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.l;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.FileUtil;
import com.guochao.faceshow.utils.Md5;
import com.guochao.faceshow.views.NormalCircleImageView;
import com.guochao.lib_core.R$mipmap;
import e0.h;
import io.reactivex.k;
import java.io.File;
import jc.d;
import jc.e;
import org.jetbrains.annotations.NotNull;
import t0.f;
import vh.o;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: hc.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0440a extends s0.c<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f40566a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f40567b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f40568c;

        C0440a(ImageView imageView, int i9, String str) {
            this.f40566a = imageView;
            this.f40567b = i9;
            this.f40568c = str;
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable @org.jetbrains.annotations.Nullable Drawable drawable) {
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull @NotNull Object obj, @Nullable @org.jetbrains.annotations.Nullable f fVar) {
            onResourceReady((File) obj, (f<? super File>) fVar);
        }

        public void onResourceReady(@NonNull @NotNull File file, @Nullable @org.jetbrains.annotations.Nullable f<? super File> fVar) {
            a.h(this.f40566a, file, this.f40567b);
            a.c(file, this.f40568c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends SimpleObserver<File> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(File file) {
            super.onNext(file);
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements o<File, File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f40569a;

        c(File file) {
            this.f40569a = file;
        }

        @Override // vh.o
        /* renamed from: a */
        public File apply(@NotNull File file) throws Exception {
            FileUtil.copyFile(file.getAbsolutePath(), this.f40569a.getAbsolutePath());
            return this.f40569a;
        }
    }

    public static void b(ImageView imageView, String str, int i9) {
        File x10 = x(str);
        if (x10.exists()) {
            h(imageView, x10, i9);
        } else {
            com.bumptech.glide.c.u(GCApplication.app()).d().Z0(str).M0(new C0440a(imageView, i9, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(File file, String str) {
        k.just(file).observeOn(sh.a.a()).subscribeOn(di.a.b()).map(new c(x(str))).subscribe(new b());
    }

    public static void d(ImageView imageView, String str) {
        h(imageView, str, R$mipmap.icon_head_default);
    }

    public static void e(ImageView imageView, String str, int i9) {
        h(imageView, str, R$mipmap.icon_head_default);
    }

    public static void f(ImageView imageView, String str, int i9, boolean z10) {
        h(imageView, str, R$mipmap.ic_default_mvp);
    }

    public static void g(ImageView imageView, Object obj) {
        m(imageView, obj, -1, null);
    }

    public static void h(ImageView imageView, Object obj, int i9) {
        m(imageView, obj, i9, null);
    }

    public static void i(ImageView imageView, Object obj, int i9, h hVar) {
        m(imageView, obj, i9, hVar);
    }

    public static void j(ImageView imageView, String str) {
        m(imageView, str, -1, null);
    }

    public static void k(ImageView imageView, String str, boolean z10) {
        n(imageView, str, -1, null, z10);
    }

    @Deprecated
    public static void l(String str, ImageView imageView, int i9, Context context) {
        h(imageView, str, i9);
    }

    private static void m(ImageView imageView, Object obj, int i9, h hVar) {
        n(imageView, obj, i9, hVar, true);
    }

    public static void n(ImageView imageView, Object obj, int i9, h hVar, boolean z10) {
        g<Drawable> q10;
        boolean z11;
        com.bumptech.glide.request.h hVar2;
        com.bumptech.glide.request.h hVar3;
        h dVar;
        Activity w6;
        if (imageView == null || imageView.getContext() == null) {
            return;
        }
        if ((imageView.getContext() instanceof Application) || !((w6 = w(imageView)) == null || w6.isDestroyed() || w6.isFinishing())) {
            com.bumptech.glide.request.h hVar4 = new com.bumptech.glide.request.h();
            com.bumptech.glide.h u10 = com.bumptech.glide.c.u(imageView.getContext());
            if (imageView instanceof NormalCircleImageView) {
                g<Drawable> h12 = u10.b().Y0(obj).h1(com.bumptech.glide.load.resource.bitmap.g.i());
                NormalCircleImageView normalCircleImageView = (NormalCircleImageView) imageView;
                normalCircleImageView.b(obj, i9);
                com.bumptech.glide.request.h e10 = hVar4.e();
                int borderWidth = normalCircleImageView.getBorderWidth();
                int borderColor = normalCircleImageView.getBorderColor();
                if (borderWidth == 0) {
                    dVar = new l();
                } else {
                    dVar = new d(borderWidth, borderColor, normalCircleImageView.a());
                }
                z11 = true;
                hVar = dVar;
                q10 = h12;
                hVar2 = e10;
            } else {
                q10 = u10.q(obj);
                q10.h1(m0.d.i());
                z11 = false;
                hVar2 = hVar4;
            }
            if (i9 != -1) {
                hVar2.l(i9);
                hVar2.b0(i9);
            }
            if (hVar == null) {
                hVar2.j();
                hVar3 = hVar2;
                if (z10) {
                    hVar3 = (com.bumptech.glide.request.h) hVar2.d();
                }
            } else if (z11) {
                hVar2.q0(hVar);
                hVar3 = hVar2;
            } else {
                hVar2.t0(hVar, new j());
                hVar3 = hVar2;
            }
            hVar3.h(com.bumptech.glide.load.engine.j.f4347a);
            q10.a(hVar3).Q0(imageView);
        }
    }

    public static void o(ImageView imageView, String str, int i9, int i10) {
        if (imageView == null || imageView.getContext() == null) {
            return;
        }
        m(imageView, str, -1, new jc.a(i9, i10));
    }

    public static void p(ImageView imageView, String str, int i9) {
        if (imageView == null || imageView.getContext() == null) {
            return;
        }
        m(imageView, str, i9, new gi.b());
    }

    @Deprecated
    public static void q(String str, ImageView imageView, int i9, Context context) {
        p(imageView, str, i9);
    }

    public static void r(ImageView imageView, Object obj, int i9, int i10) {
        if (imageView == null || imageView.getContext() == null) {
            return;
        }
        m(imageView, obj, i9, new e(imageView.getContext(), i10));
    }

    public static void s(ImageView imageView, String str, int i9) {
        r(imageView, str, -1, i9);
    }

    public static void t(ImageView imageView, String str, @DrawableRes int i9) {
        if (TextUtils.isEmpty(str)) {
            i(imageView, Integer.valueOf(i9), i9, new jc.a(25, 3));
        } else {
            i(imageView, str, -1, new jc.a(25, 3));
        }
    }

    public static void u(ImageView imageView, String str, boolean z10, @DrawableRes int i9) {
        h aVar;
        if (z10) {
            aVar = new jc.f(25, 3);
        } else {
            aVar = new jc.a(25, 3);
        }
        if (TextUtils.isEmpty(str)) {
            i(imageView, Integer.valueOf(i9), i9, aVar);
        } else {
            i(imageView, str, -1, aVar);
        }
    }

    public static void v(ImageView imageView, String str) {
        com.bumptech.glide.c.u(GCApplication.app()).r(str).q0(new jc.f(15, 2, Color.parseColor("#1A000000"))).b0(R$mipmap.live_loading_bj).a0(Integer.MIN_VALUE, Integer.MIN_VALUE).Q0(imageView);
    }

    private static Activity w(View view) {
        if (view != null) {
            for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
            return null;
        }
        return null;
    }

    private static File x(String str) {
        return new File(FilePathProvider.getCachePath("/banner_image/"), Md5.md5(str));
    }
}
