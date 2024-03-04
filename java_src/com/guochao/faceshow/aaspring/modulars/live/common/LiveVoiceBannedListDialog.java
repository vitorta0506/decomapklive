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
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.LiveBanKickBean;
import com.guochao.faceshow.aaspring.beans.LiveBanKickListItem;
import com.guochao.faceshow.aaspring.modulars.live.viewmodel.VoiceRoomPeopleCardRepository;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveVoiceBannedListDialog extends Dialog implements LifecycleOwner {

    /* renamed from: a  reason: collision with root package name */
    private Context f18869a;

    /* renamed from: b  reason: collision with root package name */
    TextView f18870b;

    /* renamed from: c  reason: collision with root package name */
    TextView f18871c;

    /* renamed from: d  reason: collision with root package name */
    View f18872d;

    /* renamed from: e  reason: collision with root package name */
    View f18873e;

    /* renamed from: f  reason: collision with root package name */
    TextView f18874f;

    /* renamed from: g  reason: collision with root package name */
    ListView f18875g;

    /* renamed from: h  reason: collision with root package name */
    List<LiveBanKickListItem> f18876h;

    /* renamed from: i  reason: collision with root package name */
    i f18877i;

    /* renamed from: j  reason: collision with root package name */
    private String f18878j;

    /* renamed from: k  reason: collision with root package name */
    private String f18879k;

    /* renamed from: l  reason: collision with root package name */
    LifecycleRegistry f18880l;

    /* renamed from: m  reason: collision with root package name */
    public j f18881m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiveVoiceBannedListDialog.this.f18872d.setVisibility(0);
            LiveVoiceBannedListDialog.this.f18873e.setVisibility(8);
            LiveVoiceBannedListDialog liveVoiceBannedListDialog = LiveVoiceBannedListDialog.this;
            liveVoiceBannedListDialog.f18870b.setTextColor(ContextCompat.getColor(liveVoiceBannedListDialog.getContext(), R.color.color_ugc_text_level_1));
            LiveVoiceBannedListDialog liveVoiceBannedListDialog2 = LiveVoiceBannedListDialog.this;
            liveVoiceBannedListDialog2.f18871c.setTextColor(ContextCompat.getColor(liveVoiceBannedListDialog2.getContext(), R.color.text_normal));
            LiveVoiceBannedListDialog.this.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiveVoiceBannedListDialog.this.f18873e.setVisibility(0);
            LiveVoiceBannedListDialog.this.f18872d.setVisibility(8);
            LiveVoiceBannedListDialog liveVoiceBannedListDialog = LiveVoiceBannedListDialog.this;
            liveVoiceBannedListDialog.f18870b.setTextColor(ContextCompat.getColor(liveVoiceBannedListDialog.getContext(), R.color.text_normal));
            LiveVoiceBannedListDialog liveVoiceBannedListDialog2 = LiveVoiceBannedListDialog.this;
            liveVoiceBannedListDialog2.f18871c.setTextColor(ContextCompat.getColor(liveVoiceBannedListDialog2.getContext(), R.color.color_ugc_text_level_1));
            LiveVoiceBannedListDialog.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements GCRequestJava.c<Object> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            if (response.getCode() == 5001) {
                ToastUtils.showToast((int) R.string.permission_rejection);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements GCRequestJava.d<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18885a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f18886b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f18887c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f18888d;

        d(int i9, String str, String str2, String str3) {
            this.f18885a = i9;
            this.f18886b = str;
            this.f18887c = str2;
            this.f18888d = str3;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            List<LiveBanKickListItem> list = LiveVoiceBannedListDialog.this.f18876h;
            if (list == null) {
                return;
            }
            int size = list.size();
            int i9 = this.f18885a;
            if (size > i9) {
                LiveVoiceBannedListDialog.this.f18876h.remove(i9);
            }
            if (LiveVoiceBannedListDialog.this.f18876h.size() == 0) {
                LiveVoiceBannedListDialog.this.f18874f.setVisibility(0);
                LiveVoiceBannedListDialog.this.f18875g.setVisibility(8);
            }
            i iVar = LiveVoiceBannedListDialog.this.f18877i;
            if (iVar != null) {
                iVar.notifyDataSetChanged();
            }
            j jVar = LiveVoiceBannedListDialog.this.f18881m;
            if (jVar != null) {
                jVar.b(this.f18886b, this.f18887c, this.f18888d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements GCRequestJava.c<Object> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.c
        public void a(Response<Object> response) {
            if (response.getCode() == 5001) {
                ToastUtils.showToast((int) R.string.permission_rejection);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements GCRequestJava.d<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18891a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f18892b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f18893c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f18894d;

        f(int i9, String str, String str2, String str3) {
            this.f18891a = i9;
            this.f18892b = str;
            this.f18893c = str2;
            this.f18894d = str3;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<Object> response) {
            i iVar = LiveVoiceBannedListDialog.this.f18877i;
            if (iVar != null) {
                iVar.notifyDataSetChanged();
            }
            int size = LiveVoiceBannedListDialog.this.f18876h.size();
            int i9 = this.f18891a;
            if (size > i9) {
                LiveVoiceBannedListDialog.this.f18876h.remove(i9);
            }
            if (LiveVoiceBannedListDialog.this.f18876h.size() == 0) {
                LiveVoiceBannedListDialog.this.f18874f.setVisibility(0);
                LiveVoiceBannedListDialog.this.f18875g.setVisibility(8);
            }
            j jVar = LiveVoiceBannedListDialog.this.f18881m;
            if (jVar != null) {
                jVar.a(this.f18892b, this.f18893c, this.f18894d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements GCRequestJava.d<LiveBanKickBean> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<LiveBanKickBean> response) {
            LiveVoiceBannedListDialog.this.f18876h = response.getData().userMsgList;
            List<LiveBanKickListItem> list = LiveVoiceBannedListDialog.this.f18876h;
            if (list != null && list.size() > 0) {
                LiveVoiceBannedListDialog.this.f18874f.setVisibility(8);
                LiveVoiceBannedListDialog.this.f18875g.setVisibility(0);
                LiveVoiceBannedListDialog liveVoiceBannedListDialog = LiveVoiceBannedListDialog.this;
                LiveVoiceBannedListDialog liveVoiceBannedListDialog2 = LiveVoiceBannedListDialog.this;
                liveVoiceBannedListDialog.f18877i = new i(liveVoiceBannedListDialog2.f18869a);
                LiveVoiceBannedListDialog liveVoiceBannedListDialog3 = LiveVoiceBannedListDialog.this;
                liveVoiceBannedListDialog3.f18875g.setAdapter((ListAdapter) liveVoiceBannedListDialog3.f18877i);
                return;
            }
            LiveVoiceBannedListDialog.this.f18874f.setVisibility(0);
            LiveVoiceBannedListDialog.this.f18875g.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements GCRequestJava.d<LiveBanKickBean> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<LiveBanKickBean> response) {
            LiveVoiceBannedListDialog.this.f18876h = response.getData().userMsgList;
            List<LiveBanKickListItem> list = LiveVoiceBannedListDialog.this.f18876h;
            if (list != null && list.size() > 0) {
                for (int i9 = 0; i9 < LiveVoiceBannedListDialog.this.f18876h.size(); i9++) {
                    LiveVoiceBannedListDialog.this.f18876h.get(i9).liveId = LiveVoiceBannedListDialog.this.f18879k;
                }
                LiveVoiceBannedListDialog.this.f18874f.setVisibility(8);
                LiveVoiceBannedListDialog.this.f18875g.setVisibility(0);
                LiveVoiceBannedListDialog liveVoiceBannedListDialog = LiveVoiceBannedListDialog.this;
                LiveVoiceBannedListDialog liveVoiceBannedListDialog2 = LiveVoiceBannedListDialog.this;
                liveVoiceBannedListDialog.f18877i = new i(liveVoiceBannedListDialog2.f18869a);
                LiveVoiceBannedListDialog liveVoiceBannedListDialog3 = LiveVoiceBannedListDialog.this;
                liveVoiceBannedListDialog3.f18875g.setAdapter((ListAdapter) liveVoiceBannedListDialog3.f18877i);
                return;
            }
            LiveVoiceBannedListDialog.this.f18874f.setVisibility(0);
            LiveVoiceBannedListDialog.this.f18875g.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Context f18898a;

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LiveBanKickListItem f18900a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f18901b;

            a(LiveBanKickListItem liveBanKickListItem, int i9) {
                this.f18900a = liveBanKickListItem;
                this.f18901b = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DisableDoubleClickUtils.canClick(view)) {
                    if (!TextUtils.isEmpty(this.f18900a.liveId)) {
                        LiveVoiceBannedListDialog liveVoiceBannedListDialog = LiveVoiceBannedListDialog.this;
                        String valueOf = String.valueOf(this.f18900a.userId);
                        int i9 = this.f18901b;
                        LiveBanKickListItem liveBanKickListItem = this.f18900a;
                        liveVoiceBannedListDialog.i(valueOf, i9, liveBanKickListItem.nickName, liveBanKickListItem.img);
                        return;
                    }
                    LiveVoiceBannedListDialog liveVoiceBannedListDialog2 = LiveVoiceBannedListDialog.this;
                    String str = liveVoiceBannedListDialog2.f18878j;
                    String valueOf2 = String.valueOf(this.f18900a.userId);
                    int i10 = this.f18901b;
                    LiveBanKickListItem liveBanKickListItem2 = this.f18900a;
                    liveVoiceBannedListDialog2.h(str, valueOf2, i10, liveBanKickListItem2.nickName, liveBanKickListItem2.img);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b {

            /* renamed from: a  reason: collision with root package name */
            ImageView f18903a;

            /* renamed from: b  reason: collision with root package name */
            TextView f18904b;

            /* renamed from: c  reason: collision with root package name */
            TextView f18905c;

            /* renamed from: d  reason: collision with root package name */
            TextView f18906d;

            b() {
            }
        }

        public i(Context context) {
            this.f18898a = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return LiveVoiceBannedListDialog.this.f18876h.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i9) {
            return LiveVoiceBannedListDialog.this.f18876h.get(i9);
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
                view2 = LayoutInflater.from(this.f18898a).inflate(R.layout.item_banned_list, (ViewGroup) null);
                bVar.f18903a = (ImageView) view2.findViewById(R.id.ivImg);
                bVar.f18904b = (TextView) view2.findViewById(R.id.tvName);
                bVar.f18905c = (TextView) view2.findViewById(R.id.tvTips);
                bVar.f18906d = (TextView) view2.findViewById(R.id.btnUnBanned);
                view2.setTag(bVar);
            } else {
                view2 = view;
                bVar = (b) view.getTag();
            }
            LiveBanKickListItem liveBanKickListItem = LiveVoiceBannedListDialog.this.f18876h.get(i9);
            hc.a.q(LiveVoiceBannedListDialog.this.f18876h.get(i9).img, bVar.f18903a, R.mipmap.default_head, this.f18898a);
            bVar.f18904b.setText(LiveVoiceBannedListDialog.this.f18876h.get(i9).nickName);
            bVar.f18905c.setText(TextUtils.isEmpty(LiveVoiceBannedListDialog.this.f18876h.get(i9).signature) ? BaseApplication.getInstance().getString(R.string.user_info_default_signature) : LiveVoiceBannedListDialog.this.f18876h.get(i9).signature);
            if (!TextUtils.isEmpty(liveBanKickListItem.liveId)) {
                bVar.f18906d.setText(this.f18898a.getResources().getString(R.string.livecancelremoce));
            } else {
                bVar.f18906d.setText(this.f18898a.getResources().getString(R.string.livecancelmute));
            }
            bVar.f18906d.setOnClickListener(new a(liveBanKickListItem, i9));
            return view2;
        }
    }

    /* loaded from: classes3.dex */
    public interface j {
        void a(String str, String str2, String str3);

        void b(String str, String str2, String str3);
    }

    public LiveVoiceBannedListDialog(Activity activity, int i9, String str, String str2) {
        super(activity, i9);
        this.f18876h = new ArrayList();
        this.f18880l = new LifecycleRegistry(this);
        this.f18869a = activity;
        this.f18878j = str;
        this.f18879k = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(String str, String str2, int i9, String str3, String str4) {
        new GCRequestJava(VoiceRoomPeopleCardRepository.URL_UNFORBIDDEN_TALK).bindToLifecycle(this).putBody(Contants.USER_ID, str2).putBody("roomId", str).j(new d(i9, str2, str3, str4)).d(new c()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str, int i9, String str2, String str3) {
        new GCRequestJava(VoiceRoomPeopleCardRepository.URL_FREE_KICK_OUT).bindToLifecycle(this).putBody("roomId", this.f18879k).putBody(Contants.USER_ID, str).j(new f(i9, str, str2, str3)).d(new e()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        new HashMap().put("IMID", this.f18878j);
        new GCRequestJava(VoiceRoomPeopleCardRepository.URL_LIVE_BAN_LIST_VOICE_ROOM).bindToLifecycle(this).putBody("roomId", this.f18878j).j(new g()).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        new GCRequestJava(VoiceRoomPeopleCardRepository.URL_LIVE_REMOVE_LIST_VOICE_ROOM).bindToLifecycle(this).putBody("roomId", this.f18879k).j(new h()).request();
    }

    private void l() {
        this.f18875g = (ListView) findViewById(R.id.lvOptions);
        this.f18870b = (TextView) findViewById(R.id.tvMute);
        this.f18871c = (TextView) findViewById(R.id.tvRemove);
        this.f18874f = (TextView) findViewById(R.id.tvEmpty);
        this.f18872d = findViewById(R.id.tvmuteline);
        this.f18873e = findViewById(R.id.tvremoveline);
        if (((int) this.f18870b.getPaint().measureText(this.f18870b.getText().toString())) > DensityUtil.dp2px(getContext(), 125.0f)) {
            ((FrameLayout.LayoutParams) this.f18870b.getLayoutParams()).gravity = GravityCompat.START;
        } else {
            ((FrameLayout.LayoutParams) this.f18870b.getLayoutParams()).gravity = 17;
        }
        if (this.f18871c.getMeasuredWidth() > DensityUtil.dp2px(getContext(), 125.0f)) {
            ((FrameLayout.LayoutParams) this.f18871c.getLayoutParams()).gravity = GravityCompat.START;
        } else {
            ((FrameLayout.LayoutParams) this.f18871c.getLayoutParams()).gravity = 17;
        }
        List<LiveBanKickListItem> list = this.f18876h;
        if (list != null && !list.isEmpty()) {
            this.f18874f.setVisibility(4);
            this.f18875g.setVisibility(0);
            i iVar = new i(this.f18869a);
            this.f18877i = iVar;
            this.f18875g.setAdapter((ListAdapter) iVar);
        } else {
            this.f18874f.setVisibility(0);
            this.f18875g.setVisibility(4);
        }
        this.f18870b.setOnClickListener(new a());
        this.f18871c.setOnClickListener(new b());
    }

    private void m() {
        j();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.f18880l.setCurrentState(Lifecycle.State.DESTROYED);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f18880l;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f18880l.setCurrentState(Lifecycle.State.CREATED);
        setContentView(R.layout.live_banned_list_dialog);
        setCanceledOnTouchOutside(true);
        l();
        m();
    }

    public void setonMuteListener(j jVar) {
        this.f18881m = jVar;
    }
}
