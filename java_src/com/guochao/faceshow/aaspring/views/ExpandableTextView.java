package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.utils.HandlerGetter;
/* loaded from: classes3.dex */
public class ExpandableTextView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    TopicAndAtTextView f23651a;

    /* renamed from: b  reason: collision with root package name */
    TextView f23652b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23653c;

    /* renamed from: d  reason: collision with root package name */
    private int f23654d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f23655e;

    /* renamed from: f  reason: collision with root package name */
    private DynamicBean f23656f;

    /* renamed from: g  reason: collision with root package name */
    private BaseDynamicViewHolder f23657g;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.f23651a.setText(expandableTextView.f23655e);
            view.setVisibility(8);
            ExpandableTextView.this.f23656f.setExpand(true);
            if (ExpandableTextView.this.f23657g == null || ExpandableTextView.this.f23657g.getView(R.id.like_tips).getVisibility() != 0) {
                return;
            }
            HandlerGetter.getMainHandler().post(ExpandableTextView.this.f23657g.f22562l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f23659a;

        b(CharSequence charSequence) {
            this.f23659a = charSequence;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExpandableTextView.this.f23655e = this.f23659a;
            ExpandableTextView.this.f(this.f23659a);
        }
    }

    public ExpandableTextView(Context context) {
        super(context);
        g(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        DynamicLayout dynamicLayout = new DynamicLayout(charSequence, this.f23651a.getPaint(), getMeasuredWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        int lineCount = dynamicLayout.getLineCount();
        this.f23654d = lineCount;
        if (lineCount > 4) {
            this.f23652b.setVisibility(0);
            this.f23653c = false;
            this.f23651a.setText(i(dynamicLayout, charSequence));
            return;
        }
        this.f23652b.setVisibility(8);
        this.f23653c = true;
        this.f23651a.setText(charSequence);
    }

    private void g(Context context, AttributeSet attributeSet) {
        setOrientation(1);
    }

    private CharSequence i(Layout layout, CharSequence charSequence) {
        if (charSequence == null) {
            return "";
        }
        int lineEnd = layout.getLineEnd(3);
        if (charSequence.length() > lineEnd) {
            try {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                int i9 = 0;
                while (true) {
                    int i10 = lineEnd - i9;
                    if (TextViewUtils.calTextWidth(this.f23651a, charSequence.subSequence(i10, lineEnd).toString()) >= TextViewUtils.calTextWidth(this.f23651a, "...")) {
                        spannableStringBuilder.append(charSequence.subSequence(0, i10)).append((CharSequence) "...");
                        return spannableStringBuilder;
                    }
                    i9++;
                }
            } catch (Exception unused) {
            }
        }
        return charSequence;
    }

    public void h(CharSequence charSequence, DynamicBean dynamicBean, BaseDynamicViewHolder baseDynamicViewHolder) {
        this.f23656f = dynamicBean;
        this.f23657g = baseDynamicViewHolder;
        if (TextUtils.isEmpty(charSequence)) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        if (this.f23656f.isExpand()) {
            this.f23651a.setText(charSequence);
        } else if (getMeasuredWidth() > 0) {
            this.f23655e = charSequence;
            f(charSequence);
        } else {
            this.f23651a.post(new b(charSequence));
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f23651a = (TopicAndAtTextView) findViewById(R.id.text_content);
        TextView textView = (TextView) findViewById(R.id.expand);
        this.f23652b = textView;
        textView.setOnClickListener(new a());
    }

    public ExpandableTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        g(context, attributeSet);
    }

    public ExpandableTextView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        g(context, attributeSet);
    }
}
