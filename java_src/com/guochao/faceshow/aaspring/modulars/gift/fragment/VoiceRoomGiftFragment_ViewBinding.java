package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public final class VoiceRoomGiftFragment_ViewBinding extends GiftFragment_ViewBinding {

    /* renamed from: k  reason: collision with root package name */
    private VoiceRoomGiftFragment f17882k;

    /* renamed from: l  reason: collision with root package name */
    private View f17883l;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VoiceRoomGiftFragment f17884a;

        a(VoiceRoomGiftFragment voiceRoomGiftFragment) {
            this.f17884a = voiceRoomGiftFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17884a.onViewClicked();
        }
    }

    @UiThread
    public VoiceRoomGiftFragment_ViewBinding(VoiceRoomGiftFragment voiceRoomGiftFragment, View view) {
        super(voiceRoomGiftFragment, view);
        this.f17882k = voiceRoomGiftFragment;
        View c10 = butterknife.internal.c.c(view, R.id.iv_user_info, "method 'onViewClicked'");
        this.f17883l = c10;
        c10.setOnClickListener(new a(voiceRoomGiftFragment));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        if (this.f17882k != null) {
            this.f17882k = null;
            this.f17883l.setOnClickListener(null);
            this.f17883l = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
