package com.yanzhenjie.recyclerview.swipe;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import bg.e;
import bg.f;
import bg.g;
import java.util.List;
/* loaded from: classes5.dex */
public class SwipeMenuView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.ViewHolder f37833a;

    /* renamed from: b  reason: collision with root package name */
    private g f37834b;

    /* renamed from: c  reason: collision with root package name */
    private f f37835c;

    /* renamed from: d  reason: collision with root package name */
    private int f37836d;

    public SwipeMenuView(Context context) {
        this(context, null);
    }

    private ImageView b(e eVar) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(eVar.c());
        return imageView;
    }

    private TextView d(e eVar) {
        TextView textView = new TextView(getContext());
        textView.setText(eVar.d());
        textView.setGravity(17);
        int f10 = eVar.f();
        if (f10 > 0) {
            textView.setTextSize(2, f10);
        }
        ColorStateList h10 = eVar.h();
        if (h10 != null) {
            textView.setTextColor(h10);
        }
        int e10 = eVar.e();
        if (e10 != 0) {
            TextViewCompat.setTextAppearance(textView, e10);
        }
        Typeface g10 = eVar.g();
        if (g10 != null) {
            textView.setTypeface(g10);
        }
        return textView;
    }

    public void a(RecyclerView.ViewHolder viewHolder) {
        this.f37833a = viewHolder;
    }

    public void c(bg.c cVar, g gVar, f fVar, int i9) {
        removeAllViews();
        this.f37834b = gVar;
        this.f37835c = fVar;
        this.f37836d = i9;
        List<e> a10 = cVar.a();
        for (int i10 = 0; i10 < a10.size(); i10++) {
            e eVar = a10.get(i10);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(eVar.j(), eVar.b());
            layoutParams.weight = eVar.i();
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setId(i10);
            linearLayout.setGravity(17);
            linearLayout.setOrientation(1);
            linearLayout.setLayoutParams(layoutParams);
            ViewCompat.setBackground(linearLayout, eVar.a());
            linearLayout.setOnClickListener(this);
            addView(linearLayout);
            c cVar2 = new c(this.f37836d, i10, this.f37834b, linearLayout);
            linearLayout.setTag(cVar2);
            if (eVar.c() != null) {
                ImageView b10 = b(eVar);
                cVar2.f37849g = b10;
                linearLayout.addView(b10);
            }
            if (!TextUtils.isEmpty(eVar.d())) {
                TextView d10 = d(eVar);
                cVar2.f37848f = d10;
                linearLayout.addView(d10);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f37835c == null || !this.f37834b.a()) {
            return;
        }
        c cVar = (c) view.getTag();
        cVar.f37847e = this.f37833a.getAdapterPosition();
        this.f37835c.a(cVar);
    }

    public SwipeMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeMenuView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
