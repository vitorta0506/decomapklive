package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Handler;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0005J\u0014\u0010>\u001a\u00020=2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00050@JF\u0010A\u001a\u00020=26\u0010B\u001a2\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r2\u0006\u0010C\u001a\u00020\u0005Jp\u0010D\u001a\u00020=2`\u0010B\u001a\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010F\u001a\u00020%2\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010G\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020)2\u0006\u0010C\u001a\u00020\u0005J\u001e\u0010H\u001a\u00020=2\u0006\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u0002002\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u0005R6\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0096\u0001\u0010\f\u001a~\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r0\u0004j>\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u00140\r`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u000bRë\u0001\u0010\u0017\u001aÒ\u0001\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u00180\u0004jh\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00140\u0018`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\t\"\u0004\b\u001c\u0010\u000bR6\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000bR6\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\t\"\u0004\b#\u0010\u000bR6\u0010$\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\t\"\u0004\b'\u0010\u000bR6\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\t\"\u0004\b+\u0010\u000bR6\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010\t\"\u0004\b.\u0010\u000bR6\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002000\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000200`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\t\"\u0004\b2\u0010\u000bR\u001a\u00103\u001a\u00020\u0014X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R6\u00108\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002090\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000209`\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\t\"\u0004\b;\u0010\u000b¨\u0006N"}, d2 = {"Lcom/opensource/svgaplayer/SVGADynamicEntity;", "", "()V", "dynamicBoringLayoutText", "Ljava/util/HashMap;", "", "Landroid/text/BoringLayout;", "Lkotlin/collections/HashMap;", "getDynamicBoringLayoutText$com_opensource_svgaplayer", "()Ljava/util/HashMap;", "setDynamicBoringLayoutText$com_opensource_svgaplayer", "(Ljava/util/HashMap;)V", "dynamicDrawer", "Lkotlin/Function2;", "Landroid/graphics/Canvas;", "Lkotlin/ParameterName;", "name", "canvas", "", "frameIndex", "", "getDynamicDrawer$com_opensource_svgaplayer", "setDynamicDrawer$com_opensource_svgaplayer", "dynamicDrawerSized", "Lkotlin/Function4;", "width", "height", "getDynamicDrawerSized$com_opensource_svgaplayer", "setDynamicDrawerSized$com_opensource_svgaplayer", "dynamicHidden", "getDynamicHidden$com_opensource_svgaplayer", "setDynamicHidden$com_opensource_svgaplayer", "dynamicIClickArea", "Lcom/opensource/svgaplayer/IClickAreaListener;", "getDynamicIClickArea$com_opensource_svgaplayer", "setDynamicIClickArea$com_opensource_svgaplayer", "dynamicImage", "Landroid/graphics/Bitmap;", "getDynamicImage$com_opensource_svgaplayer", "setDynamicImage$com_opensource_svgaplayer", "dynamicStaticLayoutText", "Landroid/text/StaticLayout;", "getDynamicStaticLayoutText$com_opensource_svgaplayer", "setDynamicStaticLayoutText$com_opensource_svgaplayer", "dynamicText", "getDynamicText$com_opensource_svgaplayer", "setDynamicText$com_opensource_svgaplayer", "dynamicTextPaint", "Landroid/text/TextPaint;", "getDynamicTextPaint$com_opensource_svgaplayer", "setDynamicTextPaint$com_opensource_svgaplayer", "isTextDirty", "isTextDirty$com_opensource_svgaplayer", "()Z", "setTextDirty$com_opensource_svgaplayer", "(Z)V", "mClickMap", "", "getMClickMap$com_opensource_svgaplayer", "setMClickMap$com_opensource_svgaplayer", "clearDynamicObjects", "", "setClickArea", "clickKey", "", "setDynamicDrawer", "drawer", "forKey", "setDynamicDrawerSized", "setDynamicImage", "bitmap", "url", "setDynamicText", "layoutText", ViewHierarchyConstants.TEXT_KEY, "textPaint", "setHidden", "value", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGADynamicEntity {
    private boolean isTextDirty;
    @NotNull
    private HashMap<String, Boolean> dynamicHidden = new HashMap<>();
    @NotNull
    private HashMap<String, Bitmap> dynamicImage = new HashMap<>();
    @NotNull
    private HashMap<String, String> dynamicText = new HashMap<>();
    @NotNull
    private HashMap<String, TextPaint> dynamicTextPaint = new HashMap<>();
    @NotNull
    private HashMap<String, StaticLayout> dynamicStaticLayoutText = new HashMap<>();
    @NotNull
    private HashMap<String, BoringLayout> dynamicBoringLayoutText = new HashMap<>();
    @NotNull
    private HashMap<String, Function2<Canvas, Integer, Boolean>> dynamicDrawer = new HashMap<>();
    @NotNull
    private HashMap<String, int[]> mClickMap = new HashMap<>();
    @NotNull
    private HashMap<String, IClickAreaListener> dynamicIClickArea = new HashMap<>();
    @NotNull
    private HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> dynamicDrawerSized = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDynamicImage$lambda-4  reason: not valid java name */
    public static final void m814setDynamicImage$lambda4(String url, Handler handler, final SVGADynamicEntity this$0, final String forKey) {
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(forKey, "$forKey");
        URLConnection openConnection = new URL(url).openConnection();
        HttpURLConnection httpURLConnection = openConnection instanceof HttpURLConnection ? (HttpURLConnection) openConnection : null;
        if (httpURLConnection == null) {
            return;
        }
        try {
            try {
                httpURLConnection.setConnectTimeout(20000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    final Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                    if (decodeStream != null) {
                        handler.post(new Runnable() { // from class: com.opensource.svgaplayer.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                SVGADynamicEntity.m815setDynamicImage$lambda4$lambda3$lambda2$lambda1$lambda0(SVGADynamicEntity.this, decodeStream, forKey);
                            }
                        });
                    }
                    CloseableKt.closeFinally(inputStream, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(inputStream, th2);
                        throw th3;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused) {
            }
        } catch (Throwable th4) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable unused2) {
            }
            throw th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setDynamicImage$lambda-4$lambda-3$lambda-2$lambda-1$lambda-0  reason: not valid java name */
    public static final void m815setDynamicImage$lambda4$lambda3$lambda2$lambda1$lambda0(SVGADynamicEntity this$0, Bitmap it, String forKey) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        Intrinsics.checkNotNullParameter(forKey, "$forKey");
        this$0.setDynamicImage(it, forKey);
    }

    public final void clearDynamicObjects() {
        this.isTextDirty = true;
        this.dynamicHidden.clear();
        this.dynamicImage.clear();
        this.dynamicText.clear();
        this.dynamicTextPaint.clear();
        this.dynamicStaticLayoutText.clear();
        this.dynamicBoringLayoutText.clear();
        this.dynamicDrawer.clear();
        this.dynamicIClickArea.clear();
        this.mClickMap.clear();
        this.dynamicDrawerSized.clear();
    }

    @NotNull
    public final HashMap<String, BoringLayout> getDynamicBoringLayoutText$com_opensource_svgaplayer() {
        return this.dynamicBoringLayoutText;
    }

    @NotNull
    public final HashMap<String, Function2<Canvas, Integer, Boolean>> getDynamicDrawer$com_opensource_svgaplayer() {
        return this.dynamicDrawer;
    }

    @NotNull
    public final HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> getDynamicDrawerSized$com_opensource_svgaplayer() {
        return this.dynamicDrawerSized;
    }

    @NotNull
    public final HashMap<String, Boolean> getDynamicHidden$com_opensource_svgaplayer() {
        return this.dynamicHidden;
    }

    @NotNull
    public final HashMap<String, IClickAreaListener> getDynamicIClickArea$com_opensource_svgaplayer() {
        return this.dynamicIClickArea;
    }

    @NotNull
    public final HashMap<String, Bitmap> getDynamicImage$com_opensource_svgaplayer() {
        return this.dynamicImage;
    }

    @NotNull
    public final HashMap<String, StaticLayout> getDynamicStaticLayoutText$com_opensource_svgaplayer() {
        return this.dynamicStaticLayoutText;
    }

    @NotNull
    public final HashMap<String, String> getDynamicText$com_opensource_svgaplayer() {
        return this.dynamicText;
    }

    @NotNull
    public final HashMap<String, TextPaint> getDynamicTextPaint$com_opensource_svgaplayer() {
        return this.dynamicTextPaint;
    }

    @NotNull
    public final HashMap<String, int[]> getMClickMap$com_opensource_svgaplayer() {
        return this.mClickMap;
    }

    public final boolean isTextDirty$com_opensource_svgaplayer() {
        return this.isTextDirty;
    }

    public final void setClickArea(@NotNull List<String> clickKey) {
        Intrinsics.checkNotNullParameter(clickKey, "clickKey");
        for (String str : clickKey) {
            this.dynamicIClickArea.put(str, new IClickAreaListener() { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setClickArea$1
                @Override // com.opensource.svgaplayer.IClickAreaListener
                public void onResponseArea(@NotNull String key, int i9, int i10, int i11, int i12) {
                    Intrinsics.checkNotNullParameter(key, "key");
                    HashMap<String, int[]> mClickMap$com_opensource_svgaplayer = SVGADynamicEntity.this.getMClickMap$com_opensource_svgaplayer();
                    if (mClickMap$com_opensource_svgaplayer.get(key) == null) {
                        mClickMap$com_opensource_svgaplayer.put(key, new int[]{i9, i10, i11, i12});
                        return;
                    }
                    int[] iArr = mClickMap$com_opensource_svgaplayer.get(key);
                    if (iArr == null) {
                        return;
                    }
                    iArr[0] = i9;
                    iArr[1] = i10;
                    iArr[2] = i11;
                    iArr[3] = i12;
                }
            });
        }
    }

    public final void setDynamicBoringLayoutText$com_opensource_svgaplayer(@NotNull HashMap<String, BoringLayout> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicBoringLayoutText = hashMap;
    }

    public final void setDynamicDrawer(@NotNull Function2<? super Canvas, ? super Integer, Boolean> drawer, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(drawer, "drawer");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.dynamicDrawer.put(forKey, drawer);
    }

    public final void setDynamicDrawer$com_opensource_svgaplayer(@NotNull HashMap<String, Function2<Canvas, Integer, Boolean>> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicDrawer = hashMap;
    }

    public final void setDynamicDrawerSized(@NotNull Function4<? super Canvas, ? super Integer, ? super Integer, ? super Integer, Boolean> drawer, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(drawer, "drawer");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.dynamicDrawerSized.put(forKey, drawer);
    }

    public final void setDynamicDrawerSized$com_opensource_svgaplayer(@NotNull HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicDrawerSized = hashMap;
    }

    public final void setDynamicHidden$com_opensource_svgaplayer(@NotNull HashMap<String, Boolean> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicHidden = hashMap;
    }

    public final void setDynamicIClickArea$com_opensource_svgaplayer(@NotNull HashMap<String, IClickAreaListener> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicIClickArea = hashMap;
    }

    public final void setDynamicImage(@NotNull Bitmap bitmap, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.dynamicImage.put(forKey, bitmap);
    }

    public final void setDynamicImage$com_opensource_svgaplayer(@NotNull HashMap<String, Bitmap> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicImage = hashMap;
    }

    public final void setDynamicStaticLayoutText$com_opensource_svgaplayer(@NotNull HashMap<String, StaticLayout> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicStaticLayoutText = hashMap;
    }

    public final void setDynamicText(@NotNull String text, @NotNull TextPaint textPaint, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.isTextDirty = true;
        this.dynamicText.put(forKey, text);
        this.dynamicTextPaint.put(forKey, textPaint);
    }

    public final void setDynamicText$com_opensource_svgaplayer(@NotNull HashMap<String, String> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicText = hashMap;
    }

    public final void setDynamicTextPaint$com_opensource_svgaplayer(@NotNull HashMap<String, TextPaint> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.dynamicTextPaint = hashMap;
    }

    public final void setHidden(boolean z10, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.dynamicHidden.put(forKey, Boolean.valueOf(z10));
    }

    public final void setMClickMap$com_opensource_svgaplayer(@NotNull HashMap<String, int[]> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        this.mClickMap = hashMap;
    }

    public final void setTextDirty$com_opensource_svgaplayer(boolean z10) {
        this.isTextDirty = z10;
    }

    public final void setDynamicImage(@NotNull final String url, @NotNull final String forKey) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        final Handler handler = new Handler();
        SVGAParser.Companion.getThreadPoolExecutor$com_opensource_svgaplayer().execute(new Runnable() { // from class: com.opensource.svgaplayer.b
            @Override // java.lang.Runnable
            public final void run() {
                SVGADynamicEntity.m814setDynamicImage$lambda4(url, handler, this, forKey);
            }
        });
    }

    public final void setClickArea(@NotNull String clickKey) {
        Intrinsics.checkNotNullParameter(clickKey, "clickKey");
        this.dynamicIClickArea.put(clickKey, new IClickAreaListener() { // from class: com.opensource.svgaplayer.SVGADynamicEntity$setClickArea$2
            @Override // com.opensource.svgaplayer.IClickAreaListener
            public void onResponseArea(@NotNull String key, int i9, int i10, int i11, int i12) {
                Intrinsics.checkNotNullParameter(key, "key");
                HashMap<String, int[]> mClickMap$com_opensource_svgaplayer = SVGADynamicEntity.this.getMClickMap$com_opensource_svgaplayer();
                if (mClickMap$com_opensource_svgaplayer.get(key) == null) {
                    mClickMap$com_opensource_svgaplayer.put(key, new int[]{i9, i10, i11, i12});
                    return;
                }
                int[] iArr = mClickMap$com_opensource_svgaplayer.get(key);
                if (iArr == null) {
                    return;
                }
                iArr[0] = i9;
                iArr[1] = i10;
                iArr[2] = i11;
                iArr[3] = i12;
            }
        });
    }

    public final void setDynamicText(@NotNull StaticLayout layoutText, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(layoutText, "layoutText");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.isTextDirty = true;
        this.dynamicStaticLayoutText.put(forKey, layoutText);
    }

    public final void setDynamicText(@NotNull BoringLayout layoutText, @NotNull String forKey) {
        Intrinsics.checkNotNullParameter(layoutText, "layoutText");
        Intrinsics.checkNotNullParameter(forKey, "forKey");
        this.isTextDirty = true;
        if (BoringLayout.isBoring(layoutText.getText(), layoutText.getPaint()) == null) {
            return;
        }
        getDynamicBoringLayoutText$com_opensource_svgaplayer().put(forKey, layoutText);
    }
}
