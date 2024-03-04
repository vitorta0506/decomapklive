package com.guochao.faceshow.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class MusicActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private MusicActivity f24652c;

    /* renamed from: d  reason: collision with root package name */
    private View f24653d;

    /* renamed from: e  reason: collision with root package name */
    private View f24654e;

    /* renamed from: f  reason: collision with root package name */
    private View f24655f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicActivity f24656a;

        a(MusicActivity musicActivity) {
            this.f24656a = musicActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24656a.getEvent(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicActivity f24658a;

        b(MusicActivity musicActivity) {
            this.f24658a = musicActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24658a.getEvent(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicActivity f24660a;

        c(MusicActivity musicActivity) {
            this.f24660a = musicActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f24660a.getEvent(view);
        }
    }

    @UiThread
    public MusicActivity_ViewBinding(MusicActivity musicActivity, View view) {
        super(musicActivity, view);
        this.f24652c = musicActivity;
        View c10 = butterknife.internal.c.c(view, R.id.music_online, "method 'getEvent'");
        this.f24653d = c10;
        c10.setOnClickListener(new a(musicActivity));
        View c11 = butterknife.internal.c.c(view, R.id.music_mine, "method 'getEvent'");
        this.f24654e = c11;
        c11.setOnClickListener(new b(musicActivity));
        View c12 = butterknife.internal.c.c(view, R.id.music_conllect, "method 'getEvent'");
        this.f24655f = c12;
        c12.setOnClickListener(new c(musicActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f24652c != null) {
            this.f24652c = null;
            this.f24653d.setOnClickListener(null);
            this.f24653d = null;
            this.f24654e.setOnClickListener(null);
            this.f24654e = null;
            this.f24655f.setOnClickListener(null);
            this.f24655f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
