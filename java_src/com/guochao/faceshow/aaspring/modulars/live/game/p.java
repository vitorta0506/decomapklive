package com.guochao.faceshow.aaspring.modulars.live.game;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.EditText;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class p implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f19638a;

    /* renamed from: b  reason: collision with root package name */
    private final View f19639b;

    /* renamed from: c  reason: collision with root package name */
    float f19640c;

    /* renamed from: d  reason: collision with root package name */
    float f19641d;

    /* renamed from: e  reason: collision with root package name */
    float f19642e;

    /* renamed from: f  reason: collision with root package name */
    float f19643f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19644g = true;

    /* renamed from: h  reason: collision with root package name */
    EditText f19645h;

    /* renamed from: i  reason: collision with root package name */
    int f19646i;

    /* renamed from: j  reason: collision with root package name */
    View f19647j;

    public p(View view, View view2, EditText editText) {
        this.f19638a = view;
        this.f19639b = view2;
        this.f19645h = editText;
        this.f19646i = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    private void a(ViewGroup viewGroup, MotionEvent motionEvent) {
        int childCount = viewGroup.getChildCount();
        int[] iArr = new int[2];
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            childAt.getLocationInWindow(iArr);
            if (d(childAt, motionEvent, iArr)) {
                Object tag = childAt.getTag(R.id.click_view);
                if (tag instanceof View.OnClickListener) {
                    ((View.OnClickListener) tag).onClick(childAt);
                    childAt.setPressed(false);
                    return;
                }
            }
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, motionEvent);
            }
        }
    }

    private void b(ViewGroup viewGroup, MotionEvent motionEvent) {
        int childCount = viewGroup.getChildCount();
        int[] iArr = new int[2];
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = viewGroup.getChildAt(i9);
            childAt.getLocationInWindow(iArr);
            if (d(childAt, motionEvent, iArr) && (childAt.getTag(R.id.click_view) instanceof View.OnClickListener)) {
                childAt.drawableHotspotChanged(motionEvent.getRawX() - iArr[0], motionEvent.getRawY() - iArr[1]);
                childAt.setPressed(true);
                this.f19647j = childAt;
                return;
            }
            if (childAt instanceof ViewGroup) {
                b((ViewGroup) childAt, motionEvent);
            }
        }
    }

    private boolean d(View view, MotionEvent motionEvent, int[] iArr) {
        int i9 = iArr[0];
        int i10 = iArr[1];
        return ((float) i9) < motionEvent.getRawX() && ((float) i10) < motionEvent.getRawY() && ((float) (view.getWidth() + i9)) > motionEvent.getRawX() && ((float) (view.getHeight() + i10)) > motionEvent.getRawY();
    }

    public void c(boolean z10) {
        this.f19644g = z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r3 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.game.p.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
