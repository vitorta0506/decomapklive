package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.modulars.live.adapter.BaseLiveAdapter;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.List;
/* loaded from: classes3.dex */
public class MultiLivePlayView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.Adapter f23884a;

    /* renamed from: b  reason: collision with root package name */
    RecyclerView.AdapterDataObserver f23885b;

    /* renamed from: c  reason: collision with root package name */
    b[] f23886c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23887d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23888e;
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f23889f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArray<RecyclerView.ViewHolder> f23890g;

    /* renamed from: h  reason: collision with root package name */
    private SparseArray<List<RecyclerView.ViewHolder>> f23891h;

    /* renamed from: i  reason: collision with root package name */
    float f23892i;

    /* renamed from: j  reason: collision with root package name */
    float f23893j;

    /* renamed from: k  reason: collision with root package name */
    float f23894k;

    /* renamed from: l  reason: collision with root package name */
    float f23895l;

    /* loaded from: classes3.dex */
    class a extends RecyclerView.AdapterDataObserver {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            MultiLivePlayView.this.f();
        }
    }

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f23897a;

        /* renamed from: b  reason: collision with root package name */
        public int f23898b;

        /* renamed from: c  reason: collision with root package name */
        public int f23899c;

        /* renamed from: d  reason: collision with root package name */
        public int f23900d;

        /* renamed from: e  reason: collision with root package name */
        public int f23901e;

        /* renamed from: f  reason: collision with root package name */
        public int f23902f;

        @NonNull
        public String toString() {
            return "w:" + this.f23897a + "  h:" + this.f23898b + "    t:" + this.f23899c + "   " + NotifyType.LIGHTS + this.f23900d + "    r:" + this.f23901e + "   b:" + this.f23902f;
        }
    }

    /* loaded from: classes3.dex */
    public static class c extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f23903a;

        public c(int i9, int i10) {
            super(i9, i10);
            this.f23903a = -1;
        }
    }

    public MultiLivePlayView(Context context) {
        super(context);
        this.f23885b = new a();
        this.f23888e = false;
        this.f23889f = -1;
        this.f23890g = new SparseArray<>();
        this.f23891h = new SparseArray<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static b[] c(int i9, int i10, int i11, MultiLivePlayView multiLivePlayView, boolean z10) {
        b[] bVarArr = new b[i11];
        int i12 = 0;
        if (z10) {
            b bVar = new b();
            int i13 = i9 / 2;
            bVar.f23897a = i13;
            bVar.f23898b = i10;
            bVar.f23902f = i10;
            bVar.f23901e = i13;
            bVarArr[0] = bVar;
            b bVar2 = new b();
            bVar2.f23897a = i13;
            bVar2.f23898b = i10;
            bVar2.f23900d = i13;
            bVar2.f23901e = i9;
            bVar2.f23902f = i10;
            if (i11 > 1) {
                bVarArr[1] = bVar2;
            }
            return bVarArr;
        }
        b bVar3 = new b();
        int i14 = 2;
        switch (i11) {
            case 1:
                bVar3.f23902f = i10;
                bVar3.f23901e = i9;
                bVarArr[0] = bVar3;
                break;
            case 2:
                bVar3.f23902f = i10;
                int i15 = i9 / 2;
                bVar3.f23901e = i15;
                bVarArr[0] = bVar3;
                b bVar4 = new b();
                bVar4.f23902f = i10;
                bVar4.f23901e = i9;
                bVar4.f23900d = i15;
                bVarArr[1] = bVar4;
                break;
            case 3:
                int i16 = i10 / 2;
                bVar3.f23902f = i16;
                int i17 = i9 / 4;
                bVar3.f23901e = i17 * 3;
                bVar3.f23900d = i17;
                bVarArr[0] = bVar3;
                b bVar5 = new b();
                bVar5.f23899c = i16;
                bVar5.f23902f = i10;
                int i18 = i9 / 2;
                bVar5.f23901e = i18;
                bVar5.f23900d = 0;
                bVarArr[1] = bVar5;
                b bVar6 = new b();
                bVar6.f23899c = i16;
                bVar6.f23902f = i10;
                bVar6.f23901e = i9;
                bVar6.f23900d = i18;
                bVarArr[2] = bVar6;
                break;
            case 4:
                while (i12 < i11) {
                    int i19 = (i12 / 2) + 1;
                    int i20 = (i12 % 2) + 1;
                    int i21 = i10 / 2;
                    bVar3.f23902f = i21 * i19;
                    int i22 = i9 / 2;
                    bVar3.f23901e = i22 * i20;
                    bVar3.f23900d = i22 * (i20 - 1);
                    bVar3.f23899c = i21 * (i19 - 1);
                    bVarArr[i12] = bVar3;
                    bVar3 = new b();
                    i12++;
                }
                break;
            case 5:
                int i23 = i10 / 2;
                bVar3.f23902f = i23;
                int i24 = i9 / 2;
                bVar3.f23901e = i24;
                bVarArr[0] = bVar3;
                b bVar7 = new b();
                bVar7.f23902f = i23;
                bVar7.f23901e = i9;
                bVar7.f23900d = i24;
                bVarArr[1] = bVar7;
                while (i14 < i11) {
                    b bVar8 = new b();
                    int i25 = i14 + 1;
                    int i26 = i25 % 3;
                    bVar8.f23902f = i10;
                    bVar8.f23899c = i23;
                    int i27 = i9 / 3;
                    bVar8.f23900d = i27 * i26;
                    bVar8.f23901e = i27 * (i26 + 1);
                    bVarArr[i14] = bVar8;
                    i14 = i25;
                }
                break;
            case 6:
            default:
                int i28 = i11 / 3;
                while (i12 < i11) {
                    int i29 = (i12 / 3) + 1;
                    int i30 = (i12 % 3) + 1;
                    int i31 = i10 / i28;
                    bVar3.f23902f = i31 * i29;
                    int i32 = i9 / 3;
                    bVar3.f23901e = i32 * i30;
                    bVar3.f23900d = i32 * (i30 - 1);
                    bVar3.f23899c = i31 * (i29 - 1);
                    bVarArr[i12] = bVar3;
                    bVar3 = new b();
                    i12++;
                }
                break;
            case 7:
                int i33 = i10 / 3;
                bVar3.f23902f = i33;
                int i34 = i9 / 3;
                bVar3.f23901e = i34 * 2;
                bVar3.f23900d = i34;
                bVarArr[0] = bVar3;
                for (int i35 = 1; i35 < i11; i35++) {
                    b bVar9 = new b();
                    int i36 = i35 + 2;
                    int i37 = i36 % 3;
                    int i38 = (i36 / 3) + 1;
                    bVar9.f23902f = i33 * i38;
                    bVar9.f23899c = (i38 - 1) * i33;
                    bVar9.f23900d = i34 * i37;
                    bVar9.f23901e = (i37 + 1) * i34;
                    bVarArr[i35] = bVar9;
                }
                break;
            case 8:
                int i39 = i10 / 3;
                bVar3.f23902f = i39;
                int i40 = i9 / 6;
                bVar3.f23900d = i40;
                int i41 = i9 / 3;
                bVar3.f23901e = i40 + i41;
                bVarArr[0] = bVar3;
                b bVar10 = new b();
                bVar10.f23902f = i39;
                int i42 = i40 + i41;
                bVar10.f23900d = i42;
                bVar10.f23901e = i42 + i41;
                bVarArr[1] = bVar10;
                while (i14 < i11) {
                    b bVar11 = new b();
                    int i43 = i14 + 1;
                    int i44 = i43 % 3;
                    int i45 = (i43 / 3) + 1;
                    bVar11.f23902f = i39 * i45;
                    bVar11.f23899c = (i45 - 1) * i39;
                    bVar11.f23900d = i41 * i44;
                    bVar11.f23901e = (i44 + 1) * i41;
                    bVarArr[i14] = bVar11;
                    i14 = i43;
                }
                break;
        }
        return bVarArr;
    }

    private BaseLiveRoomHolder d(int i9) {
        return (BaseLiveRoomHolder) this.f23884a.createViewHolder(this, i9);
    }

    private void e(int i9, RecyclerView.ViewHolder viewHolder) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        int itemCount = this.f23884a.getItemCount();
        int i9 = this.f23889f;
        if (i9 != -1) {
            if (itemCount != 5 && itemCount != 7 && itemCount != 8 && itemCount != 3) {
                setBackgroundDrawable(null);
            } else {
                setBackgroundColor(i9);
            }
        }
        while (getChildCount() < itemCount) {
            BaseLiveRoomHolder d10 = d(this.f23884a.getItemViewType(getChildCount()));
            this.f23890g.put(getChildCount(), d10);
            addView(d10.itemView);
        }
        while (getChildCount() > itemCount) {
            int childCount = getChildCount() - 1;
            removeViewAt(childCount);
            RecyclerView.ViewHolder valueAt = this.f23890g.valueAt(childCount);
            if (valueAt != null) {
                e(valueAt.getItemViewType(), this.f23890g.valueAt(childCount));
                this.f23890g.removeAt(childCount);
            }
        }
        for (int i10 = 0; i10 < this.f23884a.getItemCount(); i10++) {
            BaseLiveRoomHolder baseLiveRoomHolder = (BaseLiveRoomHolder) this.f23890g.valueAt(i10);
            if (baseLiveRoomHolder != null) {
                int itemViewType = this.f23884a.getItemViewType(i10);
                int itemViewType2 = baseLiveRoomHolder.getItemViewType();
                if (itemViewType != itemViewType2) {
                    baseLiveRoomHolder.g();
                    e(itemViewType2, baseLiveRoomHolder);
                    baseLiveRoomHolder = d(itemViewType);
                    removeViewAt(i10);
                    addView(baseLiveRoomHolder.itemView, i10);
                    this.f23890g.put(i10, baseLiveRoomHolder);
                }
                this.f23884a.bindViewHolder(baseLiveRoomHolder, i10);
            }
        }
    }

    @Nullable
    public RecyclerView.ViewHolder b(int i9) {
        RecyclerView.ViewHolder valueAt;
        if (i9 < this.f23890g.size() && (valueAt = this.f23890g.valueAt(i9)) != null && (valueAt instanceof RecyclerView.ViewHolder)) {
            return valueAt;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            if (r0 == 0) goto L5c
            r2 = 0
            if (r0 == r1) goto L54
            r3 = 2
            if (r0 == r3) goto L11
            r1 = 3
            if (r0 == r1) goto L54
            goto L73
        L11:
            float r0 = r6.getRawX()
            r5.f23892i = r0
            float r0 = r6.getRawY()
            r5.f23893j = r0
            com.guochao.faceshow.BaseApplication r0 = com.guochao.faceshow.BaseApplication.getInstance()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            float r3 = r5.f23894k
            float r4 = r5.f23892i
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            float r0 = (float) r0
            int r3 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r3 >= 0) goto L4c
            float r3 = r5.f23895l
            float r4 = r5.f23893j
            float r3 = r3 - r4
            float r3 = java.lang.Math.abs(r3)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 >= 0) goto L4c
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            goto L73
        L4c:
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L73
        L54:
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L73
        L5c:
            android.view.ViewParent r0 = r5.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            float r0 = r6.getRawX()
            r5.f23892i = r0
            r5.f23894k = r0
            float r0 = r6.getRawY()
            r5.f23893j = r0
            r5.f23895l = r0
        L73:
            boolean r6 = super.dispatchTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.MultiLivePlayView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void g(int i9) {
        if (i9 >= getChildCount()) {
            return;
        }
        BaseLiveRoomHolder baseLiveRoomHolder = (BaseLiveRoomHolder) this.f23890g.valueAt(i9);
        if (baseLiveRoomHolder != null) {
            baseLiveRoomHolder.g();
            e(baseLiveRoomHolder.getItemViewType(), baseLiveRoomHolder);
        }
        removeViewAt(i9);
        this.f23890g.remove(i9);
        SparseArray sparseArray = new SparseArray();
        for (int i10 = 0; i10 < this.f23890g.size(); i10++) {
            sparseArray.put(i10, this.f23890g.valueAt(i10));
        }
        this.f23890g.clear();
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            this.f23890g.put(i11, (RecyclerView.ViewHolder) sparseArray.valueAt(i11));
        }
        for (int i12 = 0; i12 < this.f23884a.getItemCount(); i12++) {
            getChildAt(i12);
            this.f23884a.bindViewHolder((BaseLiveRoomHolder) this.f23890g.valueAt(i12), i12);
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    public BaseLiveAdapter getAdapter() {
        return (BaseLiveAdapter) this.f23884a;
    }

    public int getDefaultGapBackgroundColor() {
        return this.f23889f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int childCount = getChildCount();
        LogUtils.i("WatchLiveRoomActivity: multiLivePlayView.size:" + childCount);
        b[] c10 = c(getMeasuredWidth(), getMeasuredHeight(), childCount, this, this.f23887d);
        for (int i13 = 0; i13 < childCount; i13++) {
            b bVar = c10[i13];
            getChildAt(i13).layout(bVar.f23900d, bVar.f23899c, bVar.f23901e, bVar.f23902f);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        setMeasuredDimension(size, size2);
        int childCount = getChildCount();
        this.f23886c = c(size, size2, childCount, this, this.f23887d);
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            b[] bVarArr = this.f23886c;
            int i12 = bVarArr[i11].f23901e - bVarArr[i11].f23900d;
            layoutParams.width = i12;
            layoutParams.height = bVarArr[i11].f23902f - bVarArr[i11].f23899c;
            childAt.measure(View.MeasureSpec.makeMeasureSpec(i12, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams.height, BasicMeasure.EXACTLY));
        }
    }

    public void setAdapter(RecyclerView.Adapter<?> adapter) {
        RecyclerView.Adapter adapter2 = this.f23884a;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.f23885b);
        }
        this.f23884a = adapter;
        adapter.registerAdapterDataObserver(this.f23885b);
        f();
    }

    public void setDefaultGapBackgroundColor(int i9) {
        this.f23889f = i9;
    }

    public void setLinkMicing(boolean z10) {
        if (this.f23888e == z10) {
            return;
        }
        this.f23888e = z10;
        requestLayout();
    }

    public void setPkMode(boolean z10) {
        if (this.f23887d == z10) {
            return;
        }
        this.f23887d = z10;
        requestLayout();
    }

    public MultiLivePlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23885b = new a();
        this.f23888e = false;
        this.f23889f = -1;
        this.f23890g = new SparseArray<>();
        this.f23891h = new SparseArray<>();
    }

    public MultiLivePlayView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23885b = new a();
        this.f23888e = false;
        this.f23889f = -1;
        this.f23890g = new SparseArray<>();
        this.f23891h = new SparseArray<>();
    }
}
