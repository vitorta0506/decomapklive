package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.n3;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import v2.o0;
/* loaded from: classes2.dex */
public class TrackSelectionView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f6735a;

    /* renamed from: b  reason: collision with root package name */
    private final LayoutInflater f6736b;

    /* renamed from: c  reason: collision with root package name */
    private final CheckedTextView f6737c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckedTextView f6738d;

    /* renamed from: e  reason: collision with root package name */
    private final b f6739e;

    /* renamed from: f  reason: collision with root package name */
    private final List<n3.a> f6740f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<o0, h3.x> f6741g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6742h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f6743i;

    /* renamed from: j  reason: collision with root package name */
    private i3.k f6744j;

    /* renamed from: k  reason: collision with root package name */
    private CheckedTextView[][] f6745k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f6746l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Comparator<c> f6747m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private d f6748n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final n3.a f6750a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6751b;

        public c(n3.a aVar, int i9) {
            this.f6750a = aVar;
            this.f6751b = i9;
        }

        public k1 a() {
            return this.f6750a.c(this.f6751b);
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(boolean z10, Map<o0, h3.x> map);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    public static Map<o0, h3.x> b(Map<o0, h3.x> map, List<n3.a> list, boolean z10) {
        HashMap hashMap = new HashMap();
        for (int i9 = 0; i9 < list.size(); i9++) {
            h3.x xVar = map.get(list.get(i9).b());
            if (xVar != null && (z10 || hashMap.isEmpty())) {
                hashMap.put(xVar.f40488a, xVar);
            }
        }
        return hashMap;
    }

    private void c() {
        this.f6746l = false;
        this.f6741g.clear();
    }

    private void d() {
        this.f6746l = true;
        this.f6741g.clear();
    }

    private void e(View view) {
        boolean z10 = false;
        this.f6746l = false;
        c cVar = (c) com.google.android.exoplayer2.util.a.e(view.getTag());
        o0 b10 = cVar.f6750a.b();
        int i9 = cVar.f6751b;
        h3.x xVar = this.f6741g.get(b10);
        if (xVar == null) {
            if (!this.f6743i && this.f6741g.size() > 0) {
                this.f6741g.clear();
            }
            this.f6741g.put(b10, new h3.x(b10, ImmutableList.of(Integer.valueOf(i9))));
            return;
        }
        ArrayList arrayList = new ArrayList(xVar.f40489b);
        boolean isChecked = ((CheckedTextView) view).isChecked();
        boolean f10 = f(cVar.f6750a);
        z10 = (f10 || g()) ? true : true;
        if (isChecked && z10) {
            arrayList.remove(Integer.valueOf(i9));
            if (arrayList.isEmpty()) {
                this.f6741g.remove(b10);
            } else {
                this.f6741g.put(b10, new h3.x(b10, arrayList));
            }
        } else if (isChecked) {
        } else {
            if (f10) {
                arrayList.add(Integer.valueOf(i9));
                this.f6741g.put(b10, new h3.x(b10, arrayList));
                return;
            }
            this.f6741g.put(b10, new h3.x(b10, ImmutableList.of(Integer.valueOf(i9))));
        }
    }

    private boolean f(n3.a aVar) {
        return this.f6742h && aVar.e();
    }

    private boolean g() {
        return this.f6743i && this.f6740f.size() > 1;
    }

    private void h() {
        this.f6737c.setChecked(this.f6746l);
        this.f6738d.setChecked(!this.f6746l && this.f6741g.size() == 0);
        for (int i9 = 0; i9 < this.f6745k.length; i9++) {
            h3.x xVar = this.f6741g.get(this.f6740f.get(i9).b());
            int i10 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f6745k;
                if (i10 < checkedTextViewArr[i9].length) {
                    if (xVar != null) {
                        this.f6745k[i9][i10].setChecked(xVar.f40489b.contains(Integer.valueOf(((c) com.google.android.exoplayer2.util.a.e(checkedTextViewArr[i9][i10].getTag())).f6751b)));
                    } else {
                        checkedTextViewArr[i9][i10].setChecked(false);
                    }
                    i10++;
                }
            }
        }
    }

    private void i() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f6740f.isEmpty()) {
            this.f6737c.setEnabled(false);
            this.f6738d.setEnabled(false);
            return;
        }
        this.f6737c.setEnabled(true);
        this.f6738d.setEnabled(true);
        this.f6745k = new CheckedTextView[this.f6740f.size()];
        boolean g10 = g();
        for (int i9 = 0; i9 < this.f6740f.size(); i9++) {
            n3.a aVar = this.f6740f.get(i9);
            boolean f10 = f(aVar);
            CheckedTextView[][] checkedTextViewArr = this.f6745k;
            int i10 = aVar.f6356a;
            checkedTextViewArr[i9] = new CheckedTextView[i10];
            c[] cVarArr = new c[i10];
            for (int i11 = 0; i11 < aVar.f6356a; i11++) {
                cVarArr[i11] = new c(aVar, i11);
            }
            Comparator<c> comparator = this.f6747m;
            if (comparator != null) {
                Arrays.sort(cVarArr, comparator);
            }
            for (int i12 = 0; i12 < i10; i12++) {
                if (i12 == 0) {
                    addView(this.f6736b.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f6736b.inflate((f10 || g10) ? 17367056 : 17367055, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f6735a);
                checkedTextView.setText(this.f6744j.a(cVarArr[i12].a()));
                checkedTextView.setTag(cVarArr[i12]);
                if (aVar.h(i12)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f6739e);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f6745k[i9][i12] = checkedTextView;
                addView(checkedTextView);
            }
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(View view) {
        if (view == this.f6737c) {
            d();
        } else if (view == this.f6738d) {
            c();
        } else {
            e(view);
        }
        h();
        d dVar = this.f6748n;
        if (dVar != null) {
            dVar.a(getIsDisabled(), getOverrides());
        }
    }

    public boolean getIsDisabled() {
        return this.f6746l;
    }

    public Map<o0, h3.x> getOverrides() {
        return this.f6741g;
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f6742h != z10) {
            this.f6742h = z10;
            i();
        }
    }

    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f6743i != z10) {
            this.f6743i = z10;
            if (!z10 && this.f6741g.size() > 1) {
                Map<o0, h3.x> b10 = b(this.f6741g, this.f6740f, false);
                this.f6741g.clear();
                this.f6741g.putAll(b10);
            }
            i();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f6737c.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(i3.k kVar) {
        this.f6744j = (i3.k) com.google.android.exoplayer2.util.a.e(kVar);
        i();
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i9) {
        super(context, attributeSet, i9);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f6735a = resourceId;
        obtainStyledAttributes.recycle();
        LayoutInflater from = LayoutInflater.from(context);
        this.f6736b = from;
        b bVar = new b();
        this.f6739e = bVar;
        this.f6744j = new i3.e(getResources());
        this.f6740f = new ArrayList();
        this.f6741g = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f6737c = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R$string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(bVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(from.inflate(R$layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) from.inflate(17367055, (ViewGroup) this, false);
        this.f6738d = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R$string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(bVar);
        addView(checkedTextView2);
    }
}
