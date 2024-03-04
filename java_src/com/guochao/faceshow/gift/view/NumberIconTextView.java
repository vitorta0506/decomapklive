package com.guochao.faceshow.gift.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.collection.ArrayMap;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import com.guochao.faceshow.R;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0014\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\b0\nH\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\bJ\u0010\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/gift/view/NumberIconTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "currentNumber", "", "mapper", "Landroidx/collection/ArrayMap;", "", "numberToSpan", "", "number", "", "setNumber", "", "setSpanText", "str", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class NumberIconTextView extends AppCompatTextView {
    private int currentNumber;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NumberIconTextView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ NumberIconTextView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    private final ArrayMap<Character, Integer> mapper() {
        ArrayMap<Character, Integer> arrayMap = new ArrayMap<>();
        arrayMap.put('x', Integer.valueOf((int) R.mipmap.xx));
        arrayMap.put('1', Integer.valueOf((int) R.mipmap.f16054x1));
        arrayMap.put('2', Integer.valueOf((int) R.mipmap.f16055x2));
        arrayMap.put('3', Integer.valueOf((int) R.mipmap.f16056x3));
        arrayMap.put('4', Integer.valueOf((int) R.mipmap.f16057x4));
        arrayMap.put('5', Integer.valueOf((int) R.mipmap.f16058x5));
        arrayMap.put('6', Integer.valueOf((int) R.mipmap.f16059x6));
        arrayMap.put('7', Integer.valueOf((int) R.mipmap.f16060x7));
        arrayMap.put('8', Integer.valueOf((int) R.mipmap.f16061x8));
        arrayMap.put('9', Integer.valueOf((int) R.mipmap.f16062x9));
        arrayMap.put('0', Integer.valueOf((int) R.mipmap.f16053x0));
        return arrayMap;
    }

    private final CharSequence numberToSpan(String str) {
        int intValue;
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        ArrayMap<Character, Integer> mapper = mapper();
        int length = charArray.length;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            char c10 = charArray[i9];
            int i11 = i10 + 1;
            Integer num = mapper.get(Character.valueOf(c10)) == null ? -1 : mapper.get(Character.valueOf(c10));
            if (num != null && (intValue = num.intValue()) != -1) {
                Drawable drawable = getResources().getDrawable(intValue);
                drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
                spannableStringBuilder.setSpan(new ImageSpan(drawable, 2), i10, i11, 33);
            }
            i9++;
            i10 = i11;
        }
        return spannableStringBuilder;
    }

    public final void setNumber(int i9) {
        if (this.currentNumber == i9) {
            return;
        }
        this.currentNumber = i9;
        setText(numberToSpan(String.valueOf(i9)));
    }

    public final void setSpanText(@Nullable String str) {
        CharSequence numberToSpan = numberToSpan(' ' + str + ' ');
        if (getLayoutDirection() == 1) {
            numberToSpan = BidiFormatter.getInstance().unicodeWrap(numberToSpan, TextDirectionHeuristicsCompat.RTL);
        }
        setText(numberToSpan);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NumberIconTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.currentNumber = -1;
        if (isInEditMode()) {
            setNumber(100);
        }
    }
}
