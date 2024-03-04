package com.guochao.faceshow.guild.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.internal.view.SupportMenu;
import androidx.webkit.ProxyConfig;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.guild.R$styleable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/guild/view/RequiredTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "prefix", "", "prefixColor", "init", "", "setText", ViewHierarchyConstants.TEXT_KEY, "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RequiredTextView extends AppCompatTextView {
    @Nullable
    private String prefix;
    private int prefixColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequiredTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefix = ProxyConfig.MATCH_ALL_SCHEMES;
        this.prefixColor = SupportMenu.CATEGORY_MASK;
        init(context, attributeSet);
    }

    private final void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RequiredTextView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…yleable.RequiredTextView)");
        this.prefix = obtainStyledAttributes.getString(R$styleable.RequiredTextView_prefix);
        this.prefixColor = obtainStyledAttributes.getInteger(R$styleable.RequiredTextView_prefix_color, SupportMenu.CATEGORY_MASK);
        String string = obtainStyledAttributes.getString(R$styleable.RequiredTextView_android_text);
        if (TextUtils.isEmpty(this.prefix)) {
            this.prefix = ProxyConfig.MATCH_ALL_SCHEMES;
        }
        if (TextUtils.isEmpty(string)) {
            string = "";
        }
        obtainStyledAttributes.recycle();
        setText(string);
    }

    public final void setText(@Nullable String str) {
        SpannableString spannableString = new SpannableString(this.prefix + str);
        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(this.prefixColor);
        String str2 = this.prefix;
        Intrinsics.checkNotNull(str2);
        spannableString.setSpan(foregroundColorSpan, 0, str2.length(), 33);
        setText(spannableString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequiredTextView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefix = ProxyConfig.MATCH_ALL_SCHEMES;
        this.prefixColor = SupportMenu.CATEGORY_MASK;
        init(context, attributeSet);
    }
}
