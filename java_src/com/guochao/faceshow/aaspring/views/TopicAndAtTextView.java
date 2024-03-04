package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.text.Spannable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.guochao.faceshow.aaspring.utils.TopicAndAtTextHelper;
/* loaded from: classes3.dex */
public class TopicAndAtTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    TopicAndAtTextHelper f24081a;

    /* renamed from: b  reason: collision with root package name */
    private Spannable f24082b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f24083c;

    public TopicAndAtTextView(Context context) {
        super(context);
        this.f24083c = true;
        init();
        b();
    }

    private void b() {
        if (this.f24081a == null) {
            this.f24081a = new TopicAndAtTextHelper(getContext(), this);
        }
    }

    private void init() {
    }

    public void a(boolean z10) {
        this.f24083c = z10;
    }

    public boolean c() {
        return this.f24083c;
    }

    public TopicAndAtTextHelper getTopicAndAtTextHelper() {
        b();
        return this.f24081a;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        b();
        Spannable replaceText = this.f24081a.replaceText(charSequence);
        this.f24082b = replaceText;
        super.setText(replaceText, bufferType);
    }

    public TopicAndAtTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24083c = true;
        init();
        b();
    }
}
