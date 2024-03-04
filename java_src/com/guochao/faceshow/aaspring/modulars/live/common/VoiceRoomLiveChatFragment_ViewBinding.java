package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class VoiceRoomLiveChatFragment_ViewBinding extends LiveChatFragment_ViewBinding {

    /* renamed from: m  reason: collision with root package name */
    private VoiceRoomLiveChatFragment f18980m;

    /* renamed from: n  reason: collision with root package name */
    private View f18981n;

    /* renamed from: o  reason: collision with root package name */
    private View f18982o;

    /* renamed from: p  reason: collision with root package name */
    private View f18983p;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VoiceRoomLiveChatFragment f18984a;

        a(VoiceRoomLiveChatFragment voiceRoomLiveChatFragment) {
            this.f18984a = voiceRoomLiveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18984a.voiceSwitch(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VoiceRoomLiveChatFragment f18986a;

        b(VoiceRoomLiveChatFragment voiceRoomLiveChatFragment) {
            this.f18986a = voiceRoomLiveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18986a.showGift(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VoiceRoomLiveChatFragment f18988a;

        c(VoiceRoomLiveChatFragment voiceRoomLiveChatFragment) {
            this.f18988a = voiceRoomLiveChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18988a.showMore(view);
        }
    }

    @UiThread
    public VoiceRoomLiveChatFragment_ViewBinding(VoiceRoomLiveChatFragment voiceRoomLiveChatFragment, View view) {
        super(voiceRoomLiveChatFragment, view);
        this.f18980m = voiceRoomLiveChatFragment;
        View c10 = butterknife.internal.c.c(view, R.id.voice_switch, "field 'audioSwitch' and method 'voiceSwitch'");
        voiceRoomLiveChatFragment.audioSwitch = (ImageView) butterknife.internal.c.a(c10, R.id.voice_switch, "field 'audioSwitch'", ImageView.class);
        this.f18981n = c10;
        c10.setOnClickListener(new a(voiceRoomLiveChatFragment));
        View c11 = butterknife.internal.c.c(view, R.id.live_gift_btn, "method 'showGift'");
        this.f18982o = c11;
        c11.setOnClickListener(new b(voiceRoomLiveChatFragment));
        View c12 = butterknife.internal.c.c(view, R.id.live_more_btn, "method 'showMore'");
        this.f18983p = c12;
        c12.setOnClickListener(new c(voiceRoomLiveChatFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment_ViewBinding, com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        VoiceRoomLiveChatFragment voiceRoomLiveChatFragment = this.f18980m;
        if (voiceRoomLiveChatFragment != null) {
            this.f18980m = null;
            voiceRoomLiveChatFragment.audioSwitch = null;
            this.f18981n.setOnClickListener(null);
            this.f18981n = null;
            this.f18982o.setOnClickListener(null);
            this.f18982o = null;
            this.f18983p.setOnClickListener(null);
            this.f18983p = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
