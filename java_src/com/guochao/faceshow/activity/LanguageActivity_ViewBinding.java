package com.guochao.faceshow.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LanguageActivity_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LanguageActivity f24550b;

    @UiThread
    public LanguageActivity_ViewBinding(LanguageActivity languageActivity, View view) {
        this.f24550b = languageActivity;
        languageActivity.lvCountry = (RecyclerView) butterknife.internal.c.d(view, R.id.lvCountry, "field 'lvCountry'", RecyclerView.class);
        languageActivity.mClose = (ImageView) butterknife.internal.c.d(view, R.id.close, "field 'mClose'", ImageView.class);
        languageActivity.mTitle = (TextView) butterknife.internal.c.d(view, R.id.tv_title, "field 'mTitle'", TextView.class);
        languageActivity.saveTV = (TextView) butterknife.internal.c.d(view, R.id.save, "field 'saveTV'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LanguageActivity languageActivity = this.f24550b;
        if (languageActivity != null) {
            this.f24550b = null;
            languageActivity.lvCountry = null;
            languageActivity.mClose = null;
            languageActivity.mTitle = null;
            languageActivity.saveTV = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
