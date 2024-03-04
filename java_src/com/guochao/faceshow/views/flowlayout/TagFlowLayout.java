package com.guochao.faceshow.views.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.views.flowlayout.a;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class TagFlowLayout extends FlowLayout implements a.InterfaceC0269a {

    /* renamed from: f  reason: collision with root package name */
    private com.guochao.faceshow.views.flowlayout.a f26996f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26997g;

    /* renamed from: h  reason: collision with root package name */
    private int f26998h;

    /* renamed from: i  reason: collision with root package name */
    private MotionEvent f26999i;

    /* renamed from: j  reason: collision with root package name */
    private Set<Integer> f27000j;

    /* renamed from: k  reason: collision with root package name */
    private b f27001k;

    /* renamed from: l  reason: collision with root package name */
    private c f27002l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(Set<Integer> set);
    }

    /* loaded from: classes4.dex */
    public interface c {
        boolean a(View view, int i9, FlowLayout flowLayout);
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26997g = true;
        this.f26998h = -1;
        this.f27000j = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TagFlowLayout);
        this.f26997g = obtainStyledAttributes.getBoolean(0, true);
        this.f26998h = obtainStyledAttributes.getInt(2, -1);
        obtainStyledAttributes.recycle();
        if (this.f26997g) {
            setClickable(true);
        }
    }

    private void b() {
        removeAllViews();
        com.guochao.faceshow.views.flowlayout.a aVar = this.f26996f;
        HashSet<Integer> c10 = aVar.c();
        for (int i9 = 0; i9 < aVar.a(); i9++) {
            View d10 = aVar.d(this, i9, aVar.b(i9));
            TagView tagView = new TagView(getContext());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) d10.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(marginLayoutParams);
            marginLayoutParams2.width = -2;
            marginLayoutParams2.height = -2;
            marginLayoutParams2.topMargin = marginLayoutParams.topMargin;
            marginLayoutParams2.bottomMargin = marginLayoutParams.bottomMargin;
            marginLayoutParams2.leftMargin = marginLayoutParams.leftMargin;
            marginLayoutParams2.rightMargin = marginLayoutParams.rightMargin;
            d10.setDuplicateParentStateEnabled(true);
            if (d10.getLayoutParams() != null) {
                tagView.setLayoutParams(d10.getLayoutParams());
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams2.setMargins(0, 0, 0, 0);
                tagView.setLayoutParams(marginLayoutParams3);
            }
            tagView.addView(d10);
            addView(tagView);
            if (c10.contains(Integer.valueOf(i9))) {
                tagView.setChecked(true);
            }
            if (this.f26996f.f(i9, aVar.b(i9))) {
                this.f27000j.add(Integer.valueOf(i9));
                tagView.setChecked(true);
            }
            if (this.f26996f.f27009d.contains(Integer.valueOf(i9))) {
                tagView.setEnabled(false);
                tagView.setFocusable(false);
                tagView.setOnClickListener(new a());
            }
        }
        this.f27000j.addAll(c10);
    }

    private void c(TagView tagView, int i9) {
        if (this.f26997g) {
            if (!tagView.isChecked()) {
                if (this.f26998h == 1 && this.f27000j.size() == 1) {
                    Integer next = this.f27000j.iterator().next();
                    ((TagView) getChildAt(next.intValue())).setChecked(false);
                    tagView.setChecked(true);
                    this.f27000j.remove(next);
                    this.f27000j.add(Integer.valueOf(i9));
                } else if (this.f26998h > 0 && this.f27000j.size() >= this.f26998h) {
                    return;
                } else {
                    tagView.setChecked(true);
                    this.f27000j.add(Integer.valueOf(i9));
                }
            } else {
                tagView.setChecked(false);
                this.f27000j.remove(Integer.valueOf(i9));
            }
            b bVar = this.f27001k;
            if (bVar != null) {
                bVar.a(new HashSet(this.f27000j));
            }
        }
    }

    private TagView d(int i9, int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            TagView tagView = (TagView) getChildAt(i11);
            if (tagView.getVisibility() != 8) {
                Rect rect = new Rect();
                tagView.getHitRect(rect);
                if (rect.contains(i9, i10)) {
                    return tagView;
                }
            }
        }
        return null;
    }

    private int e(View view) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            if (getChildAt(i9) == view) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.guochao.faceshow.views.flowlayout.a.InterfaceC0269a
    public void a() {
        this.f27000j.clear();
        b();
    }

    public com.guochao.faceshow.views.flowlayout.a getAdapter() {
        return this.f26996f;
    }

    public Set<Integer> getSelectedList() {
        return new HashSet(this.f27000j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.views.flowlayout.FlowLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            TagView tagView = (TagView) getChildAt(i11);
            if (tagView.getVisibility() != 8 && tagView.getTagView().getVisibility() == 8) {
                tagView.setVisibility(8);
            }
        }
        super.onMeasure(i9, i10);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            String string = bundle.getString("key_choose_pos");
            if (!TextUtils.isEmpty(string)) {
                for (String str : string.split("\\|")) {
                    int parseInt = Integer.parseInt(str);
                    this.f27000j.add(Integer.valueOf(parseInt));
                    TagView tagView = (TagView) getChildAt(parseInt);
                    if (tagView != null) {
                        tagView.setChecked(true);
                    }
                }
            }
            super.onRestoreInstanceState(bundle.getParcelable("key_default"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("key_default", super.onSaveInstanceState());
        String str = "";
        if (this.f27000j.size() > 0) {
            for (Integer num : this.f27000j) {
                str = str + num.intValue() + HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
            }
            str = str.substring(0, str.length() - 1);
        }
        bundle.putString("key_choose_pos", str);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f26999i = MotionEvent.obtain(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        MotionEvent motionEvent = this.f26999i;
        if (motionEvent == null) {
            return super.performClick();
        }
        this.f26999i = null;
        TagView d10 = d((int) motionEvent.getX(), (int) this.f26999i.getY());
        int e10 = e(d10);
        if (d10 != null) {
            c(d10, e10);
            c cVar = this.f27002l;
            if (cVar != null) {
                return cVar.a(d10.getTagView(), e10, this);
            }
            return true;
        }
        return true;
    }

    public void setAdapter(com.guochao.faceshow.views.flowlayout.a aVar) {
        this.f26996f = aVar;
        aVar.setOnDataChangedListener(this);
        this.f27000j.clear();
        b();
    }

    public void setMaxSelectCount(int i9) {
        if (this.f27000j.size() > i9) {
            Log.w("TagFlowLayout", "you has already select more than " + i9 + " views , so it will be clear .");
            this.f27000j.clear();
        }
        this.f26998h = i9;
    }

    public void setOnSelectListener(b bVar) {
        this.f27001k = bVar;
        if (bVar != null) {
            setClickable(true);
        }
    }

    public void setOnTagClickListener(c cVar) {
        this.f27002l = cVar;
        if (cVar != null) {
            setClickable(true);
        }
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TagFlowLayout(Context context) {
        this(context, null);
    }
}
