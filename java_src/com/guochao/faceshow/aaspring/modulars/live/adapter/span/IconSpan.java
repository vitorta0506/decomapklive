package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Spanned;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.modulars.live.adapter.span.IconSpan;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001'B\u001f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J4\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016JR\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u0016\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR$\u0010 \u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020\u00158\u0002@BX\u0082\u000e¢\u0006\f\n\u0004\b \u0010\u0017\"\u0004\b!\u0010\"¨\u0006("}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;", "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;", "Landroid/graphics/Paint;", "paint", "", ViewHierarchyConstants.TEXT_KEY, "", "start", "end", "Landroid/graphics/Paint$FontMetricsInt;", "fontMetricsInt", "getSize", "Landroid/graphics/Canvas;", "canvas", "", x.f19108w, "top", "y", "bottom", "", "draw", "Landroid/graphics/drawable/Drawable;", "defaultDrawable", "Landroid/graphics/drawable/Drawable;", "getDefaultDrawable", "()Landroid/graphics/drawable/Drawable;", "", "url", "Ljava/lang/String;", "size", "I", "value", RemoteMessageConst.Notification.ICON, "setIcon", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/widget/TextView;", "textView", "<init>", "(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V", "IconTarget", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class IconSpan extends f {
    @NotNull
    private final Drawable defaultDrawable;
    @NotNull
    private Drawable icon;
    private final int size;
    @NotNull
    private final String url;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\f\u0012\u0006\b\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\t\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016R\"\u0010\r\u001a\u0010\u0012\f\u0012\n \f*\u0004\u0018\u00010\u000b0\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan$IconTarget;", "Ls0/c;", "Landroid/graphics/drawable/Drawable;", "resource", "Lt0/f;", "transition", "", "onResourceReady", "placeholder", "onLoadCleared", "Ljava/lang/ref/WeakReference;", "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;", "kotlin.jvm.PlatformType", RemoteMessageConst.Notification.ICON, "Ljava/lang/ref/WeakReference;", "iconSpan", "<init>", "(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class IconTarget extends s0.c<Drawable> {
        @NotNull
        private final WeakReference<IconSpan> icon;

        public IconTarget(@NotNull IconSpan iconSpan) {
            Intrinsics.checkNotNullParameter(iconSpan, "iconSpan");
            this.icon = new WeakReference<>(iconSpan);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onResourceReady$lambda-0  reason: not valid java name */
        public static final void m454onResourceReady$lambda0(IconTarget this$0, Drawable resource) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(resource, "$resource");
            IconSpan iconSpan = this$0.icon.get();
            if (iconSpan == null) {
                return;
            }
            iconSpan.setIcon(resource);
        }

        @Override // s0.k
        public void onLoadCleared(@Nullable Drawable drawable) {
            IconSpan iconSpan;
            if (drawable == null || (iconSpan = this.icon.get()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(iconSpan, "get()");
            iconSpan.setIcon(drawable);
        }

        @Override // s0.k
        public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
            onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
        }

        public void onResourceReady(@NotNull final Drawable resource, @Nullable t0.f<? super Drawable> fVar) {
            Intrinsics.checkNotNullParameter(resource, "resource");
            HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.adapter.span.c
                @Override // java.lang.Runnable
                public final void run() {
                    IconSpan.IconTarget.m454onResourceReady$lambda0(IconSpan.IconTarget.this, resource);
                }
            }, null, 2, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IconSpan(@NotNull Drawable defaultDrawable, @NotNull String url, @NotNull TextView textView) {
        super(defaultDrawable);
        Intrinsics.checkNotNullParameter(defaultDrawable, "defaultDrawable");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(textView, "textView");
        this.defaultDrawable = defaultDrawable;
        this.url = url;
        int dp2px = DensityUtil.dp2px(15.0f);
        this.size = dp2px;
        this.icon = defaultDrawable;
        super.getDrawable().setBounds(0, 0, dp2px, dp2px);
        this.mTextViewWeakReference = new WeakReference<>(textView);
        defaultDrawable.setBounds(0, 0, dp2px, dp2px);
        com.bumptech.glide.c.u(BaseApplication.getInstance()).r(url).a0(dp2px, dp2px).M0(new IconTarget(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setIcon(Drawable drawable) {
        this.icon = drawable;
        int i9 = this.size;
        drawable.setBounds(0, 0, i9, i9);
        WeakReference<TextView> weakReference = this.mTextViewWeakReference;
        TextView textView = weakReference != null ? weakReference.get() : null;
        if (textView != null) {
            CharSequence text = textView.getText();
            if (text instanceof Spanned) {
                IconSpan[] avatarSpans = (IconSpan[]) ((Spanned) text).getSpans(0, text.length(), IconSpan.class);
                Intrinsics.checkNotNullExpressionValue(avatarSpans, "avatarSpans");
                for (IconSpan iconSpan : avatarSpans) {
                    if (iconSpan == this) {
                        textView.invalidate();
                        return;
                    }
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.a, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(@NotNull Canvas canvas, @Nullable CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Drawable drawable = this.icon;
        canvas.save();
        canvas.translate(f10, (((i13 - i11) - drawable.getBounds().bottom) / 2) + i11);
        drawable.draw(canvas);
        canvas.restore();
    }

    @NotNull
    public final Drawable getDefaultDrawable() {
        return this.defaultDrawable;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.adapter.a, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(@NotNull Paint paint, @Nullable CharSequence charSequence, int i9, int i10, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            int i11 = fontMetricsInt2.bottom - fontMetricsInt2.top;
            int i12 = this.size / 2;
            int i13 = i11 / 4;
            int i14 = i12 - i13;
            int i15 = -(i12 + i13);
            fontMetricsInt.ascent = i15;
            fontMetricsInt.top = i15;
            fontMetricsInt.bottom = i14;
            fontMetricsInt.descent = i14;
        }
        return this.size;
    }
}
