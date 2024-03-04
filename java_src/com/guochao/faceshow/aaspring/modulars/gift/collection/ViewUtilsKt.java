package com.guochao.faceshow.aaspring.modulars.gift.collection;

import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"setTextViewStyles", "", "Landroid/widget/TextView;", "app_GooglePlayRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewUtilsKt {
    public static final void setTextViewStyles(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, textView.getPaint().getTextSize(), Color.parseColor("#FFE130"), Color.parseColor("#FFB700"), Shader.TileMode.CLAMP));
        textView.invalidate();
    }
}
