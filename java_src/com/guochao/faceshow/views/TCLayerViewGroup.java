package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class TCLayerViewGroup extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<TCLayerOperationView> f26805a;

    /* renamed from: b  reason: collision with root package name */
    private int f26806b;

    /* renamed from: c  reason: collision with root package name */
    private a f26807c;

    /* loaded from: classes4.dex */
    public interface a {
        void f(TCLayerOperationView tCLayerOperationView, int i9, int i10);
    }

    public TCLayerViewGroup(Context context) {
        super(context);
        this.f26806b = -1;
        c();
    }

    private void c() {
        this.f26805a = new ArrayList();
    }

    private void e(int i9) {
        if (i9 >= this.f26805a.size() || i9 < 0) {
            return;
        }
        int i10 = this.f26806b;
        if (i10 != -1) {
            this.f26805a.get(i10).setEditable(false);
        }
        this.f26805a.get(i9).setEditable(true);
        this.f26806b = i9;
    }

    public void a(TCLayerOperationView tCLayerOperationView) {
        this.f26805a.add(tCLayerOperationView);
        e(this.f26805a.size() - 1);
        addView(tCLayerOperationView);
        tCLayerOperationView.setOnClickListener(this);
    }

    public TCLayerOperationView b(int i9) {
        return this.f26805a.get(i9);
    }

    public void d(TCLayerOperationView tCLayerOperationView) {
        this.f26805a.indexOf(tCLayerOperationView);
        this.f26805a.remove(tCLayerOperationView);
        this.f26806b = -1;
        removeView(tCLayerOperationView);
        tCLayerOperationView.setOnClickListener(null);
    }

    @Override // android.view.ViewGroup
    public int getChildCount() {
        return this.f26805a.size();
    }

    public TCLayerOperationView getSelectedLayerOperationView() {
        int i9 = this.f26806b;
        if (i9 < 0 || i9 >= this.f26805a.size()) {
            return null;
        }
        return this.f26805a.get(this.f26806b);
    }

    public int getSelectedViewIndex() {
        return this.f26806b;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TCLayerOperationView tCLayerOperationView = (TCLayerOperationView) view;
        int indexOf = this.f26805a.indexOf(tCLayerOperationView);
        int i9 = this.f26806b;
        e(indexOf);
        a aVar = this.f26807c;
        if (aVar != null) {
            aVar.f(tCLayerOperationView, i9, indexOf);
        }
    }

    public void setOnItemClickListener(a aVar) {
        this.f26807c = aVar;
    }

    public void setViewVisiable(int i9) {
        int i10;
        if (i9 != this.f26806b) {
            if (i9 < this.f26805a.size() && i9 >= 0 && (i10 = this.f26806b) != -1) {
                this.f26805a.get(i10).setVisibility(8);
            }
            if (i9 >= this.f26805a.size() || i9 < 0) {
                return;
            }
            this.f26805a.get(i9).setVisibility(0);
            this.f26805a.get(i9).setEditable(true);
            this.f26806b = i9;
        }
    }

    public TCLayerViewGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26806b = -1;
        c();
    }

    public TCLayerViewGroup(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26806b = -1;
        c();
    }
}
