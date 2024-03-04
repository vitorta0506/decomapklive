package com.guochao.faceshow.aaspring.views;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.SearchFriendsActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.publish.activity.SearchAttachTopicActivity;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class AtTopicUgcEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    private Activity f23488a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f23489b;

    /* renamed from: c  reason: collision with root package name */
    private TextWatcher f23490c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23491d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23492e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f23493f;

    /* renamed from: g  reason: collision with root package name */
    private int f23494g;

    /* renamed from: h  reason: collision with root package name */
    private int f23495h;

    /* renamed from: i  reason: collision with root package name */
    private b f23496i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class AtPeopleSpan extends StyleSpan {
        private CharSequence mText;

        /* synthetic */ AtPeopleSpan(CharSequence charSequence, a aVar) {
            this(charSequence);
        }

        @Override // android.text.style.StyleSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(BaseApplication.getInstance().getResources().getColor(R.color.ugc_topic_color));
            textPaint.setUnderlineText(false);
        }

        private AtPeopleSpan(CharSequence charSequence) {
            super(0);
            this.mText = charSequence;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        private boolean f23497a;

        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AtTopicUgcEditText.this.w();
            if (AtTopicUgcEditText.this.f23493f) {
                AtTopicUgcEditText.this.f23493f = false;
                if (AtTopicUgcEditText.this.f23496i != null) {
                    AtTopicUgcEditText.this.f23496i.a();
                }
            } else if (this.f23497a) {
                AtTopicUgcEditText.this.p();
            } else {
                if (editable.toString().endsWith("@") && AtTopicUgcEditText.this.getSelectionEnd() == AtTopicUgcEditText.this.length() && !AtTopicUgcEditText.this.f23492e) {
                    SearchFriendsActivity.o0(AtTopicUgcEditText.this.f23488a, 77, AtTopicUgcEditText.this.getContext().getString(R.string.ugc_add_at));
                }
                if (editable.toString().endsWith("#") && AtTopicUgcEditText.this.getSelectionEnd() == AtTopicUgcEditText.this.length() && !AtTopicUgcEditText.this.f23492e) {
                    if (AtTopicUgcEditText.this.f23489b && AtTopicUgcEditText.this.f23496i != null) {
                        AtTopicUgcEditText.this.f23496i.b();
                    } else {
                        AtTopicUgcEditText.this.f23491d = true;
                        SearchAttachTopicActivity.r0(AtTopicUgcEditText.this.f23488a, true, 78);
                    }
                }
                if (AtTopicUgcEditText.this.f23496i != null) {
                    AtTopicUgcEditText.this.f23496i.a();
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            AtTopicUgcEditText.this.f23492e = i11 == 0;
            if (AtTopicUgcEditText.this.f23492e) {
                this.f23497a = AtTopicUgcEditText.this.n();
            } else {
                this.f23497a = false;
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b {
        public abstract void a();

        public void b() {
        }
    }

    public AtTopicUgcEditText(Context context) {
        super(context);
        a aVar = new a();
        this.f23490c = aVar;
        addTextChangedListener(aVar);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.views.b
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean s10;
                s10 = AtTopicUgcEditText.s(view, motionEvent);
                return s10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        Editable text = getText();
        AtPeopleSpan[] atPeopleSpanArr = (AtPeopleSpan[]) text.getSpans(0, text.length(), AtPeopleSpan.class);
        int selectionEnd = getSelectionEnd();
        if (atPeopleSpanArr != null && atPeopleSpanArr.length > 0) {
            for (AtPeopleSpan atPeopleSpan : atPeopleSpanArr) {
                if (text.getSpanEnd(atPeopleSpan) == selectionEnd) {
                    return true;
                }
            }
        }
        return false;
    }

    private void o(int i9, String str, Editable editable) {
        AtPeopleSpan[] atPeopleSpanArr;
        if (i9 < 1) {
            return;
        }
        int i10 = i9 - 1;
        char charAt = getText().toString().charAt(i10);
        for (AtPeopleSpan atPeopleSpan : (AtPeopleSpan[]) editable.getSpans(0, editable.length(), AtPeopleSpan.class)) {
            int spanStart = editable.getSpanStart(atPeopleSpan);
            int spanEnd = editable.getSpanEnd(atPeopleSpan);
            int selectionStart = getSelectionStart();
            if (spanStart == i10) {
                if (spanEnd == selectionStart && editable.toString().substring(spanStart, spanEnd).endsWith(" ")) {
                    editable.removeSpan(atPeopleSpan);
                    editable.setSpan(new AtPeopleSpan(charAt + str, null), spanStart, spanEnd - 1, 33);
                    return;
                }
                return;
            }
        }
        if ('@' == charAt || '#' == charAt) {
            editable.setSpan(new AtPeopleSpan(charAt + str, null), i10, i9 + str.length(), 18);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        Editable text = getText();
        int selectionStart = Selection.getSelectionStart(text);
        int selectionEnd = Selection.getSelectionEnd(text);
        int i9 = 0;
        AtPeopleSpan[] atPeopleSpanArr = (AtPeopleSpan[]) text.getSpans(0, text.length(), AtPeopleSpan.class);
        while (true) {
            if (i9 >= atPeopleSpanArr.length) {
                break;
            }
            AtPeopleSpan atPeopleSpan = atPeopleSpanArr[i9];
            int spanStart = text.getSpanStart(atPeopleSpan);
            int spanEnd = text.getSpanEnd(atPeopleSpan);
            if (selectionStart > spanStart && selectionEnd <= spanEnd) {
                text.delete(text.getSpanStart(atPeopleSpan), text.getSpanEnd(atPeopleSpan));
                text.removeSpan(atPeopleSpan);
                break;
            }
            i9++;
        }
        this.f23492e = true;
    }

    private int q(int i9, String[] strArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            i10 = i10 + strArr[i11].length() + 1;
            if (i9 == i11) {
                return i10;
            }
        }
        return i10;
    }

    private String r(String str) {
        return StringUtils.addInvisibleCharBeforeWhiteSpace(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean s(View view, MotionEvent motionEvent) {
        view.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean t(View view, MotionEvent motionEvent) {
        view.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        Editable text = getText();
        String[] split = text.toString().split("@|#| ");
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < split.length; i9++) {
            String str = split[i9];
            if (str.endsWith(String.valueOf((char) StringUtils.INVISIBLE_CHAR))) {
                int q10 = q(i9, split) - 1;
                if (q10 > text.length() - 1) {
                    q10 = text.length() - 1;
                }
                char charAt = text.charAt(q10);
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
                int indexOf = text.toString().indexOf(str);
                o(indexOf, str, text);
                while (indexOf != -1) {
                    indexOf = text.toString().indexOf(str, indexOf + 1);
                    o(indexOf, str, text);
                }
            }
        }
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i9, int i10) {
        AtPeopleSpan[] atPeopleSpanArr;
        int i11;
        super.onSelectionChanged(i9, i10);
        Editable text = getText();
        boolean z10 = false;
        for (AtPeopleSpan atPeopleSpan : (AtPeopleSpan[]) text.getSpans(0, text.length(), AtPeopleSpan.class)) {
            int spanStart = text.getSpanStart(atPeopleSpan);
            int spanEnd = text.getSpanEnd(atPeopleSpan);
            if (i9 > spanStart && i10 < spanEnd && (i11 = this.f23494g) >= 0 && this.f23495h >= 0) {
                Selection.setSelection(text, Math.max(Math.min(i11, text.length() - 1), 0), Math.max(Math.min(this.f23495h, text.length() - 1), 0));
                z10 = true;
            }
        }
        if (z10 || i9 <= 0 || i10 <= 0) {
            return;
        }
        this.f23495h = i10;
        this.f23494g = i9;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public boolean onTextContextMenuItem(int i9) {
        if (i9 == 16908322) {
            this.f23493f = true;
            return super.onTextContextMenuItem(i9);
        }
        return super.onTextContextMenuItem(i9);
    }

    public void setActivity(Activity activity) {
        this.f23488a = activity;
    }

    public void setIgnoreTopic(boolean z10) {
        this.f23489b = z10;
    }

    public void setOnTextChangedListener(b bVar) {
        this.f23496i = bVar;
    }

    public void u(int i9, int i10, Intent intent) {
        ArrayList<String> stringArrayListExtra;
        List list;
        if (i9 == 77 && i10 == -1 && intent != null && (list = (List) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1)) != null) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (i11 == 0) {
                    append(r(((IM_User) list.get(i11)).getNick_name()) + " ");
                } else {
                    append("@" + r(((IM_User) list.get(i11)).getNick_name()) + " ");
                }
            }
        }
        if (i9 == 78 && i10 == -1 && intent != null && (stringArrayListExtra = intent.getStringArrayListExtra("topics")) != null) {
            for (int i12 = 0; i12 < stringArrayListExtra.size(); i12++) {
                if (i12 < stringArrayListExtra.size() - 1) {
                    if (this.f23491d) {
                        append(r(stringArrayListExtra.get(i12)));
                    } else {
                        Editable text = getText();
                        int selectionStart = getSelectionStart();
                        text.insert(selectionStart, "#" + r(stringArrayListExtra.get(i12)));
                    }
                } else if (this.f23491d) {
                    append(r(stringArrayListExtra.get(i12)) + " ");
                } else {
                    Editable text2 = getText();
                    int selectionStart2 = getSelectionStart();
                    text2.insert(selectionStart2, "#" + r(stringArrayListExtra.get(i12)) + " ");
                }
            }
        }
        if (i9 == 77 || i9 == 78) {
            SoftKeyBoardUtils.openSoftKeyBoard(this);
        }
    }

    public void v() {
        this.f23491d = false;
        SearchAttachTopicActivity.r0(this.f23488a, false, 78);
    }

    public AtTopicUgcEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a();
        this.f23490c = aVar;
        addTextChangedListener(aVar);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.views.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean t10;
                t10 = AtTopicUgcEditText.t(view, motionEvent);
                return t10;
            }
        });
    }
}
