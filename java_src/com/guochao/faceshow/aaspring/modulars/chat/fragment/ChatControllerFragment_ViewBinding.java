package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ChatControllerFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ChatControllerFragment f16908b;

    /* renamed from: c  reason: collision with root package name */
    private View f16909c;

    /* renamed from: d  reason: collision with root package name */
    private View f16910d;

    /* renamed from: e  reason: collision with root package name */
    private View f16911e;

    /* renamed from: f  reason: collision with root package name */
    private View f16912f;

    /* renamed from: g  reason: collision with root package name */
    private View f16913g;

    /* renamed from: h  reason: collision with root package name */
    private View f16914h;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16915a;

        a(ChatControllerFragment chatControllerFragment) {
            this.f16915a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16915a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16917a;

        b(ChatControllerFragment chatControllerFragment) {
            this.f16917a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16917a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16919a;

        c(ChatControllerFragment chatControllerFragment) {
            this.f16919a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16919a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16921a;

        d(ChatControllerFragment chatControllerFragment) {
            this.f16921a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16921a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16923a;

        e(ChatControllerFragment chatControllerFragment) {
            this.f16923a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16923a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatControllerFragment f16925a;

        f(ChatControllerFragment chatControllerFragment) {
            this.f16925a = chatControllerFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16925a.onButtonClick(view);
            this.f16925a.send(view);
        }
    }

    @UiThread
    public ChatControllerFragment_ViewBinding(ChatControllerFragment chatControllerFragment, View view) {
        this.f16908b = chatControllerFragment;
        chatControllerFragment.mViewExtra = butterknife.internal.c.c(view, R.id.extra_area, "field 'mViewExtra'");
        chatControllerFragment.mEditText = (EditText) butterknife.internal.c.d(view, R.id.input, "field 'mEditText'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.face, "field 'mFaceButton' and method 'onButtonClick'");
        chatControllerFragment.mFaceButton = (ImageView) butterknife.internal.c.a(c10, R.id.face, "field 'mFaceButton'", ImageView.class);
        this.f16909c = c10;
        c10.setOnClickListener(new a(chatControllerFragment));
        View c11 = butterknife.internal.c.c(view, R.id.gift_im, "field 'mGiftButton' and method 'onButtonClick'");
        chatControllerFragment.mGiftButton = (ImageView) butterknife.internal.c.a(c11, R.id.gift_im, "field 'mGiftButton'", ImageView.class);
        this.f16910d = c11;
        c11.setOnClickListener(new b(chatControllerFragment));
        View c12 = butterknife.internal.c.c(view, R.id.photo_im, "field 'mImageButton' and method 'onButtonClick'");
        chatControllerFragment.mImageButton = (ImageView) butterknife.internal.c.a(c12, R.id.photo_im, "field 'mImageButton'", ImageView.class);
        this.f16911e = c12;
        c12.setOnClickListener(new c(chatControllerFragment));
        View c13 = butterknife.internal.c.c(view, R.id.camera_im, "field 'mCameraButton' and method 'onButtonClick'");
        chatControllerFragment.mCameraButton = (ImageView) butterknife.internal.c.a(c13, R.id.camera_im, "field 'mCameraButton'", ImageView.class);
        this.f16912f = c13;
        c13.setOnClickListener(new d(chatControllerFragment));
        View c14 = butterknife.internal.c.c(view, R.id.yuyin_im, "field 'mVoiceButton' and method 'onButtonClick'");
        chatControllerFragment.mVoiceButton = (ImageView) butterknife.internal.c.a(c14, R.id.yuyin_im, "field 'mVoiceButton'", ImageView.class);
        this.f16913g = c14;
        c14.setOnClickListener(new e(chatControllerFragment));
        View c15 = butterknife.internal.c.c(view, R.id.btn_send, "field 'mSendButton', method 'onButtonClick', and method 'send'");
        chatControllerFragment.mSendButton = c15;
        this.f16914h = c15;
        c15.setOnClickListener(new f(chatControllerFragment));
        chatControllerFragment.ivVideo = butterknife.internal.c.c(view, R.id.video_im, "field 'ivVideo'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChatControllerFragment chatControllerFragment = this.f16908b;
        if (chatControllerFragment != null) {
            this.f16908b = null;
            chatControllerFragment.mViewExtra = null;
            chatControllerFragment.mEditText = null;
            chatControllerFragment.mFaceButton = null;
            chatControllerFragment.mGiftButton = null;
            chatControllerFragment.mImageButton = null;
            chatControllerFragment.mCameraButton = null;
            chatControllerFragment.mVoiceButton = null;
            chatControllerFragment.mSendButton = null;
            chatControllerFragment.ivVideo = null;
            this.f16909c.setOnClickListener(null);
            this.f16909c = null;
            this.f16910d.setOnClickListener(null);
            this.f16910d = null;
            this.f16911e.setOnClickListener(null);
            this.f16911e = null;
            this.f16912f.setOnClickListener(null);
            this.f16912f = null;
            this.f16913g.setOnClickListener(null);
            this.f16913g = null;
            this.f16914h.setOnClickListener(null);
            this.f16914h = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
