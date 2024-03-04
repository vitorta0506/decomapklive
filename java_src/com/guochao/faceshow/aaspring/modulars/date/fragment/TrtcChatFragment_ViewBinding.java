package com.guochao.faceshow.aaspring.modulars.date.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public final class TrtcChatFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private TrtcChatFragment f17600b;

    /* renamed from: c  reason: collision with root package name */
    private View f17601c;

    /* renamed from: d  reason: collision with root package name */
    private View f17602d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TrtcChatFragment f17603a;

        a(TrtcChatFragment trtcChatFragment) {
            this.f17603a = trtcChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17603a.gift(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TrtcChatFragment f17605a;

        b(TrtcChatFragment trtcChatFragment) {
            this.f17605a = trtcChatFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17605a.input(view);
        }
    }

    @UiThread
    public TrtcChatFragment_ViewBinding(TrtcChatFragment trtcChatFragment, View view) {
        this.f17600b = trtcChatFragment;
        trtcChatFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        trtcChatFragment.chatContentView = butterknife.internal.c.c(view, R.id.chat_content, "field 'chatContentView'");
        trtcChatFragment.beautyIcon = butterknife.internal.c.c(view, R.id.beauty_icon, "field 'beautyIcon'");
        View c10 = butterknife.internal.c.c(view, R.id.gift, "field 'svgaImageView' and method 'gift'");
        trtcChatFragment.svgaImageView = (SVGAImageView) butterknife.internal.c.a(c10, R.id.gift, "field 'svgaImageView'", SVGAImageView.class);
        this.f17601c = c10;
        c10.setOnClickListener(new a(trtcChatFragment));
        trtcChatFragment.bottomLayout = butterknife.internal.c.c(view, R.id.bottom_layout, "field 'bottomLayout'");
        View c11 = butterknife.internal.c.c(view, R.id.input, "method 'input'");
        this.f17602d = c11;
        c11.setOnClickListener(new b(trtcChatFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TrtcChatFragment trtcChatFragment = this.f17600b;
        if (trtcChatFragment != null) {
            this.f17600b = null;
            trtcChatFragment.recyclerView = null;
            trtcChatFragment.chatContentView = null;
            trtcChatFragment.beautyIcon = null;
            trtcChatFragment.svgaImageView = null;
            trtcChatFragment.bottomLayout = null;
            this.f17601c.setOnClickListener(null);
            this.f17601c = null;
            this.f17602d.setOnClickListener(null);
            this.f17602d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
