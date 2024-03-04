package com.guochao.faceshow.aaspring.modulars.live.common;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveBanKickListItem;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class n extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f19031a;

    /* renamed from: b  reason: collision with root package name */
    TextView f19032b;

    /* renamed from: c  reason: collision with root package name */
    TextView f19033c;

    /* renamed from: d  reason: collision with root package name */
    View f19034d;

    /* renamed from: e  reason: collision with root package name */
    View f19035e;

    /* renamed from: f  reason: collision with root package name */
    TextView f19036f;

    /* renamed from: g  reason: collision with root package name */
    ListView f19037g;

    /* renamed from: h  reason: collision with root package name */
    List<LiveBanKickListItem> f19038h;

    /* renamed from: i  reason: collision with root package name */
    g f19039i;

    /* renamed from: j  reason: collision with root package name */
    private String f19040j;

    /* renamed from: k  reason: collision with root package name */
    private String f19041k;

    /* renamed from: l  reason: collision with root package name */
    public h f19042l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.f19034d.setVisibility(0);
            n.this.f19035e.setVisibility(8);
            n nVar = n.this;
            nVar.f19032b.setTextColor(ContextCompat.getColor(nVar.getContext(), R.color.color_ugc_text_level_1));
            n nVar2 = n.this;
            nVar2.f19033c.setTextColor(ContextCompat.getColor(nVar2.getContext(), R.color.text_normal));
            n.this.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n.this.f19035e.setVisibility(0);
            n.this.f19034d.setVisibility(8);
            n nVar = n.this;
            nVar.f19032b.setTextColor(ContextCompat.getColor(nVar.getContext(), R.color.text_normal));
            n nVar2 = n.this;
            nVar2.f19033c.setTextColor(ContextCompat.getColor(nVar2.getContext(), R.color.color_ugc_text_level_1));
            n.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19045a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19046b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f19047c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f19048d;

        c(int i9, String str, String str2, String str3) {
            this.f19045a = i9;
            this.f19046b = str;
            this.f19047c = str2;
            this.f19048d = str3;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            List<LiveBanKickListItem> list = n.this.f19038h;
            if (list == null) {
                return;
            }
            int size = list.size();
            int i9 = this.f19045a;
            if (size > i9) {
                n.this.f19038h.remove(i9);
            }
            g gVar = n.this.f19039i;
            if (gVar != null) {
                gVar.notifyDataSetChanged();
            }
            h hVar = n.this.f19042l;
            if (hVar != null) {
                hVar.b(this.f19046b, this.f19047c, this.f19048d);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19050a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f19051b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f19052c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f19053d;

        d(int i9, String str, String str2, String str3) {
            this.f19050a = i9;
            this.f19051b = str;
            this.f19052c = str2;
            this.f19053d = str3;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            g gVar = n.this.f19039i;
            if (gVar != null) {
                gVar.notifyDataSetChanged();
            }
            if (n.this.f19038h.size() == 0) {
                n.this.f19036f.setVisibility(0);
                n.this.f19037g.setVisibility(8);
            } else {
                int size = n.this.f19038h.size();
                int i9 = this.f19050a;
                if (size > i9) {
                    n.this.f19038h.remove(i9);
                }
            }
            h hVar = n.this.f19042l;
            if (hVar != null) {
                hVar.a(this.f19051b, this.f19052c, this.f19053d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveBanKickListItem>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveBanKickListItem>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveBanKickListItem> list, @NonNull FaceCastBaseResponse<List<LiveBanKickListItem>> faceCastBaseResponse) {
            n.this.f19038h = list;
            if (list != null && list.size() > 0) {
                n.this.f19036f.setVisibility(8);
                n.this.f19037g.setVisibility(0);
                n nVar = n.this;
                n nVar2 = n.this;
                nVar.f19039i = new g(nVar2.f19031a);
                n nVar3 = n.this;
                nVar3.f19037g.setAdapter((ListAdapter) nVar3.f19039i);
                return;
            }
            n.this.f19036f.setVisibility(0);
            n.this.f19037g.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveBanKickListItem>> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveBanKickListItem>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveBanKickListItem> list, @NonNull FaceCastBaseResponse<List<LiveBanKickListItem>> faceCastBaseResponse) {
            n.this.f19038h = list;
            if (list != null && list.size() > 0) {
                n.this.f19036f.setVisibility(8);
                n.this.f19037g.setVisibility(0);
                n nVar = n.this;
                n nVar2 = n.this;
                nVar.f19039i = new g(nVar2.f19031a);
                n nVar3 = n.this;
                nVar3.f19037g.setAdapter((ListAdapter) nVar3.f19039i);
                return;
            }
            n.this.f19036f.setVisibility(0);
            n.this.f19037g.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f19057a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LiveBanKickListItem f19059a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f19060b;

            a(LiveBanKickListItem liveBanKickListItem, int i9) {
                this.f19059a = liveBanKickListItem;
                this.f19060b = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (!TextUtils.isEmpty(this.f19059a.liveId)) {
                        n nVar = n.this;
                        String valueOf = String.valueOf(this.f19059a.userId);
                        int i9 = this.f19060b;
                        LiveBanKickListItem liveBanKickListItem = this.f19059a;
                        nVar.h(valueOf, i9, liveBanKickListItem.nickName, liveBanKickListItem.img);
                        return;
                    }
                    n nVar2 = n.this;
                    String str = nVar2.f19040j;
                    String valueOf2 = String.valueOf(this.f19059a.userId);
                    int i10 = this.f19060b;
                    LiveBanKickListItem liveBanKickListItem2 = this.f19059a;
                    nVar2.g(str, valueOf2, i10, liveBanKickListItem2.nickName, liveBanKickListItem2.img);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            ImageView f19062a;

            /* renamed from: b  reason: collision with root package name */
            TextView f19063b;

            /* renamed from: c  reason: collision with root package name */
            TextView f19064c;

            /* renamed from: d  reason: collision with root package name */
            TextView f19065d;

            b() {
            }
        }

        public g(Context context) {
            this.f19057a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return n.this.f19038h.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i9) {
            return n.this.f19038h.get(i9);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i9) {
            return i9;
        }

        @Override // android.widget.Adapter
        public View getView(int i9, View view, ViewGroup viewGroup) {
            View view2;
            b bVar;
            if (view == null) {
                bVar = new b();
                view2 = LayoutInflater.from(this.f19057a).inflate(R.layout.item_banned_list, (ViewGroup) null);
                bVar.f19062a = (ImageView) view2.findViewById(R.id.ivImg);
                bVar.f19063b = (TextView) view2.findViewById(R.id.tvName);
                bVar.f19064c = (TextView) view2.findViewById(R.id.tvTips);
                bVar.f19065d = (TextView) view2.findViewById(R.id.btnUnBanned);
                view2.setTag(bVar);
            } else {
                view2 = view;
                bVar = (b) view.getTag();
            }
            LiveBanKickListItem liveBanKickListItem = n.this.f19038h.get(i9);
            hc.a.q(n.this.f19038h.get(i9).img, bVar.f19062a, R.mipmap.default_head, this.f19057a);
            bVar.f19063b.setText(n.this.f19038h.get(i9).nickName);
            bVar.f19064c.setText(TextUtils.isEmpty(n.this.f19038h.get(i9).signature) ? BaseApplication.getInstance().getString(R.string.user_info_default_signature) : n.this.f19038h.get(i9).signature);
            if (!TextUtils.isEmpty(liveBanKickListItem.liveId)) {
                bVar.f19065d.setText(this.f19057a.getResources().getString(R.string.livecancelremoce));
            } else {
                bVar.f19065d.setText(this.f19057a.getResources().getString(R.string.livecancelmute));
            }
            bVar.f19065d.setOnClickListener(new a(liveBanKickListItem, i9));
            return view2;
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void a(String str, String str2, String str3);

        void b(String str, String str2, String str3);
    }

    public n(Activity activity, int i9, String str, String str2) {
        super(activity, i9);
        this.f19038h = new ArrayList();
        this.f19031a = activity;
        this.f19040j = str;
        this.f19041k = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str, String str2, int i9, String str3, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, str2);
        hashMap.put("IMID", str);
        new PostRequest("tokens/live/ban/closeLiveBanByUid").E(hashMap).M(new c(i9, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(String str, int i9, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, str);
        hashMap.put("liveId", this.f19041k);
        new PostRequest("tokens/live/kick/liveRelieveUser").E(hashMap).M(new d(i9, str, str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        HashMap hashMap = new HashMap();
        hashMap.put("IMID", this.f19040j);
        new PostRequest("tokens/live/ban/liveBanList").E(hashMap).M(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        HashMap hashMap = new HashMap();
        hashMap.put("liveId", this.f19041k);
        new PostRequest("tokens/live/kick/liveKickList").E(hashMap).M(new f());
    }

    private void k() {
        this.f19037g = (ListView) findViewById(R.id.lvOptions);
        this.f19032b = (TextView) findViewById(R.id.tvMute);
        this.f19033c = (TextView) findViewById(R.id.tvRemove);
        this.f19036f = (TextView) findViewById(R.id.tvEmpty);
        this.f19034d = findViewById(R.id.tvmuteline);
        this.f19035e = findViewById(R.id.tvremoveline);
        if (((int) this.f19032b.getPaint().measureText(this.f19032b.getText().toString())) > DensityUtil.dp2px(getContext(), 125.0f)) {
            ((FrameLayout.LayoutParams) this.f19032b.getLayoutParams()).gravity = GravityCompat.START;
        } else {
            ((FrameLayout.LayoutParams) this.f19032b.getLayoutParams()).gravity = 17;
        }
        if (this.f19033c.getMeasuredWidth() > DensityUtil.dp2px(getContext(), 125.0f)) {
            ((FrameLayout.LayoutParams) this.f19033c.getLayoutParams()).gravity = GravityCompat.START;
        } else {
            ((FrameLayout.LayoutParams) this.f19033c.getLayoutParams()).gravity = 17;
        }
        List<LiveBanKickListItem> list = this.f19038h;
        if (list != null && !list.isEmpty()) {
            this.f19036f.setVisibility(4);
            this.f19037g.setVisibility(0);
            g gVar = new g(this.f19031a);
            this.f19039i = gVar;
            this.f19037g.setAdapter((ListAdapter) gVar);
        } else {
            this.f19036f.setVisibility(0);
            this.f19037g.setVisibility(4);
        }
        this.f19032b.setOnClickListener(new a());
        this.f19033c.setOnClickListener(new b());
    }

    private void l() {
        i();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.live_banned_list_dialog);
        setCanceledOnTouchOutside(true);
        k();
        l();
    }

    public void setonMuteListener(h hVar) {
        this.f19042l = hVar;
    }
}
