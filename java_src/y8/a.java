package y8;

import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.player.GCLivePlayer;
import com.guochao.player.base.ILivePlayer;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static a f60156g;

    /* renamed from: c  reason: collision with root package name */
    private RoomItemData f60159c;

    /* renamed from: d  reason: collision with root package name */
    WeakReference<FrameLayout> f60160d;

    /* renamed from: a  reason: collision with root package name */
    boolean f60157a = false;

    /* renamed from: e  reason: collision with root package name */
    b f60161e = new C0698a();

    /* renamed from: f  reason: collision with root package name */
    private boolean f60162f = false;

    /* renamed from: b  reason: collision with root package name */
    private GCLivePlayer f60158b = LivePlayerProvider.player();

    /* renamed from: y8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0698a extends b {
        C0698a() {
        }

        @Override // y8.a.b
        public void a() {
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onDrawFirstFrame(@NonNull String str, @NonNull ILivePlayer iLivePlayer) {
            WeakReference<FrameLayout> weakReference;
            if (a.this.f60159c != null) {
                if ((!Objects.equals(a.this.f60159c.getLiveId(), str) && !Objects.equals(a.this.f60159c.getBroadCasterUserId(), str)) || (weakReference = a.this.f60160d) == null || weakReference.get() == null) {
                    return;
                }
                u.h(a.this.f60160d.get(), -1);
            }
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onVideoPlaying(@NonNull String str, @Nullable Bundle bundle) {
            WeakReference<FrameLayout> weakReference;
            if (a.this.f60159c != null) {
                if ((!Objects.equals(a.this.f60159c.getLiveId(), str) && !Objects.equals(a.this.f60159c.getBroadCasterUserId(), str)) || (weakReference = a.this.f60160d) == null || weakReference.get() == null) {
                    return;
                }
                u.h(a.this.f60160d.get(), -1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class b implements ILivePlayer.PlayEventListener {
        public abstract void a();

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.a(this, str, iLivePlayer);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public void onPlayEvent(@NonNull String str, int i9, @Nullable String str2, @Nullable Throwable th2) {
            if (i9 == 1001) {
                a();
            }
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPlayFirstAudioFrame(String str, ILivePlayer iLivePlayer) {
            com.guochao.player.base.a.d(this, str, iLivePlayer);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPlayerVolumeUpdate(String str, float f10) {
            com.guochao.player.base.a.e(this, str, f10);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onPublishStreamInfo(String str, List list) {
            com.guochao.player.base.a.f(this, str, list);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onVideoLoading(String str, Bundle bundle) {
            com.guochao.player.base.a.g(this, str, bundle);
        }

        @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
        public /* synthetic */ void onVideoSizeChanged(String str, int i9, int i10) {
            com.guochao.player.base.a.i(this, str, i9, i10);
        }
    }

    private a() {
    }

    public static a b() {
        if (f60156g == null) {
            synchronized (a.class) {
                if (f60156g == null) {
                    f60156g = new a();
                }
            }
        }
        return f60156g;
    }

    private boolean c(View view) {
        Rect rect = new Rect();
        return view.getGlobalVisibleRect(rect) && rect.bottom - rect.top >= view.getHeight();
    }

    public void d() {
        this.f60162f = true;
    }

    public void e(RecyclerView recyclerView, List<RoomItemData> list) {
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        this.f60162f = false;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            if (findFirstVisibleItemPosition == -1 || findLastVisibleItemPosition == -1) {
                return;
            }
            while (findFirstVisibleItemPosition <= findLastVisibleItemPosition && findFirstVisibleItemPosition < list.size()) {
                RoomItemData roomItemData = list.get(findFirstVisibleItemPosition);
                if (!roomItemData.isMultiLiveRoom() && !roomItemData.isPrivateLiveRoom() && !TextUtils.isEmpty(roomItemData.getFlvUrl()) && (((findViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(findFirstVisibleItemPosition)) == null || c(findViewHolderForAdapterPosition.itemView)) && findViewHolderForAdapterPosition != null)) {
                    f(list.get(findFirstVisibleItemPosition), (FrameLayout) findViewHolderForAdapterPosition.itemView.findViewById(R.id.play_flv));
                    return;
                }
                findFirstVisibleItemPosition++;
            }
        }
    }

    public void f(RoomItemData roomItemData, FrameLayout frameLayout) {
        WeakReference<FrameLayout> weakReference;
        if (this.f60162f) {
            return;
        }
        if (this.f60159c == null || !Objects.equals(roomItemData.getFlvUrl(), this.f60159c.getFlvUrl()) || (weakReference = this.f60160d) == null || weakReference.get() != frameLayout) {
            if (this.f60159c != null && Objects.equals(roomItemData.getFlvUrl(), this.f60159c.getFlvUrl()) && this.f60158b.isPlaying(this.f60159c.getLiveRoomId())) {
                this.f60158b.setPlayerView((ViewGroup) frameLayout);
                frameLayout.setVisibility(0);
                this.f60160d = new WeakReference<>(frameLayout);
                this.f60157a = true;
                this.f60158b.addPlayEventListener(this.f60161e);
                return;
            }
            g();
            this.f60158b.setMute(true);
            this.f60159c = roomItemData;
            u.h(frameLayout, 1);
            this.f60160d = new WeakReference<>(frameLayout);
            this.f60158b.setPlayerView((ViewGroup) frameLayout);
            this.f60158b.addPlayEventListener(this.f60161e);
            this.f60158b.startPlay(roomItemData.getFlvUrl(), roomItemData.buildRoomInfo());
            this.f60157a = true;
        }
    }

    public void g() {
        h(false, false);
    }

    public void h(boolean z10, boolean z11) {
        GCLivePlayer gCLivePlayer;
        if (this.f60157a && (gCLivePlayer = this.f60158b) != null && gCLivePlayer.isPlaying()) {
            this.f60158b.removePlayEventListener(this.f60161e);
            this.f60157a = false;
            GCLivePlayer gCLivePlayer2 = this.f60158b;
            if (gCLivePlayer2 != null) {
                if (!z11) {
                    if (!gCLivePlayer2.isPlaying()) {
                        return;
                    }
                    BaseLiveActivity.u0("LiveDynamicThumbManager.stopPlay()", false);
                    this.f60158b.stopPlay(false, false);
                }
                WeakReference<FrameLayout> weakReference = this.f60160d;
                if (weakReference != null && weakReference.get() != null) {
                    u.h(this.f60160d.get(), 1);
                }
            }
            this.f60160d = null;
            this.f60159c = null;
        }
    }
}
