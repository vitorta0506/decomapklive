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
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_core.R$id;
import com.guochao.lib_core.R$layout;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
/* loaded from: classes3.dex */
public class UgcFooter extends FrameLayout implements wd.f {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f24087a;

    /* renamed from: b  reason: collision with root package name */
    private View f24088b;

    /* renamed from: c  reason: collision with root package name */
    AnimationDrawable f24089c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f24090d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f24091e;

    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f24092a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f24092a = iArr;
            try {
                iArr[RefreshState.PullUpToLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24092a[RefreshState.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24092a[RefreshState.ReleaseToLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24092a[RefreshState.LoadReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f24092a[RefreshState.LoadFinish.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public UgcFooter(Context context) {
        super(context);
        r(context, null);
    }

    private void r(Context context, AttributeSet attributeSet) {
        LayoutInflater.from(context).inflate(R$layout.layout_loadmore_footer, this);
        setPaddingRelative(getPaddingStart(), DensityUtil.dp2px(getContext(), 20.0f), getPaddingEnd(), DensityUtil.dp2px(getContext(), 33.0f));
        this.f24087a = (ImageView) findViewById(R$id.loading);
        this.f24088b = findViewById(R$id.load_done);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f24087a.getDrawable();
        this.f24089c = animationDrawable;
        animationDrawable.start();
    }

    private void s() {
        if (this.f24091e) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
        this.f24087a.setVisibility(8);
        this.f24088b.setVisibility(0);
        setVisibility(0);
    }

    @Override // wd.h
    public void a(@NonNull wd.j jVar, int i9, int i10) {
    }

    @Override // wd.f
    public boolean b(boolean z10) {
        return true;
    }

    @Override // wd.h
    public int c(@NonNull wd.j jVar, boolean z10) {
        this.f24087a.setVisibility(8);
        this.f24088b.setVisibility(0);
        return 0;
    }

    @Override // zd.f
    public void e(@NonNull wd.j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        int i9 = a.f24092a[refreshState2.ordinal()];
        if (i9 != 1 && i9 != 2 && i9 != 3 && i9 != 4) {
            if (i9 != 5) {
                return;
            }
            if (this.f24090d && !this.f24091e) {
                s();
            } else {
                setVisibility(4);
            }
        } else if (this.f24090d && !this.f24091e) {
            s();
        } else if (this.f24091e) {
        } else {
            setVisibility(0);
            this.f24087a.setVisibility(0);
            this.f24088b.setVisibility(8);
        }
    }

    @Override // wd.h
    public void g(@NonNull wd.i iVar, int i9, int i10) {
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

    public void setLoading(boolean z10) {
        if (z10) {
            setVisibility(0);
            this.f24087a.setVisibility(0);
            this.f24088b.setVisibility(8);
            return;
        }
        this.f24087a.setVisibility(8);
        this.f24088b.setVisibility(0);
    }

    @Override // wd.h
    public void setPrimaryColors(int... iArr) {
    }

    public void t(boolean z10, boolean z11) {
        this.f24090d = !z10;
        this.f24091e = z11;
        if (z11) {
            setVisibility(4);
        } else {
            setVisibility(0);
        }
        if (this.f24090d && !z11) {
            s();
            return;
        }
        this.f24088b.setVisibility(0);
        this.f24087a.setVisibility(8);
    }

    public UgcFooter(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        r(context, attributeSet);
    }

    public UgcFooter(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        r(context, attributeSet);
    }
}
