package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
/* loaded from: classes4.dex */
public class LineEditView extends EditText {

    /* renamed from: a  reason: collision with root package name */
    private Context f26654a;

    public LineEditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26654a = context;
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, KeyEvent keyEvent) {
        if (i9 == 66) {
            return true;
        }
        return super.onKeyDown(i9, keyEvent);
    }
}
