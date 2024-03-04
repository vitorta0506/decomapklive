package ib;

import android.widget.ImageView;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.opensource.svgaplayer.SVGACallback;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ib.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0456a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SvgaImageViewV2 f41000a;

        RunnableC0456a(SvgaImageViewV2 svgaImageViewV2) {
            this.f41000a = svgaImageViewV2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f41000a.clearPlay();
            this.f41000a.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements SVGACallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f41001a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f41002b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f41003c;

        b(SVGAImageView sVGAImageView, int i9, ImageView imageView) {
            this.f41001a = sVGAImageView;
            this.f41002b = i9;
            this.f41003c = imageView;
        }

        @Override // com.opensource.svgaplayer.SVGACallback
        public void onFinished() {
            this.f41001a.setVideoItem(null);
            this.f41001a.setImageResource(this.f41002b);
            this.f41003c.setImageResource(this.f41002b);
            this.f41001a.setVisibility(8);
            this.f41003c.setVisibility(0);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements SVGAParser.ParseCompletion {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SVGAImageView f41004a;

        c(SVGAImageView sVGAImageView) {
            this.f41004a = sVGAImageView;
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            this.f41004a.setVideoItem(sVGAVideoEntity);
            this.f41004a.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    public static void a(ImageView imageView, SvgaImageViewV2 svgaImageViewV2, int i9) {
        imageView.setVisibility(8);
        svgaImageViewV2.setVisibility(0);
        svgaImageViewV2.playRaw(i9);
        imageView.postDelayed(new RunnableC0456a(svgaImageViewV2), ib.b.f41005a);
    }

    public static void b(ImageView imageView, SVGAImageView sVGAImageView, int i9, int i10) {
        imageView.setVisibility(8);
        sVGAImageView.setClearsAfterStop(false);
        sVGAImageView.setVisibility(0);
        sVGAImageView.setLoops(1);
        sVGAImageView.setCallback(new b(sVGAImageView, i10, imageView));
        SvgaImageViewUtils.getParser().decodeFromInputStream(imageView.getResources().openRawResource(i9), "play_focus", new c(sVGAImageView), true);
    }
}
