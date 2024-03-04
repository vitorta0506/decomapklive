package com.twitter.sdk.android.tweetui.internal;

import android.text.Layout;
import android.text.Spanned;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final View f35541a;

    /* renamed from: b  reason: collision with root package name */
    private Layout f35542b;

    /* renamed from: c  reason: collision with root package name */
    private float f35543c;

    /* renamed from: d  reason: collision with root package name */
    private float f35544d;

    /* renamed from: e  reason: collision with root package name */
    private c f35545e;

    public g(View view, Layout layout) {
        this.f35541a = view;
        this.f35542b = layout;
    }

    private void b() {
        c cVar = this.f35545e;
        if (cVar == null || !cVar.isSelected()) {
            return;
        }
        cVar.a(false);
        this.f35545e = null;
        e();
    }

    public static void c(TextView textView) {
        final g gVar = new g(textView, null);
        textView.setOnTouchListener(new View.OnTouchListener() { // from class: com.twitter.sdk.android.tweetui.internal.f
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean f10;
                f10 = g.f(g.this, view, motionEvent);
                return f10;
            }
        });
    }

    private void e() {
        View view = this.f35541a;
        float f10 = this.f35543c;
        view.invalidate((int) f10, (int) this.f35544d, ((int) f10) + this.f35542b.getWidth(), ((int) this.f35544d) + this.f35542b.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean f(g gVar, View view, MotionEvent motionEvent) {
        TextView textView = (TextView) view;
        Layout layout = textView.getLayout();
        if (layout != null) {
            gVar.f35542b = layout;
            gVar.f35543c = textView.getTotalPaddingLeft() + textView.getScrollX();
            gVar.f35544d = textView.getTotalPaddingTop() + textView.getScrollY();
            return gVar.d(motionEvent);
        }
        return false;
    }

    private void g(c cVar) {
        cVar.a(true);
        this.f35545e = cVar;
        e();
    }

    public boolean d(MotionEvent motionEvent) {
        c cVar;
        CharSequence text = this.f35542b.getText();
        Spanned spanned = text instanceof Spanned ? (Spanned) text : null;
        if (spanned == null) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        int x10 = (int) (motionEvent.getX() - this.f35543c);
        int y10 = (int) (motionEvent.getY() - this.f35544d);
        if (x10 >= 0 && x10 < this.f35542b.getWidth() && y10 >= 0 && y10 < this.f35542b.getHeight()) {
            int lineForVertical = this.f35542b.getLineForVertical(y10);
            float f10 = x10;
            if (f10 < this.f35542b.getLineLeft(lineForVertical) || f10 > this.f35542b.getLineRight(lineForVertical)) {
                b();
                return false;
            }
            if (action == 0) {
                int offsetForHorizontal = this.f35542b.getOffsetForHorizontal(lineForVertical, f10);
                c[] cVarArr = (c[]) spanned.getSpans(offsetForHorizontal, offsetForHorizontal, c.class);
                if (cVarArr.length > 0) {
                    g(cVarArr[0]);
                    return true;
                }
            } else if (action == 1 && (cVar = this.f35545e) != null) {
                cVar.onClick(this.f35541a);
                b();
                return true;
            }
            return false;
        }
        b();
        return false;
    }
}
