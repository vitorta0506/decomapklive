package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class AtFriendEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    private b f23480a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23481b;

    /* renamed from: c  reason: collision with root package name */
    boolean f23482c;

    /* renamed from: d  reason: collision with root package name */
    private int f23483d;

    /* renamed from: e  reason: collision with root package name */
    private int f23484e;

    /* loaded from: classes3.dex */
    static class a extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        Context f23485a;

        /* renamed from: b  reason: collision with root package name */
        private String f23486b;

        /* renamed from: c  reason: collision with root package name */
        private String f23487c;

        public a(Context context, String str, String str2) {
            this.f23485a = context;
            this.f23486b = str;
            this.f23487c = str2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            LogUtils.i("AtFriendEditText", "onClick: " + view.toString());
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(this.f23485a.getResources().getColor(R.color.ugc_topic_color));
            textPaint.setUnderlineText(true);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        boolean a(AtFriendEditText atFriendEditText, int i9, KeyEvent keyEvent);

        void b();
    }

    public AtFriendEditText(Context context) {
        super(context);
    }

    public void a(CharSequence charSequence, String str) {
        if ((getText() != null ? getText().length() : 0) + charSequence.length() > getMaxLength()) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.setSpan(new a(getContext(), charSequence.toString(), str), 0, charSequence.length(), 33);
        spannableStringBuilder.setSpan(new StyleSpan(1), 0, charSequence.length(), 33);
        int selectionStart = getSelectionStart();
        getText().insert(selectionStart, spannableStringBuilder);
        getText().insert(spannableStringBuilder.length() + selectionStart > getText().length() ? getText().length() : spannableStringBuilder.length() + selectionStart, " ");
        setSelection(selectionStart + spannableStringBuilder.length() + 1);
    }

    public void b(int i9, int i10, Intent intent) {
        Editable text;
        if (i9 != 77 || i10 != -1 || intent == null || (text = getText()) == null || text.length() <= 0 || !this.f23482c) {
            return;
        }
        this.f23482c = false;
        int selectionStart = getSelectionStart();
        if (selectionStart > 0) {
            text.replace(selectionStart - 1, selectionStart, "");
        }
    }

    public int getMaxLength() {
        InputFilter[] filters;
        Field[] declaredFields;
        int i9 = Integer.MAX_VALUE;
        try {
            for (InputFilter inputFilter : getFilters()) {
                if (inputFilter instanceof InputFilter.LengthFilter) {
                    i9 = ((InputFilter.LengthFilter) inputFilter).getMax();
                    return i9;
                }
                Class<?> cls = inputFilter.getClass();
                if ("android.text.InputFilter$LengthFilter".equals(cls.getName())) {
                    for (Field field : cls.getDeclaredFields()) {
                        if ("mMax".equals(field.getName())) {
                            field.setAccessible(true);
                            i9 = ((Integer) field.get(inputFilter)).intValue();
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i9;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        a[] aVarArr;
        b bVar;
        if (i9 == 77 && (bVar = this.f23480a) != null) {
            return bVar.a(this, i9, keyEvent);
        }
        if (i9 == 67) {
            Editable text = getText();
            int selectionStart = Selection.getSelectionStart(text);
            int selectionEnd = Selection.getSelectionEnd(text);
            for (a aVar : (a[]) text.getSpans(0, text.length(), a.class)) {
                int spanStart = text.getSpanStart(aVar);
                int spanEnd = text.getSpanEnd(aVar);
                if (selectionStart > spanStart && selectionEnd <= spanEnd) {
                    text.delete(text.getSpanStart(aVar), text.getSpanEnd(aVar));
                    text.removeSpan(aVar);
                    return true;
                }
            }
        }
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i9, int i10) {
        a[] aVarArr;
        int i11;
        int i12;
        super.onSelectionChanged(i9, i10);
        Editable text = getText();
        boolean z10 = false;
        for (a aVar : (a[]) text.getSpans(0, text.length(), a.class)) {
            int spanStart = text.getSpanStart(aVar);
            int spanEnd = text.getSpanEnd(aVar);
            if (i9 > spanStart && i10 < spanEnd && (i11 = this.f23483d) >= 0 && (i12 = this.f23484e) >= 0) {
                Selection.setSelection(text, i11, i12);
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        this.f23484e = i10;
        this.f23483d = i9;
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        b bVar;
        if (!this.f23481b && charSequence.toString().endsWith("@") && (bVar = this.f23480a) != null && i10 == 0) {
            this.f23482c = true;
            bVar.b();
        }
        this.f23481b = false;
        super.onTextChanged(charSequence, i9, i10, i11);
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i9) {
        if (i9 == 16908322) {
            this.f23481b = true;
            return super.onTextContextMenuItem(i9);
        }
        return super.onTextContextMenuItem(i9);
    }

    public void setOnKeyAtDownListener(b bVar) {
        this.f23480a = bVar;
    }

    public AtFriendEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
