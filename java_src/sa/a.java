package sa;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.manager.a;
import com.guochao.faceshow.aaspring.modulars.gift.view.HandyAnimView;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView;
import com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.tencent.qgame.animplayer.AnimView;
import java.io.File;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: l  reason: collision with root package name */
    private static final String f57726l = "a";

    /* renamed from: a  reason: collision with root package name */
    private SVGAImageView f57727a;

    /* renamed from: b  reason: collision with root package name */
    private SVGAImageView f57728b;

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<i> f57729c;

    /* renamed from: g  reason: collision with root package name */
    private ViewGroup f57733g;

    /* renamed from: h  reason: collision with root package name */
    private ViewGroup f57734h;

    /* renamed from: i  reason: collision with root package name */
    private HandyAnimView f57735i;

    /* renamed from: k  reason: collision with root package name */
    private j f57737k;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57730d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57731e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f57732f = false;

    /* renamed from: j  reason: collision with root package name */
    private h f57736j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: sa.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0638a implements SVGACallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f57738a;

        C0638a(SVGAImageView sVGAImageView) {
            this.f57738a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            SVGAVideoEntity mVideoItem = this.f57738a.getMVideoItem();
            if (mVideoItem != null) {
                mVideoItem.release();
            }
            this.f57738a.clearAnimation();
            a.this.f57730d = false;
            a.this.o();
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onPause() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onRepeat() {
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onStep(int i9, double d10) {
        }
    }

    /* loaded from: classes3.dex */
    class b extends h {
        b() {
            super();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i9;
            if ((a.this.f57729c == null || a.this.f57729c.isEmpty() || !GiftLiveMessage.isFaceGift(((i) a.this.f57729c.get(0)).f57757f)) && a.this.f57737k != null && b() != null) {
                try {
                    i9 = Integer.parseInt(b().f57753b);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    i9 = 0;
                }
                a.this.f57737k.a(i9);
            }
            a.this.f57731e = false;
            a.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements LiveMusicActivityView.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f57741a;

        c(SVGAImageView sVGAImageView) {
            this.f57741a = sVGAImageView;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveMusicActivityView.e
        public void a(SVGAVideoEntity sVGAVideoEntity) {
            if (sVGAVideoEntity != null) {
                SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, this.f57741a);
                this.f57741a.setVideoItem(sVGAVideoEntity);
                return;
            }
            a.this.f57730d = false;
            a.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends a.j<File> {
        d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends a.j<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f57744a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: sa.a$e$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0639a extends VaPlayerUtils.IAnimListenerImp {
            C0639a(AnimView animView) {
                super(animView);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.vap.VaPlayerUtils.IAnimListenerImp
            public void onVideoComplete(@Nullable AnimView animView) {
                if (animView != null) {
                    e.this.f57744a.removeView(animView);
                }
                a.this.f57730d = false;
                a.this.o();
            }
        }

        e(ViewGroup viewGroup) {
            this.f57744a = viewGroup;
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        public void b(int i9, String str, ResourceCategoryItem resourceCategoryItem, ResourceListItemBean resourceListItemBean) {
            super.b(i9, str, resourceCategoryItem, resourceListItemBean);
            a.this.f57730d = false;
            a.this.o();
        }

        @Override // com.guochao.faceshow.aaspring.manager.a.j, com.guochao.faceshow.aaspring.manager.a.k
        /* renamed from: d */
        public void c(@NotNull ResourceCategoryItem resourceCategoryItem, @NotNull ResourceListItemBean resourceListItemBean, @Nullable File file) {
            super.c(resourceCategoryItem, resourceListItemBean, file);
            if (file != null && file.getPath().endsWith("mp4")) {
                AnimView animView = new AnimView(this.f57744a.getContext());
                this.f57744a.addView(animView);
                if (this.f57744a == a.this.f57733g) {
                    animView.setTag("bigLiveGift");
                }
                animView.setLoop(1);
                VaPlayerUtils.startPlay(animView, file, new C0639a(animView));
                return;
            }
            a.this.f57730d = false;
            a.this.o();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends s0.c<Drawable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftLiveMessage f57747a;

        f(GiftLiveMessage giftLiveMessage) {
            this.f57747a = giftLiveMessage;
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
            a.this.n(drawable, this.f57747a);
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
            a.this.n(drawable, this.f57747a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Function1<HandyAnimView, Unit> {
        g() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(HandyAnimView handyAnimView) {
            a.this.f57730d = false;
            a.this.o();
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    public abstract class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private i f57750a;

        public h() {
        }

        public i b() {
            return this.f57750a;
        }

        public void c(i iVar) {
            this.f57750a = iVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class i {

        /* renamed from: a  reason: collision with root package name */
        public GiftLiveMessage f57752a;

        /* renamed from: b  reason: collision with root package name */
        String f57753b;

        /* renamed from: c  reason: collision with root package name */
        String f57754c;

        /* renamed from: d  reason: collision with root package name */
        String f57755d;

        /* renamed from: e  reason: collision with root package name */
        int f57756e;

        /* renamed from: f  reason: collision with root package name */
        ResourceListItemBean f57757f;

        /* renamed from: g  reason: collision with root package name */
        String f57758g;

        /* renamed from: h  reason: collision with root package name */
        boolean f57759h;

        i() {
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a(int i9);

        void b(ResourceListItemBean resourceListItemBean, String str);
    }

    public a(Context context, SVGAImageView sVGAImageView, SVGAImageView sVGAImageView2, ViewGroup viewGroup, ViewGroup viewGroup2) {
        j(context, sVGAImageView, sVGAImageView2, viewGroup, viewGroup2);
    }

    private void i(SVGAImageView sVGAImageView) {
        if (sVGAImageView == null) {
            return;
        }
        sVGAImageView.setLoops(1);
        sVGAImageView.setCallback(new C0638a(sVGAImageView));
        this.f57730d = false;
    }

    private void l(SVGAImageView sVGAImageView, ViewGroup viewGroup, int i9, int i10, int i11, i iVar) {
        if (sVGAImageView == null) {
            return;
        }
        if (i9 == 2147483646) {
            this.f57730d = true;
            LiveMusicActivityView.q(new c(sVGAImageView), i11);
        } else if (!com.guochao.faceshow.aaspring.manager.a.g().q(1, i10, i9)) {
            this.f57730d = false;
            com.guochao.faceshow.aaspring.manager.a.g().i(1, i10, i9, new d());
            o();
        } else {
            this.f57730d = true;
            com.guochao.faceshow.aaspring.manager.a.g().i(1, i10, i9, new e(viewGroup));
        }
    }

    private void m(ResourceListItemBean resourceListItemBean, GiftLiveMessage giftLiveMessage) {
        this.f57730d = true;
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(giftLiveMessage.giftImg).M0(new f(giftLiveMessage));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Drawable drawable, GiftLiveMessage giftLiveMessage) {
        this.f57735i.setCurrentDrawable(drawable);
        this.f57735i.playPoints(giftLiveMessage.getPointPaths(), giftLiveMessage.getDrawWidth(), giftLiveMessage.getDrawHeight(), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void o() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: sa.a.o():void");
    }

    private void p(String str) {
        Log.e(f57726l, str);
    }

    public ArrayList<i> h() {
        return this.f57729c;
    }

    public void j(Context context, SVGAImageView sVGAImageView, SVGAImageView sVGAImageView2, ViewGroup viewGroup, ViewGroup viewGroup2) {
        if (context == null) {
            p("context == null,请检查你的代码逻辑..");
        } else if (sVGAImageView == null && sVGAImageView2 == null) {
            p("bigSvgaImageView && middleSvgaImageView 都是null,请检查你的代码逻辑..");
        } else {
            this.f57729c = new ArrayList<>();
            this.f57727a = sVGAImageView;
            this.f57728b = sVGAImageView2;
            this.f57733g = viewGroup;
            this.f57734h = viewGroup2;
            this.f57732f = false;
            i(sVGAImageView);
            i(this.f57728b);
        }
    }

    public boolean k() {
        return this.f57731e;
    }

    public void q() {
        this.f57732f = false;
    }

    public void r() {
        this.f57730d = false;
        this.f57731e = false;
    }

    public void s() {
        this.f57732f = true;
        this.f57730d = false;
        this.f57731e = false;
        ArrayList<i> arrayList = this.f57729c;
        if (arrayList != null) {
            arrayList.clear();
        }
        ViewGroup viewGroup = this.f57733g;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        ViewGroup viewGroup2 = this.f57734h;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
        }
        SVGAImageView sVGAImageView = this.f57727a;
        if (sVGAImageView != null) {
            sVGAImageView.stopAnimation(true);
            this.f57727a.clearAnimation();
        }
        SVGAImageView sVGAImageView2 = this.f57728b;
        if (sVGAImageView2 != null) {
            sVGAImageView2.stopAnimation(true);
            this.f57728b.clearAnimation();
        }
        if (this.f57736j != null) {
            HandlerGetter.getMainHandler().removeCallbacks(this.f57736j);
        }
        HandyAnimView handyAnimView = this.f57735i;
        if (handyAnimView != null) {
            handyAnimView.clearPoints();
        }
    }

    public void t(HandyAnimView handyAnimView) {
        this.f57735i = handyAnimView;
        handyAnimView.setAnimationOnlyMode(true);
        this.f57735i.setPlayPointsListener(new g());
    }

    public void u(j jVar) {
        this.f57737k = jVar;
    }

    public void v(String str, String str2, String str3, int i9, ResourceListItemBean resourceListItemBean, String str4, @Nullable GiftLiveMessage giftLiveMessage) {
        if (this.f57727a == null && this.f57728b == null) {
            return;
        }
        i iVar = new i();
        iVar.f57753b = str;
        iVar.f57754c = str2;
        iVar.f57755d = str3;
        iVar.f57756e = i9;
        iVar.f57757f = resourceListItemBean;
        iVar.f57758g = str4;
        iVar.f57752a = giftLiveMessage;
        if (giftLiveMessage != null) {
            iVar.f57759h = giftLiveMessage.isSelfSend();
        }
        if (i9 > 0) {
            this.f57729c.add(0, iVar);
        } else {
            this.f57729c.add(iVar);
        }
        if (this.f57730d) {
            return;
        }
        o();
    }
}
