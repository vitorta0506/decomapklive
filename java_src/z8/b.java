package z8;

import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.player.GCLivePlayer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private GCLivePlayer f60377a;

    /* renamed from: b  reason: collision with root package name */
    private RoomItemData f60378b;

    /* renamed from: c  reason: collision with root package name */
    private int f60379c;

    /* renamed from: f  reason: collision with root package name */
    private long f60382f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f60383g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f60384h;

    /* renamed from: j  reason: collision with root package name */
    private long f60386j;

    /* renamed from: d  reason: collision with root package name */
    private List<RoomItemData> f60380d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private List<LiveInfoMatchBean> f60381e = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private boolean f60385i = true;

    public long a() {
        return this.f60386j;
    }

    public List<LiveInfoMatchBean> b() {
        return this.f60381e;
    }

    public RoomItemData c() {
        return this.f60378b;
    }

    public List<RoomItemData> d() {
        return this.f60380d;
    }

    public long e() {
        return this.f60382f;
    }

    public GCLivePlayer f() {
        return this.f60377a;
    }

    public int g() {
        return this.f60379c;
    }

    public boolean h() {
        return this.f60385i;
    }

    public boolean i() {
        return this.f60383g;
    }

    public boolean j() {
        return this.f60384h;
    }

    public void k() {
        BaseLiveActivity.u0("FloatWindowValueHolder.release()", false);
        f().stopPlay(false, false);
    }

    public void l(boolean z10) {
        this.f60385i = z10;
    }

    public void m(long j10) {
        this.f60386j = j10;
    }

    public void n(boolean z10) {
        this.f60383g = z10;
    }

    public void o(List<LiveInfoMatchBean> list) {
        this.f60381e = list;
    }

    public void p(boolean z10) {
        this.f60384h = z10;
    }

    public void q(RoomItemData roomItemData) {
        this.f60378b = roomItemData;
    }

    public void r(List<RoomItemData> list) {
        this.f60380d = list;
    }

    public void s(long j10) {
        this.f60382f = j10;
    }

    public void t(GCLivePlayer gCLivePlayer) {
        this.f60377a = gCLivePlayer;
    }

    public void u(int i9) {
        this.f60379c = i9;
    }
}
