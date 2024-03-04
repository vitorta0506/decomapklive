package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class ExpandableImageTextView extends FaceCastTextViewBridge {

    /* renamed from: a  reason: collision with root package name */
    private int f23641a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23642b;

    /* renamed from: c  reason: collision with root package name */
    private int f23643c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f23644d;

    /* renamed from: e  reason: collision with root package name */
    private c f23645e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23646f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23647a;

        a(String str) {
            this.f23647a = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            if (ExpandableImageTextView.this.f23645e != null) {
                ExpandableImageTextView.this.f23645e.c(this.f23647a.substring(1).replaceAll(String.valueOf((char) StringUtils.INVISIBLE_CHAR), ""));
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(textPaint.getColor());
            textPaint.setUnderlineText(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f23649a;

        b(String str) {
            this.f23649a = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            if (ExpandableImageTextView.this.f23645e != null) {
                ExpandableImageTextView.this.f23645e.b(this.f23649a.substring(1).replaceAll(String.valueOf((char) StringUtils.INVISIBLE_CHAR), ""));
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setColor(textPaint.getColor());
            textPaint.setUnderlineText(false);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();

        void b(String str);

        void c(String str);
    }

    public ExpandableImageTextView(Context context) {
        super(context);
        this.f23643c = R.mipmap.icon_expand_more;
        this.f23646f = true;
        init(context, null);
    }

    private int c(int i9, String[] strArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            i10 = i10 + strArr[i11].length() + 1;
            if (i9 == i11) {
                return i10;
            }
        }
        return i10;
    }

    private void e(SpannableStringBuilder spannableStringBuilder) {
        String[] split = spannableStringBuilder.toString().split("@|#| ");
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < split.length; i9++) {
            String str = split[i9];
            if (str.endsWith(String.valueOf((char) StringUtils.INVISIBLE_CHAR))) {
                int c10 = c(i9, split) - 1;
                if (c10 > spannableStringBuilder.length() - 1) {
                    c10 = spannableStringBuilder.length() - 1;
                }
                char charAt = spannableStringBuilder.charAt(c10);
                sb2.append(str);
                sb2.append(charAt);
                if (i9 >= split.length - 1) {
                    str = sb2.toString();
                    sb2.setLength(0);
                }
            } else if (!TextUtils.isEmpty(sb2)) {
                sb2.append(str);
                str = sb2.toString();
                sb2.setLength(0);
            }
            if (!TextUtils.isEmpty(str.trim())) {
                int indexOf = spannableStringBuilder.toString().indexOf(str);
                if (indexOf > 0) {
                    indexOf--;
                    str = spannableStringBuilder.charAt(indexOf) + str;
                }
                if (str.startsWith("#")) {
                    spannableStringBuilder.setSpan(new a(str), indexOf, str.length() + indexOf, 17);
                } else if (str.startsWith("@")) {
                    spannableStringBuilder.setSpan(new b(str), indexOf, str.length() + indexOf, 17);
                }
                while (indexOf != -1) {
                    indexOf = spannableStringBuilder.toString().indexOf(str, indexOf + 1);
                }
            }
        }
        setMovementMethod(TopicAndAtTextHelper.CustomMovementMethod.getInstance());
    }

    private CharSequence f(Layout layout, CharSequence charSequence) {
        int i9;
        if (charSequence == null) {
            return "";
        }
        int lineEnd = layout.getLineEnd(this.f23641a - 1);
        if (charSequence.length() > lineEnd) {
            try {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                int minimumWidth = getResources().getDrawable(this.f23643c).getMinimumWidth();
                if (minimumWidth <= 0) {
                    minimumWidth = DensityUtil.dp2px(13.5f);
                }
                int i10 = 0;
                while (true) {
                    i9 = lineEnd - i10;
                    if (TextViewUtils.calTextWidth(this, charSequence.subSequence(i9, lineEnd).toString()) >= TextViewUtils.calTextWidth(this, "...") + minimumWidth + DensityUtil.dp2px(20.0f)) {
                        break;
                    }
                    i10++;
                }
                spannableStringBuilder.append(charSequence.subSequence(0, i9)).append((CharSequence) "...");
                c cVar = this.f23645e;
                if (cVar != null) {
                    cVar.a();
                }
                return spannableStringBuilder;
            } catch (Exception unused) {
            }
        }
        return charSequence;
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandableImageTextView);
        this.f23641a = obtainStyledAttributes.getInt(0, 3);
        this.f23643c = obtainStyledAttributes.getResourceId(1, this.f23643c);
        obtainStyledAttributes.recycle();
    }

    public void b(boolean z10) {
        this.f23646f = z10;
    }

    public boolean d() {
        return this.f23646f;
    }

    public CharSequence getFullText() {
        return TextUtils.isEmpty(this.f23644d) ? getText() : this.f23644d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i9, int i10) {
        int lineCount;
        super.onMeasure(i9, i10);
        Layout layout = getLayout();
        if (layout == null || (lineCount = layout.getLineCount()) < this.f23641a || this.f23642b) {
            return;
        }
        this.f23642b = true;
        CharSequence f10 = f(layout, getText());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(f10);
        e(spannableStringBuilder);
        super.setText(spannableStringBuilder);
        setMeasuredDimension(getMeasuredWidth(), (getMeasuredHeight() / lineCount) * this.f23641a);
    }

    public void setMeasureText(CharSequence charSequence) {
        this.f23642b = false;
        this.f23644d = charSequence;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(charSequence);
        e(spannableStringBuilder);
        setText(spannableStringBuilder, TextView.BufferType.NORMAL);
    }

    public void setOnShowExpand(c cVar) {
        this.f23645e = cVar;
    }

    public void setRealText(CharSequence charSequence) {
        this.f23644d = charSequence;
        this.f23642b = true;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(charSequence);
        e(spannableStringBuilder);
        setText(spannableStringBuilder, TextView.BufferType.NORMAL);
    }

    public ExpandableImageTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23643c = R.mipmap.icon_expand_more;
        this.f23646f = true;
        init(context, attributeSet);
    }

    public ExpandableImageTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23643c = R.mipmap.icon_expand_more;
        this.f23646f = true;
        init(context, attributeSet);
    }
}
