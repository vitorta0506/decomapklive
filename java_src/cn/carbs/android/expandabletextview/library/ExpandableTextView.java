package cn.carbs.android.expandabletextview.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.reflect.Field;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class ExpandableTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    private String f1777a;

    /* renamed from: b  reason: collision with root package name */
    private String f1778b;

    /* renamed from: c  reason: collision with root package name */
    private String f1779c;

    /* renamed from: d  reason: collision with root package name */
    private String f1780d;

    /* renamed from: e  reason: collision with root package name */
    private String f1781e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1782f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1783g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1784h;

    /* renamed from: i  reason: collision with root package name */
    private int f1785i;

    /* renamed from: j  reason: collision with root package name */
    private int f1786j;

    /* renamed from: k  reason: collision with root package name */
    private int f1787k;

    /* renamed from: l  reason: collision with root package name */
    private int f1788l;

    /* renamed from: m  reason: collision with root package name */
    private int f1789m;

    /* renamed from: n  reason: collision with root package name */
    private int f1790n;

    /* renamed from: o  reason: collision with root package name */
    private e f1791o;

    /* renamed from: p  reason: collision with root package name */
    private TextView.BufferType f1792p;

    /* renamed from: q  reason: collision with root package name */
    private TextPaint f1793q;

    /* renamed from: r  reason: collision with root package name */
    private Layout f1794r;

    /* renamed from: s  reason: collision with root package name */
    private int f1795s;

    /* renamed from: t  reason: collision with root package name */
    private int f1796t;

    /* renamed from: u  reason: collision with root package name */
    private int f1797u;

    /* renamed from: v  reason: collision with root package name */
    private CharSequence f1798v;

    /* renamed from: w  reason: collision with root package name */
    private b f1799w;

    /* renamed from: x  reason: collision with root package name */
    private d f1800x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandableTextView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.q(expandableTextView.getNewTextByConfig(), ExpandableTextView.this.f1792p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ExpandableTextView.this.r();
        }

        /* synthetic */ b(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public class c extends LinkMovementMethod {

        /* renamed from: a  reason: collision with root package name */
        private e f1803a;

        public c() {
        }

        private e a(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            int x10 = ((int) motionEvent.getX()) - textView.getTotalPaddingLeft();
            int y10 = ((int) motionEvent.getY()) - textView.getTotalPaddingTop();
            int scrollX = x10 + textView.getScrollX();
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(y10 + textView.getScrollY()), scrollX);
            e[] eVarArr = (e[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, e.class);
            if (eVarArr.length > 0) {
                return eVarArr[0];
            }
            return null;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                e a10 = a(textView, spannable, motionEvent);
                this.f1803a = a10;
                if (a10 != null) {
                    a10.a(true);
                    Selection.setSelection(spannable, spannable.getSpanStart(this.f1803a), spannable.getSpanEnd(this.f1803a));
                }
            } else if (motionEvent.getAction() == 2) {
                e a11 = a(textView, spannable, motionEvent);
                e eVar = this.f1803a;
                if (eVar != null && a11 != eVar) {
                    eVar.a(false);
                    this.f1803a = null;
                    Selection.removeSelection(spannable);
                }
            } else {
                e eVar2 = this.f1803a;
                if (eVar2 != null) {
                    eVar2.a(false);
                    super.onTouchEvent(textView, spannable, motionEvent);
                }
                this.f1803a = null;
                Selection.removeSelection(spannable);
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void a(ExpandableTextView expandableTextView);

        void b(ExpandableTextView expandableTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class e extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1805a;

        private e() {
        }

        public void a(boolean z10) {
            this.f1805a = z10;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (ExpandableTextView.this.hasOnClickListeners()) {
                ExpandableTextView expandableTextView = ExpandableTextView.this;
                if (expandableTextView.l(expandableTextView) instanceof b) {
                    return;
                }
            }
            ExpandableTextView.this.r();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            int i9 = ExpandableTextView.this.f1790n;
            if (i9 == 0) {
                textPaint.setColor(ExpandableTextView.this.f1786j);
                textPaint.bgColor = this.f1805a ? ExpandableTextView.this.f1788l : 0;
            } else if (i9 == 1) {
                textPaint.setColor(ExpandableTextView.this.f1787k);
                textPaint.bgColor = this.f1805a ? ExpandableTextView.this.f1789m : 0;
            }
            textPaint.setUnderlineText(false);
        }

        /* synthetic */ e(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    public ExpandableTextView(Context context) {
        super(context);
        this.f1780d = " ";
        this.f1781e = " ";
        this.f1782f = true;
        this.f1783g = true;
        this.f1784h = true;
        this.f1785i = 2;
        this.f1786j = -13330213;
        this.f1787k = -1618884;
        this.f1788l = 1436129689;
        this.f1789m = 1436129689;
        this.f1790n = 0;
        this.f1792p = TextView.BufferType.NORMAL;
        this.f1795s = -1;
        this.f1796t = 0;
        this.f1797u = 0;
        n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getNewTextByConfig() {
        String str;
        int i9;
        int i10;
        int i11;
        if (TextUtils.isEmpty(this.f1798v)) {
            return this.f1798v;
        }
        Layout layout = getLayout();
        this.f1794r = layout;
        if (layout != null) {
            this.f1796t = layout.getWidth();
        }
        if (this.f1796t <= 0) {
            if (getWidth() == 0) {
                int i12 = this.f1797u;
                if (i12 == 0) {
                    return this.f1798v;
                }
                this.f1796t = (i12 - getPaddingLeft()) - getPaddingRight();
            } else {
                this.f1796t = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        }
        this.f1793q = getPaint();
        this.f1795s = -1;
        int i13 = this.f1790n;
        if (i13 != 0) {
            if (i13 != 1) {
                return this.f1798v;
            }
            if (!this.f1784h) {
                return this.f1798v;
            }
            DynamicLayout dynamicLayout = new DynamicLayout(this.f1798v, this.f1793q, this.f1796t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.f1794r = dynamicLayout;
            int lineCount = dynamicLayout.getLineCount();
            this.f1795s = lineCount;
            if (lineCount <= this.f1785i) {
                return this.f1798v;
            }
            SpannableStringBuilder append = new SpannableStringBuilder(this.f1798v).append((CharSequence) this.f1781e).append((CharSequence) this.f1779c);
            append.setSpan(this.f1791o, append.length() - k(this.f1779c), append.length(), 33);
            return append;
        }
        DynamicLayout dynamicLayout2 = new DynamicLayout(this.f1798v, this.f1793q, this.f1796t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f1794r = dynamicLayout2;
        int lineCount2 = dynamicLayout2.getLineCount();
        this.f1795s = lineCount2;
        if (lineCount2 <= this.f1785i) {
            return this.f1798v;
        }
        int lineEnd = getValidLayout().getLineEnd(this.f1785i - 1);
        int lineStart = getValidLayout().getLineStart(this.f1785i - 1);
        int k10 = (lineEnd - k(this.f1777a)) - (this.f1783g ? k(this.f1778b) + k(this.f1780d) : 0);
        if (k10 > lineStart) {
            lineEnd = k10;
        }
        int width = getValidLayout().getWidth() - ((int) (this.f1793q.measureText(this.f1798v.subSequence(lineStart, lineEnd).toString()) + 0.5d));
        TextPaint textPaint = this.f1793q;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j(this.f1777a));
        if (this.f1783g) {
            str = j(this.f1778b) + j(this.f1780d);
        } else {
            str = "";
        }
        sb2.append(str);
        float measureText = textPaint.measureText(sb2.toString());
        float f10 = width;
        if (f10 > measureText) {
            int i14 = 0;
            int i15 = 0;
            while (f10 > i14 + measureText && (i11 = lineEnd + (i15 = i15 + 1)) <= this.f1798v.length()) {
                i14 = (int) (this.f1793q.measureText(this.f1798v.subSequence(lineEnd, i11).toString()) + 0.5d);
            }
            i9 = lineEnd + (i15 - 1);
        } else {
            int i16 = 0;
            int i17 = 0;
            while (i16 + width < measureText && (i10 = lineEnd + (i17 - 1)) > lineStart) {
                i16 = (int) (this.f1793q.measureText(this.f1798v.subSequence(i10, lineEnd).toString()) + 0.5d);
            }
            i9 = lineEnd + i17;
        }
        SpannableStringBuilder append2 = new SpannableStringBuilder(p(this.f1798v.subSequence(0, i9))).append((CharSequence) this.f1777a);
        if (this.f1783g) {
            append2.append((CharSequence) (j(this.f1780d) + j(this.f1778b)));
            append2.setSpan(this.f1791o, append2.length() - k(this.f1778b), append2.length(), 33);
        }
        return append2;
    }

    private Layout getValidLayout() {
        Layout layout = this.f1794r;
        return layout != null ? layout : getLayout();
    }

    private String j(String str) {
        return str == null ? "" : str;
    }

    private int k(String str) {
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    private View.OnClickListener m(View view) {
        Object obj;
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                obj = declaredField.get(view);
            } else {
                obj = null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            if (declaredField2 == null || obj == null) {
                return null;
            }
            declaredField2.setAccessible(true);
            return (View.OnClickListener) declaredField2.get(obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void n() {
        this.f1791o = new e(this, null);
        setMovementMethod(new c());
        if (TextUtils.isEmpty(this.f1777a)) {
            this.f1777a = "..";
        }
        if (TextUtils.isEmpty(this.f1778b)) {
            this.f1778b = getResources().getString(R$string.to_expand_hint);
        }
        if (TextUtils.isEmpty(this.f1779c)) {
            this.f1779c = getResources().getString(R$string.to_shrink_hint);
        }
        if (this.f1782f) {
            b bVar = new b(this, null);
            this.f1799w = bVar;
            setOnClickListener(bVar);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void o(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExpandableTextView)) == null) {
            return;
        }
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i9 = 0; i9 < indexCount; i9++) {
            int index = obtainStyledAttributes.getIndex(i9);
            if (index == R$styleable.ExpandableTextView_etv_MaxLinesOnShrink) {
                this.f1785i = obtainStyledAttributes.getInteger(index, 2);
            } else if (index == R$styleable.ExpandableTextView_etv_EllipsisHint) {
                this.f1777a = obtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandableTextView_etv_ToExpandHint) {
                this.f1778b = obtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandableTextView_etv_ToShrinkHint) {
                this.f1779c = obtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandableTextView_etv_EnableToggle) {
                this.f1782f = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R$styleable.ExpandableTextView_etv_ToExpandHintShow) {
                this.f1783g = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R$styleable.ExpandableTextView_etv_ToShrinkHintShow) {
                this.f1784h = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R$styleable.ExpandableTextView_etv_ToExpandHintColor) {
                this.f1786j = obtainStyledAttributes.getInteger(index, -13330213);
            } else if (index == R$styleable.ExpandableTextView_etv_ToShrinkHintColor) {
                this.f1787k = obtainStyledAttributes.getInteger(index, -1618884);
            } else if (index == R$styleable.ExpandableTextView_etv_ToExpandHintColorBgPressed) {
                this.f1788l = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R$styleable.ExpandableTextView_etv_ToShrinkHintColorBgPressed) {
                this.f1789m = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R$styleable.ExpandableTextView_etv_InitState) {
                this.f1790n = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == R$styleable.ExpandableTextView_etv_GapToExpandHint) {
                this.f1780d = obtainStyledAttributes.getString(index);
            } else if (index == R$styleable.ExpandableTextView_etv_GapToShrinkHint) {
                this.f1781e = obtainStyledAttributes.getString(index);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private String p(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        while (charSequence2.endsWith(IOUtils.LINE_SEPARATOR_UNIX)) {
            charSequence2 = charSequence2.substring(0, charSequence2.length() - 1);
        }
        return charSequence2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        int i9 = this.f1790n;
        if (i9 == 0) {
            this.f1790n = 1;
            d dVar = this.f1800x;
            if (dVar != null) {
                dVar.b(this);
            }
        } else if (i9 == 1) {
            this.f1790n = 0;
            d dVar2 = this.f1800x;
            if (dVar2 != null) {
                dVar2.a(this);
            }
        }
        q(getNewTextByConfig(), this.f1792p);
    }

    public int getExpandState() {
        return this.f1790n;
    }

    public View.OnClickListener l(View view) {
        return m(view);
    }

    public void setExpandListener(d dVar) {
        this.f1800x = dVar;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f1798v = charSequence;
        this.f1792p = bufferType;
        q(getNewTextByConfig(), bufferType);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1780d = " ";
        this.f1781e = " ";
        this.f1782f = true;
        this.f1783g = true;
        this.f1784h = true;
        this.f1785i = 2;
        this.f1786j = -13330213;
        this.f1787k = -1618884;
        this.f1788l = 1436129689;
        this.f1789m = 1436129689;
        this.f1790n = 0;
        this.f1792p = TextView.BufferType.NORMAL;
        this.f1795s = -1;
        this.f1796t = 0;
        this.f1797u = 0;
        o(context, attributeSet);
        n();
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f1780d = " ";
        this.f1781e = " ";
        this.f1782f = true;
        this.f1783g = true;
        this.f1784h = true;
        this.f1785i = 2;
        this.f1786j = -13330213;
        this.f1787k = -1618884;
        this.f1788l = 1436129689;
        this.f1789m = 1436129689;
        this.f1790n = 0;
        this.f1792p = TextView.BufferType.NORMAL;
        this.f1795s = -1;
        this.f1796t = 0;
        this.f1797u = 0;
        o(context, attributeSet);
        n();
    }
}
