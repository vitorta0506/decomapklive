package com.guochao.faceshow.views;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.faceshow.views.SvgaImageViewV2$c$2;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.io.File;
import java.io.InputStream;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0014J\b\u0010\u0018\u001a\u00020\u0016H\u0014J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fJ\b\u0010 \u001a\u00020\u0016H\u0002R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/views/SvgaImageViewV2;", "Lcom/opensource/svgaplayer/SVGAImageView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", com.huawei.hms.opendevice.c.f27627a, "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "getC", "()Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "c$delegate", "Lkotlin/Lazy;", "resizeScale", "", "getResizeScale", "()F", "setResizeScale", "(F)V", ShareConstants.MEDIA_URI, "Landroid/net/Uri;", "clearPlay", "", "onAttachedToWindow", "onDetachedFromWindow", "playAssets", TCConstants.VIDEO_RECORD_VIDEPATH, "", "playFile", "playRaw", "rawId", "", "startPlay", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SvgaImageViewV2 extends SVGAImageView {
    @NotNull
    private final Lazy c$delegate;
    private float resizeScale;
    @Nullable
    private Uri uri;

    public /* synthetic */ SvgaImageViewV2(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    private final SVGAParser.ParseCompletion getC() {
        return (SVGAParser.ParseCompletion) this.c$delegate.getValue();
    }

    private final void startPlay() {
        Uri uri;
        ContentResolver contentResolver;
        InputStream openInputStream;
        if (!isAttachedToWindow() || (uri = this.uri) == null || (contentResolver = getContext().getContentResolver()) == null || (openInputStream = contentResolver.openInputStream(uri)) == null) {
            return;
        }
        SVGAParser.Companion.shareParser().decodeFromInputStream(openInputStream, String.valueOf(this.uri), getC(), true);
    }

    public final void clearPlay() {
        this.uri = null;
        stopAnimation(true);
    }

    public final float getResizeScale() {
        return this.resizeScale;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.uri != null) {
            startPlay();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.opensource.svgaplayer.SVGAImageView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clear();
        setImageDrawable(null);
    }

    public final void playAssets(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.uri = Uri.parse("file:///android_asset/" + path);
        startPlay();
    }

    public final void playFile(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.uri = Uri.fromFile(new File(path));
        startPlay();
    }

    public final void playRaw(int i9) {
        this.uri = Uri.parse("android.resource://" + getContext().getPackageName() + IOUtils.DIR_SEPARATOR_UNIX + i9);
        startPlay();
    }

    public final void setResizeScale(float f10) {
        this.resizeScale = f10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SvgaImageViewV2(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4, null);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        setLoops(10000);
        this.resizeScale = 3.0f;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SvgaImageViewV2$c$2.AnonymousClass1>() { // from class: com.guochao.faceshow.views.SvgaImageViewV2$c$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.guochao.faceshow.views.SvgaImageViewV2$c$2$1] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final AnonymousClass1 invoke() {
                final SvgaImageViewV2 svgaImageViewV2 = SvgaImageViewV2.this;
                return new SVGAParser.ParseCompletion() { // from class: com.guochao.faceshow.views.SvgaImageViewV2$c$2.1
                    @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                    public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                        Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                        if (SvgaImageViewV2.this.isAttachedToWindow()) {
                            SvgaImageViewV2.this.setImageDrawable(new SVGADrawable(videoItem));
                            ViewGroup.LayoutParams layoutParams = SvgaImageViewV2.this.getLayoutParams();
                            int i9 = layoutParams.width;
                            int i10 = layoutParams.height;
                            if (i9 != i10 || i9 != -1) {
                                if (i9 == -1) {
                                    SvgaImageViewUtils.fitWidth(videoItem, SvgaImageViewV2.this);
                                } else if (i9 == i10 && i9 == -2) {
                                    SvgaImageViewV2 svgaImageViewV22 = SvgaImageViewV2.this;
                                    SvgaImageViewUtils.fitImageView(videoItem, svgaImageViewV22, svgaImageViewV22.getResizeScale());
                                }
                            }
                            SvgaImageViewV2.this.startAnimation();
                        }
                    }

                    @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
                    public void onError() {
                    }
                };
            }
        });
        this.c$delegate = lazy;
    }
}
