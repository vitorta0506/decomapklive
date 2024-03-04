package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class LivePeopleInfoCardFragmentV2_ViewBinding extends LivePeopleInfoCardFragment_ViewBinding {

    /* renamed from: k  reason: collision with root package name */
    private LivePeopleInfoCardFragmentV2 f18777k;

    /* renamed from: l  reason: collision with root package name */
    private View f18778l;

    /* renamed from: m  reason: collision with root package name */
    private View f18779m;

    /* renamed from: n  reason: collision with root package name */
    private View f18780n;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragmentV2 f18781a;

        a(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2) {
            this.f18781a = livePeopleInfoCardFragmentV2;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18781a.menuButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragmentV2 f18783a;

        b(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2) {
            this.f18783a = livePeopleInfoCardFragmentV2;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18783a.menuButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LivePeopleInfoCardFragmentV2 f18785a;

        c(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2) {
            this.f18785a = livePeopleInfoCardFragmentV2;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18785a.menuButtonClick(view);
        }
    }

    @UiThread
    public LivePeopleInfoCardFragmentV2_ViewBinding(LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2, View view) {
        super(livePeopleInfoCardFragmentV2, view);
        this.f18777k = livePeopleInfoCardFragmentV2;
        livePeopleInfoCardFragmentV2.userRoleView = (TextView) butterknife.internal.c.d(view, R.id.role, "field 'userRoleView'", TextView.class);
        livePeopleInfoCardFragmentV2.micStatus = butterknife.internal.c.c(view, R.id.mic_status, "field 'micStatus'");
        livePeopleInfoCardFragmentV2.micArea = butterknife.internal.c.c(view, R.id.mic_area, "field 'micArea'");
        livePeopleInfoCardFragmentV2.bottomButtonArea = butterknife.internal.c.c(view, R.id.bottom_button_area, "field 'bottomButtonArea'");
        View c10 = butterknife.internal.c.c(view, R.id.people_card_at_btn, "method 'menuButtonClick'");
        this.f18778l = c10;
        c10.setOnClickListener(new a(livePeopleInfoCardFragmentV2));
        View c11 = butterknife.internal.c.c(view, R.id.people_card_chat, "method 'menuButtonClick'");
        this.f18779m = c11;
        c11.setOnClickListener(new b(livePeopleInfoCardFragmentV2));
        View c12 = butterknife.internal.c.c(view, R.id.send_gift, "method 'menuButtonClick'");
        this.f18780n = c12;
        c12.setOnClickListener(new c(livePeopleInfoCardFragmentV2));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LivePeopleInfoCardFragmentV2 livePeopleInfoCardFragmentV2 = this.f18777k;
        if (livePeopleInfoCardFragmentV2 != null) {
            this.f18777k = null;
            livePeopleInfoCardFragmentV2.userRoleView = null;
            livePeopleInfoCardFragmentV2.micStatus = null;
            livePeopleInfoCardFragmentV2.micArea = null;
            livePeopleInfoCardFragmentV2.bottomButtonArea = null;
            this.f18778l.setOnClickListener(null);
            this.f18778l = null;
            this.f18779m.setOnClickListener(null);
            this.f18779m = null;
            this.f18780n.setOnClickListener(null);
            this.f18780n = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
