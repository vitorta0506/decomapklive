package com.guochao.faceshow.aaspring.base.loading;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import com.guochao.faceshow.aaspring.base.utils.a;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.lib_base.R$color;
import com.guochao.lib_base.R$raw;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\b\u0010\b\u001a\u00020\u0003H\u0016R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;", "Landroidx/appcompat/app/AppCompatDialog;", "Lcom/guochao/faceshow/aaspring/base/utils/a;", "", "cancel", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "show", "Lcom/opensource/svgaplayer/SVGAImageView;", "svgaImageView", "Lcom/opensource/svgaplayer/SVGAImageView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "lib_base_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class LoadingDialog extends AppCompatDialog implements a {
    @NotNull
    private final SVGAImageView svgaImageView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadingDialog(@NotNull Context context) {
        super(context, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.svgaImageView = new SVGAImageView(context, null, 0, 6, null);
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.guochao.faceshow.aaspring.base.utils.a
    public void cancel() {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.svgaImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(this.svgaImageView);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setContentView(frameLayout);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
    }

    @Override // android.app.Dialog
    public void show() {
        SVGAParser parser = SvgaImageViewUtils.getParser();
        InputStream openRawResource = getContext().getResources().openRawResource(R$raw.loading_global);
        Intrinsics.checkNotNullExpressionValue(openRawResource, "context.resources.openRa…rce(R.raw.loading_global)");
        parser.decodeFromInputStream(openRawResource, "global_loading", new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.aaspring.base.loading.LoadingDialog$show$1
            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                SVGAImageView sVGAImageView;
                SVGAImageView sVGAImageView2;
                SVGAImageView sVGAImageView3;
                SVGAImageView sVGAImageView4;
                Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                double height = videoItem.getVideoSize().getHeight();
                double width = videoItem.getVideoSize().getWidth();
                sVGAImageView = LoadingDialog.this.svgaImageView;
                ViewGroup.LayoutParams layoutParams = sVGAImageView.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new FrameLayout.LayoutParams(-2, -2);
                }
                if (!BaseConfig.isChinese()) {
                    double d10 = 1.5f;
                    double d11 = 1.3f;
                    layoutParams.height = (int) ((height / d10) * d11);
                    layoutParams.width = (int) ((width / d10) * d11);
                } else {
                    double d12 = 1.5f;
                    layoutParams.height = (int) (height * d12);
                    layoutParams.width = (int) (width * d12);
                }
                sVGAImageView2 = LoadingDialog.this.svgaImageView;
                sVGAImageView2.setLayoutParams(layoutParams);
                sVGAImageView3 = LoadingDialog.this.svgaImageView;
                sVGAImageView3.setVideoItem(videoItem);
                sVGAImageView4 = LoadingDialog.this.svgaImageView;
                sVGAImageView4.startAnimation();
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        }, true);
        try {
            super.show();
            Window window = getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(R$color.transparent);
                window.setDimAmount(0.0f);
            }
        } catch (Exception unused) {
        }
    }
}
