package com.lcodecore.tkrefreshlayout.header;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import com.guochao.twink.R$id;
import com.guochao.twink.R$layout;
import kc.b;
import kc.c;
/* loaded from: classes4.dex */
public class SinaRefreshView extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f27973a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f27974b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f27975c;

    /* renamed from: d  reason: collision with root package name */
    private String f27976d;

    /* renamed from: e  reason: collision with root package name */
    private String f27977e;

    /* renamed from: f  reason: collision with root package name */
    private String f27978f;

    public SinaRefreshView(Context context) {
        this(context, null);
    }

    private void d() {
        View inflate = View.inflate(getContext(), R$layout.view_sinaheader, null);
        this.f27973a = (ImageView) inflate.findViewById(R$id.iv_arrow);
        this.f27975c = (TextView) inflate.findViewById(R$id.tv);
        this.f27974b = (ImageView) inflate.findViewById(R$id.iv_loading);
        addView(inflate);
    }

    @Override // kc.b
    public void a(float f10, float f11) {
        this.f27975c.setText(this.f27978f);
        this.f27973a.setVisibility(8);
        this.f27974b.setVisibility(0);
        ((AnimationDrawable) this.f27974b.getDrawable()).start();
    }

    @Override // kc.b
    public void b(float f10, float f11, float f12) {
        if (f10 < 1.0f) {
            this.f27975c.setText(this.f27976d);
            this.f27973a.setRotation(((f10 * f12) / f11) * 180.0f);
            if (this.f27973a.getVisibility() == 8) {
                this.f27973a.setVisibility(0);
                this.f27974b.setVisibility(8);
            }
        }
    }

    @Override // kc.b
    public void c(float f10, float f11, float f12) {
        if (f10 < 1.0f) {
            this.f27975c.setText(this.f27976d);
        }
        if (f10 > 1.0f) {
            this.f27975c.setText(this.f27977e);
        }
        this.f27973a.setRotation(((f10 * f12) / f11) * 180.0f);
    }

    @Override // kc.b
    public View getView() {
        return this;
    }

    @Override // kc.b
    public void onFinish(c cVar) {
        cVar.a();
    }

    @Override // kc.b
    public void reset() {
        this.f27973a.setVisibility(0);
        this.f27974b.setVisibility(8);
        this.f27975c.setText(this.f27976d);
    }

    public void setArrowResource(@DrawableRes int i9) {
        this.f27973a.setImageResource(i9);
    }

    public void setPullDownStr(String str) {
        this.f27976d = str;
    }

    public void setRefreshingStr(String str) {
        this.f27978f = str;
    }

    public void setReleaseRefreshStr(String str) {
        this.f27977e = str;
    }

    public void setTextColor(@ColorInt int i9) {
        this.f27975c.setTextColor(i9);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27976d = "下拉刷新";
        this.f27977e = "释放刷新";
        this.f27978f = "正在刷新";
        d();
    }
}
