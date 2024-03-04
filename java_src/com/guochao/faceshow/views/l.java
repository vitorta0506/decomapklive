package com.guochao.faceshow.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
@Deprecated
/* loaded from: classes4.dex */
public class l implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f27017a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.guochao.faceshow.aaspring.base.utils.a> f27018b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private Context f27019c;

    /* renamed from: d  reason: collision with root package name */
    private SVGAImageView f27020d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements SVGAParser.ParseCompletion {
        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            if (l.this.f27017a != null && l.this.f27017a.isShowing()) {
                double height = sVGAVideoEntity.getVideoSize().getHeight();
                double width = sVGAVideoEntity.getVideoSize().getWidth();
                ViewGroup.LayoutParams layoutParams = l.this.f27020d.getLayoutParams();
                if (!BaseConfig.isChinese()) {
                    layoutParams.height = (int) ((height / 1.5d) * 1.2999999523162842d);
                    layoutParams.width = (int) ((width / 1.5d) * 1.2999999523162842d);
                } else {
                    layoutParams.height = (int) (height * 1.5d);
                    layoutParams.width = (int) (width * 1.5d);
                }
                l.this.f27020d.setLayoutParams(layoutParams);
                l.this.f27020d.setVideoItem(sVGAVideoEntity);
                l.this.f27020d.startAnimation();
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    public l() {
    }

    public void c(Context context, CharSequence charSequence) {
        if (this.f27017a == null && context != null) {
            this.f27019c = context;
            LayoutInflater from = LayoutInflater.from(context);
            FrameLayout frameLayout = new FrameLayout(context);
            View inflate = from.inflate(R.layout.layout_loading_progress, (ViewGroup) frameLayout, true);
            inflate.findViewById(R.id.layout_progress);
            this.f27020d = (SVGAImageView) inflate.findViewById(R.id.progress_img);
            SvgaImageViewUtils.getParser().decodeFromInputStream(context.getResources().openRawResource(R.raw.loading_global), "global_loading", new a(), true);
            Dialog dialog = new Dialog(context, R.style.loading_dialog);
            this.f27017a = dialog;
            dialog.setCancelable(true);
            this.f27017a.setContentView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
            this.f27017a.setOnCancelListener(this);
        }
    }

    public void d() {
        Dialog dialog;
        if (this.f27019c == null || (dialog = this.f27017a) == null) {
            return;
        }
        dialog.dismiss();
    }

    public boolean e() {
        Dialog dialog = this.f27017a;
        return dialog != null && dialog.isShowing();
    }

    public void f(boolean z10) {
        Dialog dialog = this.f27017a;
        if (dialog != null) {
            dialog.setCancelable(z10);
        }
    }

    public void g(boolean z10) {
        Dialog dialog = this.f27017a;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(z10);
        }
    }

    public void h(String str) {
    }

    public void i() {
        Dialog dialog;
        if (this.f27019c == null || (dialog = this.f27017a) == null) {
            return;
        }
        dialog.show();
        if (this.f27020d.getMVideoItem() != null && !this.f27020d.isAnimating()) {
            this.f27020d.startAnimation();
        }
        this.f27017a.getWindow().setBackgroundDrawableResource(R.color.transparent);
        this.f27017a.getWindow().setDimAmount(0.0f);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        for (com.guochao.faceshow.aaspring.base.utils.a aVar : this.f27018b) {
            aVar.cancel();
        }
    }

    public l(Context context, CharSequence charSequence) {
        this.f27019c = context;
        c(context, charSequence);
    }
}
