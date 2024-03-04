package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment_ViewBinding;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class WatcherLiveRoomFragment_ViewBinding extends BaseLiveRoomFragment_ViewBinding {

    /* renamed from: g  reason: collision with root package name */
    private WatcherLiveRoomFragment f20060g;

    /* renamed from: h  reason: collision with root package name */
    private View f20061h;

    /* renamed from: i  reason: collision with root package name */
    private View f20062i;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WatcherLiveRoomFragment f20063a;

        a(WatcherLiveRoomFragment watcherLiveRoomFragment) {
            this.f20063a = watcherLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20063a.shareRoom(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WatcherLiveRoomFragment f20065a;

        b(WatcherLiveRoomFragment watcherLiveRoomFragment) {
            this.f20065a = watcherLiveRoomFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20065a.close(view);
        }
    }

    @UiThread
    public WatcherLiveRoomFragment_ViewBinding(WatcherLiveRoomFragment watcherLiveRoomFragment, View view) {
        super(watcherLiveRoomFragment, view);
        this.f20060g = watcherLiveRoomFragment;
        watcherLiveRoomFragment.mTextViewUserGuideGift = (TextView) c.d(view, R.id.user_guide_gift, "field 'mTextViewUserGuideGift'", TextView.class);
        watcherLiveRoomFragment.mDYLoadingView = (SVGAImageView) c.d(view, R.id.loading, "field 'mDYLoadingView'", SVGAImageView.class);
        watcherLiveRoomFragment.adsClose = c.c(view, R.id.ads_close, "field 'adsClose'");
        watcherLiveRoomFragment.closeLive = c.c(view, R.id.closeLL, "field 'closeLive'");
        View c10 = c.c(view, R.id.share_room, "field 'mLiveShareBtn'");
        watcherLiveRoomFragment.mLiveShareBtn = c10;
        this.f20061h = c10;
        c10.setOnClickListener(new a(watcherLiveRoomFragment));
        watcherLiveRoomFragment.dividerView = c.c(view, R.id.dividerView, "field 'dividerView'");
        watcherLiveRoomFragment.mImageViewLiveBg = (ImageView) c.d(view, R.id.live_bg, "field 'mImageViewLiveBg'", ImageView.class);
        watcherLiveRoomFragment.littlePusherArea = (FrameLayout) c.d(view, R.id.little_pusher_area, "field 'littlePusherArea'", FrameLayout.class);
        watcherLiveRoomFragment.voiceRoomArea = c.c(view, R.id.voice_room_seat_area, "field 'voiceRoomArea'");
        View findViewById = view.findViewById(R.id.close_live);
        if (findViewById != null) {
            this.f20062i = findViewById;
            findViewById.setOnClickListener(new b(watcherLiveRoomFragment));
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WatcherLiveRoomFragment watcherLiveRoomFragment = this.f20060g;
        if (watcherLiveRoomFragment != null) {
            this.f20060g = null;
            watcherLiveRoomFragment.mTextViewUserGuideGift = null;
            watcherLiveRoomFragment.mDYLoadingView = null;
            watcherLiveRoomFragment.adsClose = null;
            watcherLiveRoomFragment.closeLive = null;
            watcherLiveRoomFragment.mLiveShareBtn = null;
            watcherLiveRoomFragment.dividerView = null;
            watcherLiveRoomFragment.mImageViewLiveBg = null;
            watcherLiveRoomFragment.littlePusherArea = null;
            watcherLiveRoomFragment.voiceRoomArea = null;
            this.f20061h.setOnClickListener(null);
            this.f20061h = null;
            View view = this.f20062i;
            if (view != null) {
                view.setOnClickListener(null);
                this.f20062i = null;
            }
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
