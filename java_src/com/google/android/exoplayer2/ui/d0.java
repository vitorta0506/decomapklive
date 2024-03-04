package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
final class d0 extends FrameLayout implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.ui.a f6771a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f6772b;

    /* renamed from: c  reason: collision with root package name */
    private List<x2.b> f6773c;

    /* renamed from: d  reason: collision with root package name */
    private i3.b f6774d;

    /* renamed from: e  reason: collision with root package name */
    private float f6775e;

    /* renamed from: f  reason: collision with root package name */
    private int f6776f;

    /* renamed from: g  reason: collision with root package name */
    private float f6777g;

    /* loaded from: classes2.dex */
    class a extends WebView {
        a(d0 d0Var, Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6778a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f6778a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6778a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6778a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public d0(Context context) {
        this(context, null);
    }

    private static int b(int i9) {
        if (i9 != 1) {
            return i9 != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i9 = b.f6778a[alignment.ordinal()];
        return i9 != 1 ? i9 != 2 ? "center" : "end" : "start";
    }

    private static String d(i3.b bVar) {
        int i9 = bVar.f40943d;
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return i9 != 4 ? "unset" : l0.z("-0.05em -0.05em 0.15em %s", com.google.android.exoplayer2.ui.b.b(bVar.f40944e));
                }
                return l0.z("0.06em 0.08em 0.15em %s", com.google.android.exoplayer2.ui.b.b(bVar.f40944e));
            }
            return l0.z("0.1em 0.12em 0.15em %s", com.google.android.exoplayer2.ui.b.b(bVar.f40944e));
        }
        return l0.z("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", com.google.android.exoplayer2.ui.b.b(bVar.f40944e));
    }

    private String e(int i9, float f10) {
        float h10 = b0.h(i9, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return h10 == -3.4028235E38f ? "unset" : l0.z("%.2fpx", Float.valueOf(h10 / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i9) {
        return i9 != 1 ? i9 != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    private static String h(x2.b bVar) {
        float f10 = bVar.f59562q;
        if (f10 != 0.0f) {
            int i9 = bVar.f59561p;
            return l0.z("%s(%.2fdeg)", (i9 == 2 || i9 == 1) ? "skewY" : "skewX", Float.valueOf(f10));
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0148, code lost:
        if (r13 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x014b, code lost:
        if (r13 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014d, code lost:
        r21 = com.facebook.appevents.internal.ViewHierarchyConstants.DIMENSION_LEFT_KEY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014f, code lost:
        r22 = "top";
        r13 = 2;
        r23 = r21;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i() {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.d0.i():void");
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<x2.b> list, i3.b bVar, float f10, int i9, float f11) {
        this.f6774d = bVar;
        this.f6775e = f10;
        this.f6776f = i9;
        this.f6777g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            x2.b bVar2 = list.get(i10);
            if (bVar2.f59549d != null) {
                arrayList.add(bVar2);
            } else {
                arrayList2.add(bVar2);
            }
        }
        if (!this.f6773c.isEmpty() || !arrayList2.isEmpty()) {
            this.f6773c = arrayList2;
            i();
        }
        this.f6771a.a(arrayList, bVar, f10, i9, f11);
        invalidate();
    }

    public void g() {
        this.f6772b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (!z10 || this.f6773c.isEmpty()) {
            return;
        }
        i();
    }

    public d0(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6773c = Collections.emptyList();
        this.f6774d = i3.b.f40939g;
        this.f6775e = 0.0533f;
        this.f6776f = 0;
        this.f6777g = 0.08f;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context, attributeSet);
        this.f6771a = aVar;
        a aVar2 = new a(this, context, attributeSet);
        this.f6772b = aVar2;
        aVar2.setBackgroundColor(0);
        addView(aVar);
        addView(aVar2);
    }
}
