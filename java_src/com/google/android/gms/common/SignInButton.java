package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.base.R$styleable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.q0;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.dynamic.RemoteCreator;
/* loaded from: classes2.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f7454a;

    /* renamed from: b  reason: collision with root package name */
    private int f7455b;

    /* renamed from: c  reason: collision with root package name */
    private View f7456c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f7457d;

    public SignInButton(@NonNull Context context) {
        this(context, null);
    }

    private final void b(Context context) {
        View view = this.f7456c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f7456c = q0.c(context, this.f7454a, this.f7455b);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i9 = this.f7454a;
            int i10 = this.f7455b;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.a(context.getResources(), i9, i10);
            this.f7456c = zaaaVar;
        }
        addView(this.f7456c);
        this.f7456c.setEnabled(isEnabled());
        this.f7456c.setOnClickListener(this);
    }

    public void a(int i9, int i10) {
        this.f7454a = i9;
        this.f7455b = i10;
        b(getContext());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NonNull View view) {
        View.OnClickListener onClickListener = this.f7457d;
        if (onClickListener == null || view != this.f7456c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i9) {
        a(this.f7454a, i9);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        this.f7456c.setEnabled(z10);
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f7457d = onClickListener;
        View view = this.f7456c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@NonNull Scope[] scopeArr) {
        a(this.f7454a, this.f7455b);
    }

    public void setSize(int i9) {
        a(i9, this.f7455b);
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f7457d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SignInButton, 0, 0);
        try {
            this.f7454a = obtainStyledAttributes.getInt(R$styleable.SignInButton_buttonSize, 0);
            this.f7455b = obtainStyledAttributes.getInt(R$styleable.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            a(this.f7454a, this.f7455b);
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}
