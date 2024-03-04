package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Button;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.R$color;
import com.twitter.sdk.android.core.R$dimen;
import com.twitter.sdk.android.core.R$drawable;
import com.twitter.sdk.android.core.R$string;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.s;
import java.lang.ref.WeakReference;
/* loaded from: classes4.dex */
public class TwitterLoginButton extends Button {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<Activity> f35126a;

    /* renamed from: b  reason: collision with root package name */
    volatile h f35127b;

    /* renamed from: c  reason: collision with root package name */
    View.OnClickListener f35128c;

    /* renamed from: d  reason: collision with root package name */
    com.twitter.sdk.android.core.b<s> f35129d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        private void a(Activity activity) {
            if (activity == null || activity.isFinishing()) {
                com.twitter.sdk.android.core.internal.b.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
            }
        }

        private void b(com.twitter.sdk.android.core.b bVar) {
            if (bVar == null) {
                com.twitter.sdk.android.core.internal.b.d(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Callback must not be null, did you call setCallback?");
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b(TwitterLoginButton.this.f35129d);
            a(TwitterLoginButton.this.f35126a.get());
            TwitterLoginButton.this.getTwitterAuthClient().a(TwitterLoginButton.this.f35126a.get(), TwitterLoginButton.this.f35129d);
            View.OnClickListener onClickListener = TwitterLoginButton.this.f35128c;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    public TwitterLoginButton(Context context) {
        this(context, null);
    }

    private void a() {
        if (isInEditMode()) {
            return;
        }
        try {
            q.k();
        } catch (IllegalStateException e10) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, e10.getMessage());
            setEnabled(false);
        }
    }

    private void b() {
        Resources resources = getResources();
        super.setCompoundDrawablesWithIntrinsicBounds(resources.getDrawable(R$drawable.tw__ic_logo_default), (Drawable) null, (Drawable) null, (Drawable) null);
        super.setCompoundDrawablePadding(resources.getDimensionPixelSize(R$dimen.tw__login_btn_drawable_padding));
        super.setText(R$string.tw__login_btn_txt);
        super.setTextColor(resources.getColor(R$color.tw__solid_white));
        super.setTextSize(0, resources.getDimensionPixelSize(R$dimen.tw__login_btn_text_size));
        super.setTypeface(Typeface.DEFAULT_BOLD);
        super.setPadding(resources.getDimensionPixelSize(R$dimen.tw__login_btn_left_padding), 0, resources.getDimensionPixelSize(R$dimen.tw__login_btn_right_padding), 0);
        super.setBackgroundResource(R$drawable.tw__login_btn);
        super.setOnClickListener(new b());
        super.setAllCaps(false);
    }

    protected Activity getActivity() {
        if ((getContext() instanceof ContextThemeWrapper) && (((ContextThemeWrapper) getContext()).getBaseContext() instanceof Activity)) {
            return (Activity) ((ContextThemeWrapper) getContext()).getBaseContext();
        }
        if (getContext() instanceof Activity) {
            return (Activity) getContext();
        }
        if (isInEditMode()) {
            return null;
        }
        throw new IllegalStateException("TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
    }

    public com.twitter.sdk.android.core.b<s> getCallback() {
        return this.f35129d;
    }

    h getTwitterAuthClient() {
        if (this.f35127b == null) {
            synchronized (TwitterLoginButton.class) {
                if (this.f35127b == null) {
                    this.f35127b = new h();
                }
            }
        }
        return this.f35127b;
    }

    public void setCallback(com.twitter.sdk.android.core.b<s> bVar) {
        if (bVar != null) {
            this.f35129d = bVar;
            return;
        }
        throw new IllegalArgumentException("Callback cannot be null");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f35128c = onClickListener;
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842824);
    }

    public TwitterLoginButton(Context context, AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, null);
    }

    TwitterLoginButton(Context context, AttributeSet attributeSet, int i9, h hVar) {
        super(context, attributeSet, i9);
        this.f35126a = new WeakReference<>(getActivity());
        this.f35127b = hVar;
        b();
        a();
    }
}
