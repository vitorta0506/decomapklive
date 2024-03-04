package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class MediaFilesFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MediaFilesFragment f16177b;

    /* renamed from: c  reason: collision with root package name */
    private View f16178c;

    /* renamed from: d  reason: collision with root package name */
    private View f16179d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaFilesFragment f16180a;

        a(MediaFilesFragment mediaFilesFragment) {
            this.f16180a = mediaFilesFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16180a.gallery(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MediaFilesFragment f16182a;

        b(MediaFilesFragment mediaFilesFragment) {
            this.f16182a = mediaFilesFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16182a.gallery(view);
        }
    }

    @UiThread
    public MediaFilesFragment_ViewBinding(MediaFilesFragment mediaFilesFragment, View view) {
        this.f16177b = mediaFilesFragment;
        mediaFilesFragment.bottomLay = (LinearLayout) butterknife.internal.c.d(view, R.id.bottom_lay, "field 'bottomLay'", LinearLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.compile, "field 'compile' and method 'gallery'");
        mediaFilesFragment.compile = (TextView) butterknife.internal.c.a(c10, R.id.compile, "field 'compile'", TextView.class);
        this.f16178c = c10;
        c10.setOnClickListener(new a(mediaFilesFragment));
        View c11 = butterknife.internal.c.c(view, R.id.gallery, "field 'gallery' and method 'gallery'");
        mediaFilesFragment.gallery = (TextView) butterknife.internal.c.a(c11, R.id.gallery, "field 'gallery'", TextView.class);
        this.f16179d = c11;
        c11.setOnClickListener(new b(mediaFilesFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MediaFilesFragment mediaFilesFragment = this.f16177b;
        if (mediaFilesFragment != null) {
            this.f16177b = null;
            mediaFilesFragment.bottomLay = null;
            mediaFilesFragment.compile = null;
            mediaFilesFragment.gallery = null;
            this.f16178c.setOnClickListener(null);
            this.f16178c = null;
            this.f16179d.setOnClickListener(null);
            this.f16179d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
