package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
/* loaded from: classes3.dex */
public class OldFooter extends FrameLayout implements wd.f {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f23913a;

    /* renamed from: b  reason: collision with root package name */
    private View f23914b;

    /* renamed from: c  reason: collision with root package name */
    AnimationDrawable f23915c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23916d;

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f23917a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f23917a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f23917a[RefreshState.PullUpToLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f23917a[RefreshState.Loading.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f23917a[RefreshState.ReleaseToLoad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f23917a[RefreshState.LoadReleased.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OldFooter(Context context) {
        super(context);
        r(context, null);
    }

    private void s() {
        this.f23913a.setVisibility(8);
        this.f23914b.setVisibility(0);
        this.f23915c.stop();
    }

    @Override // wd.h
    public void a(@NonNull wd.j jVar, int i9, int i10) {
    }

    @Override // wd.f
    public boolean b(boolean z10) {
        this.f23916d = z10;
        if (z10) {
            s();
            return true;
        }
        this.f23913a.setVisibility(0);
        this.f23914b.setVisibility(8);
        this.f23915c.start();
        return true;
    }

    @Override // wd.h
    public int c(@NonNull wd.j jVar, boolean z10) {
        this.f23915c.stop();
        this.f23913a.setVisibility(8);
        this.f23914b.setVisibility(0);
        return 0;
    }

    @Override // zd.f
    public void e(@NonNull wd.j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        if (this.f23916d) {
            s();
            return;
        }
        int i9 = a.f23917a[refreshState2.ordinal()];
        if (i9 == 1 || i9 == 2 || i9 == 3 || i9 == 4 || i9 == 5) {
            this.f23915c.start();
            this.f23913a.setVisibility(0);
            this.f23914b.setVisibility(8);
        }
    }

    @Override // wd.h
    public void g(@NonNull wd.i iVar, int i9, int i10) {
    }

    protected int getLayoutId() {
        return R.layout.layout_loadmore_footer;
    }

    @Override // wd.h
    @NonNull
    public SpinnerStyle getSpinnerStyle() {
        return SpinnerStyle.Translate;
    }

    @Override // wd.h
    @NonNull
    public View getView() {
        return this;
    }

    @Override // wd.h
    public void h(float f10, int i9, int i10) {
    }

    @Override // wd.h
    public boolean j() {
        return false;
    }

    @Override // wd.h
    public void k(@NonNull wd.j jVar, int i9, int i10) {
    }

    @Override // wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
    }

    protected void r(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(getLayoutId(), this);
        setPaddingRelative(getPaddingStart(), DensityUtil.dp2px(getContext(), 16.0f), getPaddingEnd(), DensityUtil.dp2px(getContext(), 48.0f));
        this.f23913a = (ImageView) findViewById(R.id.loading);
        this.f23914b = findViewById(R.id.load_done);
        this.f23915c = (AnimationDrawable) this.f23913a.getDrawable();
    }

    @Override // wd.h
    public void setPrimaryColors(int... iArr) {
    }

    public OldFooter(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        r(context, attributeSet);
    }

    public OldFooter(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        r(context, attributeSet);
    }
}
