package v9;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.webkit.internal.AssetHelper;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.ShareDialog;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.More;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.twitter.sdk.android.core.l;
import io.reactivex.k;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import vh.o;
/* loaded from: classes3.dex */
public class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends SimpleObserver<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f59059a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f59060b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f59061c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f59062d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f59063e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f59064f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f59065g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ u9.a f59066h;

        a(Activity activity, String str, String str2, String str3, String str4, String str5, int i9, u9.a aVar) {
            this.f59059a = activity;
            this.f59060b = str;
            this.f59061c = str2;
            this.f59062d = str3;
            this.f59063e = str4;
            this.f59064f = str5;
            this.f59065g = i9;
            this.f59066h = aVar;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(String str) {
            super.onNext((a) str);
            c.d(this.f59059a, this.f59060b, this.f59061c, this.f59062d, this.f59063e, this.f59064f, this.f59065g, this.f59066h, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements o<String, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f59067a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f59068b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f59069c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f59070d;

        b(Activity activity, String str, String str2, String str3) {
            this.f59067a = activity;
            this.f59068b = str;
            this.f59069c = str2;
            this.f59070d = str3;
        }

        @Override // vh.o
        /* renamed from: a */
        public String apply(String str) throws Exception {
            File file;
            try {
            } catch (ExecutionException unused) {
                file = com.bumptech.glide.c.t(this.f59067a).p(Integer.valueOf((int) R.mipmap.icon_head_default)).I0(Integer.MIN_VALUE, Integer.MIN_VALUE).get();
            }
            if (!this.f59067a.getString(R.string.live_game_share_title).equals(this.f59068b) && !this.f59067a.getString(R.string.invalite_describ).equals(this.f59069c)) {
                com.bumptech.glide.h t10 = com.bumptech.glide.c.t(this.f59067a);
                String str2 = this.f59070d;
                if (str2 == null) {
                    str2 = "";
                }
                file = t10.r(str2).b0(R.mipmap.icon_head_default).I0(Integer.MIN_VALUE, Integer.MIN_VALUE).get();
                return file.getPath();
            }
            file = com.bumptech.glide.c.t(this.f59067a).p(Integer.valueOf((int) R.mipmap.ic_launcher)).I0(128, 128).get();
            return file.getPath();
        }
    }

    public static void b(String str, String str2) {
        try {
            byte[] decode = Base64.decode(str, 0);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
            decodeByteArray.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
        } catch (IOException unused) {
        }
    }

    public static void c() {
        g.a().c();
        f.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Activity activity, String str, String str2, String str3, String str4, String str5, int i9, u9.a aVar, String str6) {
        if (SharePlatformBean.Wechat.NAME.equals(str)) {
            f.a(activity, i9, str5, str4, str2, str3, str6);
        } else if (SharePlatformBean.WechatMoments.NAME.equals(str)) {
            f.b(activity, i9, str5, str4, str2, str3, str6);
        } else if (SharePlatformBean.SinaWeibo.NAME.equals(str)) {
            g.a().b(activity, i9, str5, str4, str2, str3, str6);
        } else if (SharePlatformBean.Instagram.NAME.equals(str)) {
            v9.b.a(activity, new File(str6), str2);
        } else if (SharePlatformBean.FaceBook.NAME.equals(str)) {
            v9.a.a(activity, str5, str2, str3);
        } else if (l.class.getSimpleName().equals(str)) {
            e.b(activity, str5, str2, str3, str6);
        } else if (SharePlatformBean.SnapChat.NAME.equals(str)) {
            d.a(activity, str5, str2, str3, str6);
        } else if (SharePlatformBean.WhatsApp.NAME.equals(str)) {
            h.a(activity, new File(str6), str2);
        } else if (More.NAME.equals(str)) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setFlags(3);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("android.intent.extra.TEXT", String.format("%s\n%s", str2, str5));
            activity.startActivity(intent);
        }
    }

    public static void e(Activity activity, String str, String str2, String str3, String str4, int i9, String str5, u9.a aVar) {
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        d(activity, str, str2, TextUtils.isEmpty(str3) ? str : str3, str4, str5, i9, aVar, str4);
    }

    public static void f(Activity activity, String str, String str2, String str3, u9.a aVar) {
        if (SharePlatformBean.FaceBook.NAME.equals(str)) {
            new ShareDialog(activity).show(new ShareVideoContent.Builder().setVideo(new ShareVideo.Builder().setLocalUrl(Uri.parse(str3)).build()).build(), ShareDialog.Mode.AUTOMATIC);
        } else if (l.class.getSimpleName().equals(str)) {
            e.c(activity, str2, str3);
        } else if (SharePlatformBean.SnapChat.NAME.equals(str)) {
            d.b(activity, str2, str3);
        } else if (SharePlatformBean.Youtube.NAME.equals(str)) {
            i.d(activity, new File(str3), str2);
        } else if (SharePlatformBean.WhatsApp.NAME.equals(str)) {
            h.b(activity, new File(str3), str2);
        } else if (SharePlatformBean.Instagram.NAME.equals(str)) {
            v9.b.b(activity, str3, str2);
        }
    }

    public static void g(Activity activity, String str, String str2, String str3, String str4, String str5, int i9, u9.a aVar) {
        if (TextUtils.isEmpty(str5)) {
            return;
        }
        k.just(str4 == null ? "" : str4).map(new b(activity, str2, str3, str4)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new a(activity, str, str2, str3, str4, str5, i9, aVar));
    }
}
