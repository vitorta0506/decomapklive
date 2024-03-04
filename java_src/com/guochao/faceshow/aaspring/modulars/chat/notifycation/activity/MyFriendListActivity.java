package com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.MyFriendsBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.MyFriendListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.EmptyHolder;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.MyFriendViewHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import java.util.ArrayList;
import java.util.HashMap;
import wd.j;
/* loaded from: classes3.dex */
public class MyFriendListActivity extends BaseIMListActivity<MyFriendsBean.FriendBean, BaseViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private boolean f17114b;

    /* renamed from: c  reason: collision with root package name */
    private CharSequence f17115c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f17116d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f17117e;

    /* loaded from: classes3.dex */
    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (MyFriendListActivity.this.f17116d.getText().length() > 0) {
                MyFriendListActivity.this.f17117e.setVisibility(0);
            } else {
                MyFriendListActivity.this.f17117e.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (TextUtils.isEmpty(charSequence)) {
                MyFriendListActivity.this.loadData(1);
            } else {
                MyFriendListActivity.this.u0(charSequence);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements zd.d {
        b() {
        }

        @Override // zd.d
        public void a(@NonNull j jVar) {
            MyFriendListActivity.this.reload();
        }
    }

    /* loaded from: classes3.dex */
    class c implements zd.b {
        c() {
        }

        @Override // zd.b
        public void b(@NonNull j jVar) {
            if (TextUtils.isEmpty(MyFriendListActivity.this.f17116d.getText().toString().trim())) {
                MyFriendListActivity myFriendListActivity = MyFriendListActivity.this;
                myFriendListActivity.setCurrentPage(myFriendListActivity.getCurrentPage() + 1);
                MyFriendListActivity myFriendListActivity2 = MyFriendListActivity.this;
                myFriendListActivity2.loadData(myFriendListActivity2.getCurrentPage());
                return;
            }
            MyFriendListActivity myFriendListActivity3 = MyFriendListActivity.this;
            myFriendListActivity3.u0(myFriendListActivity3.f17116d.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<MyFriendsBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyFriendsBean myFriendsBean, @NonNull FaceCastBaseResponse<MyFriendsBean> faceCastBaseResponse) {
            MyFriendListActivity.this.f17114b = false;
            if (myFriendsBean == null) {
                myFriendsBean = new MyFriendsBean();
                myFriendsBean.list = new ArrayList<>();
                myFriendsBean.totalPage = 1;
            }
            MyFriendListActivity.this.setDatas(myFriendsBean.list);
            MyFriendListActivity.this.notifyDataLoaded(false);
            if (MyFriendListActivity.this.f17115c == null || MyFriendListActivity.this.f17116d.getText().toString().equals(MyFriendListActivity.this.f17115c.toString())) {
                return;
            }
            MyFriendListActivity myFriendListActivity = MyFriendListActivity.this;
            myFriendListActivity.u0(myFriendListActivity.f17116d.getText());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyFriendsBean> aVar) {
            MyFriendListActivity.this.f17114b = false;
            MyFriendListActivity.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<MyFriendsBean> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyFriendsBean myFriendsBean, @NonNull FaceCastBaseResponse<MyFriendsBean> faceCastBaseResponse) {
            if (myFriendsBean == null) {
                myFriendsBean = new MyFriendsBean();
                myFriendsBean.list = new ArrayList<>();
                myFriendsBean.totalPage = 1;
            }
            if (MyFriendListActivity.this.getCurrentPage() == 1) {
                MyFriendListActivity.this.setDatas(myFriendsBean.list);
            } else {
                MyFriendListActivity.this.addDatas(myFriendsBean.list);
            }
            MyFriendListActivity.this.notifyDataLoaded(true);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@Nullable g7.a<MyFriendsBean> aVar) {
            MyFriendListActivity.this.notifyDataLoaded(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r0(View view) {
        this.f17116d.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean s0(TextView textView, int i9, KeyEvent keyEvent) {
        if (i9 == 3) {
            hideSoftKeyboard();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(CharSequence charSequence) {
        setCurrentPage(1);
        if (this.f17114b) {
            this.f17115c = charSequence;
            return;
        }
        this.f17114b = true;
        if (TextUtils.isEmpty(charSequence) && getRecyclerView().getAdapter() != null) {
            this.f17114b = false;
            if (!TextUtils.isEmpty(this.f17115c) && !this.f17116d.getText().toString().equals(this.f17115c.toString()) && !TextUtils.isEmpty(this.f17116d.getText().toString())) {
                u0(this.f17116d.getText());
                return;
            } else {
                notifyDataLoaded(false);
                return;
            }
        }
        q0(charSequence.toString());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        if (getList() == null || getList().size() != 1 || getList().get(0).get_id() == null || getList().get(0).get_id().longValue() != -1) {
            return super.getItemViewType(i9);
        }
        return -1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_my_friend_list;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity, com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        setTitle(R.string.message_Friends);
        this.f17116d = (EditText) findViewById(R.id.search_text);
        this.f17117e = (ImageView) findViewById(R.id.delete_edit);
        this.f17116d.addTextChangedListener(new a());
        this.f17117e.setOnClickListener(new View.OnClickListener() { // from class: l8.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyFriendListActivity.this.r0(view);
            }
        });
        this.f17116d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: l8.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
                boolean s02;
                s02 = MyFriendListActivity.this.s0(textView, i9, keyEvent);
                return s02;
            }
        });
        getRefreshableLayout().T(new b());
        getRefreshableLayout().S(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void loadData(int i9) {
        HashMap hashMap = new HashMap();
        hashMap.put("currPage", getCurrentPage() + "");
        hashMap.put("pageSize", ThirdPushHelper.TYPE_HUAWEI);
        post("user/attention/getFriendsList").E(hashMap).M(new e());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        showEmptyView();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: p0 */
    public void convertItem(BaseViewHolder baseViewHolder, int i9, MyFriendsBean.FriendBean friendBean) {
        if (baseViewHolder instanceof MyFriendViewHolder) {
            ((MyFriendViewHolder) baseViewHolder).d(friendBean, this.f17116d.getText().toString(), i9 == getList().size() - 1);
        }
    }

    public void q0(String str) {
        post("user/attention/getFriendsList").D("account", str).M(new d());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void reload() {
        setCurrentPage(1);
        if (TextUtils.isEmpty(this.f17116d.getText().toString().trim())) {
            loadData(1);
        } else {
            u0(this.f17116d.getText().toString().trim());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: t0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, MyFriendsBean.FriendBean friendBean) {
        if (baseViewHolder instanceof EmptyHolder) {
            loadData(1);
        } else {
            UserHomePageAct.start(getActivity(), friendBean.getCurrentUserId());
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == -1) {
            return new EmptyHolder(viewGroup);
        }
        return new MyFriendViewHolder(viewGroup);
    }
}
