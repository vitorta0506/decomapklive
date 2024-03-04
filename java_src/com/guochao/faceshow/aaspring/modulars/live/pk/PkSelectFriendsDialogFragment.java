package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.app.Dialog;
import android.graphics.Point;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.PkFriends;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.PkSelectFriendsAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.ScreenTools;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class PkSelectFriendsDialogFragment extends BottomSheetDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private View f19712a;

    /* renamed from: b  reason: collision with root package name */
    private PkSelectFriendsAdapter f19713b;

    /* renamed from: c  reason: collision with root package name */
    private List<IM_User> f19714c;
    @BindView
    LinearLayout content;

    /* renamed from: d  reason: collision with root package name */
    private List<IM_User> f19715d;
    @BindView
    ImageView deleteEdit;

    /* renamed from: e  reason: collision with root package name */
    private List<IM_User> f19716e;
    @BindView
    ImageView emptyView;
    @BindView
    EditText etSearch;

    /* renamed from: f  reason: collision with root package name */
    private List<IM_User> f19717f;

    /* renamed from: i  reason: collision with root package name */
    private BottomSheetBehavior<FrameLayout> f19720i;

    /* renamed from: j  reason: collision with root package name */
    private LiveRoomModel f19721j;

    /* renamed from: l  reason: collision with root package name */
    private SVGAParser f19723l;
    @BindView
    SVGAImageView loadingAnim;

    /* renamed from: m  reason: collision with root package name */
    BroadCastFragment f19724m;
    @BindView
    RecyclerView rcvList;
    @BindView
    TextView tvPkFriendToMatch;

    /* renamed from: g  reason: collision with root package name */
    private int f19718g = 6;

    /* renamed from: h  reason: collision with root package name */
    private int f19719h = ScreenTools.dip2px(50.0f);

    /* renamed from: k  reason: collision with root package name */
    private int f19722k = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<PkFriends> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkFriends pkFriends, @NonNull FaceCastBaseResponse<PkFriends> faceCastBaseResponse) {
            if (pkFriends != null && pkFriends.getUserList() != null) {
                List<IM_User> userList = pkFriends.getUserList();
                PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = PkSelectFriendsDialogFragment.this;
                pkSelectFriendsDialogFragment.tvPkFriendToMatch.setText(pkSelectFriendsDialogFragment.getString(R.string.pk_friend_to_match, String.valueOf(userList.size())));
                for (IM_User iM_User : userList) {
                    for (String str : pkFriends.getLiveUserIds()) {
                        if (Objects.equals(str, iM_User.getCurrentUserId())) {
                            iM_User.setLiveState("1");
                        }
                    }
                }
                Collections.sort(userList);
                PkSelectFriendsDialogFragment.this.f19714c.addAll(userList);
                PkSelectFriendsDialogFragment.this.f19717f.addAll(PkSelectFriendsDialogFragment.this.f19714c);
                PkSelectFriendsDialogFragment.this.a2();
                PkSelectFriendsDialogFragment.this.f19713b.notifyDataSetChanged();
                return;
            }
            PkSelectFriendsDialogFragment.this.a2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkFriends> aVar) {
            PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = PkSelectFriendsDialogFragment.this;
            pkSelectFriendsDialogFragment.tvPkFriendToMatch.setText(pkSelectFriendsDialogFragment.getString(R.string.pk_friend_to_match, "0"));
            PkSelectFriendsDialogFragment.this.a2();
        }
    }

    /* loaded from: classes3.dex */
    class b extends BottomSheetBehavior.BottomSheetCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Window f19726a;

        b(Window window) {
            this.f19726a = window;
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f10) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i9) {
            if (i9 != 4 && i9 != 1) {
                if (i9 == 3) {
                    WindowManager.LayoutParams attributes = this.f19726a.getAttributes();
                    attributes.dimAmount = 0.1f;
                    this.f19726a.setAttributes(attributes);
                    if (PkSelectFriendsDialogFragment.this.emptyView.getVisibility() == 0) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) PkSelectFriendsDialogFragment.this.emptyView.getLayoutParams();
                        layoutParams.height = -1;
                        layoutParams.setMargins(0, 0, 0, 0);
                        PkSelectFriendsDialogFragment.this.emptyView.setLayoutParams(layoutParams);
                        return;
                    }
                    return;
                }
                return;
            }
            PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = PkSelectFriendsDialogFragment.this;
            pkSelectFriendsDialogFragment.Y1(pkSelectFriendsDialogFragment.f19712a);
            WindowManager.LayoutParams attributes2 = this.f19726a.getAttributes();
            attributes2.dimAmount = 0.0f;
            this.f19726a.setAttributes(attributes2);
            if (PkSelectFriendsDialogFragment.this.emptyView.getVisibility() == 0 && i9 == 4) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) PkSelectFriendsDialogFragment.this.emptyView.getLayoutParams();
                layoutParams2.height = -2;
                layoutParams2.setMargins(0, ScreenTools.dip2px(80.0f), 0, 0);
                PkSelectFriendsDialogFragment.this.emptyView.setLayoutParams(layoutParams2);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PkSelectFriendsDialogFragment.this.content.setFocusable(true);
            PkSelectFriendsDialogFragment.this.content.setFocusableInTouchMode(true);
            PkSelectFriendsDialogFragment.this.content.requestFocus();
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PkSelectFriendsDialogFragment.this.f19720i.setState(3);
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class e extends RecyclerView.OnScrollListener {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            PkSelectFriendsDialogFragment.this.content.setFocusable(true);
            PkSelectFriendsDialogFragment.this.content.setFocusableInTouchMode(true);
            PkSelectFriendsDialogFragment.this.content.requestFocus();
            PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = PkSelectFriendsDialogFragment.this;
            pkSelectFriendsDialogFragment.Y1(pkSelectFriendsDialogFragment.f19712a);
        }
    }

    /* loaded from: classes3.dex */
    class f implements TextWatcher {
        f() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > 0) {
                PkSelectFriendsDialogFragment.this.deleteEdit.setVisibility(0);
            } else {
                PkSelectFriendsDialogFragment.this.deleteEdit.setVisibility(8);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (PkSelectFriendsDialogFragment.this.f19714c.size() != PkSelectFriendsDialogFragment.this.f19717f.size()) {
                PkSelectFriendsDialogFragment.this.f19714c.clear();
                PkSelectFriendsDialogFragment.this.f19714c.addAll(PkSelectFriendsDialogFragment.this.f19717f);
            }
            PkSelectFriendsDialogFragment.this.Z1();
        }
    }

    /* loaded from: classes3.dex */
    class g implements z9.a {
        g() {
        }

        @Override // z9.a
        public void b(View view, String str, int i9) {
            if (str.equals(BaseConfig.ITEM)) {
                PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = PkSelectFriendsDialogFragment.this;
                pkSelectFriendsDialogFragment.f19718g = pkSelectFriendsDialogFragment.f19720i.getState();
                UserHomePageAct.start(PkSelectFriendsDialogFragment.this.getContext(), ((IM_User) PkSelectFriendsDialogFragment.this.f19714c.get(i9)).getCurrentUserId(), 1);
                return;
            }
            x.n().D(2);
            PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment2 = PkSelectFriendsDialogFragment.this;
            pkSelectFriendsDialogFragment2.f19724m.b5((IM_User) pkSelectFriendsDialogFragment2.f19714c.get(i9));
            PkSelectFriendsDialogFragment.this.dismissAllowingStateLoss();
        }
    }

    private int W1() {
        if (getContext() != null) {
            WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
            Point point = new Point();
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getSize(point);
                return point.y - X1();
            }
        }
        return 1920;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        String lowerCase = this.etSearch.getText().toString().toLowerCase();
        if (!TextUtils.isEmpty(lowerCase)) {
            if (this.f19716e == null) {
                this.f19716e = new ArrayList();
            }
            this.f19716e.clear();
            Iterator<IM_User> it = this.f19714c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                IM_User next = it.next();
                String lowerCase2 = next.getUserName().toLowerCase();
                if ((TextUtils.isEmpty(lowerCase2) ? "" : lowerCase2).startsWith(lowerCase)) {
                    this.f19716e.add(next);
                }
            }
            for (IM_User iM_User : this.f19714c) {
                if (iM_User != null) {
                    String lowerCase3 = iM_User.getUserName().toLowerCase();
                    if (TextUtils.isEmpty(lowerCase3)) {
                        lowerCase3 = "";
                    }
                    if (lowerCase3.contains(lowerCase) && !this.f19716e.contains(iM_User)) {
                        this.f19716e.add(iM_User);
                    }
                }
            }
            this.f19714c.clear();
            this.f19714c.addAll(this.f19716e);
            a2();
        } else {
            this.f19714c.clear();
            this.f19714c.addAll(this.f19717f);
            a2();
        }
        this.f19713b.notifyDataSetChanged();
    }

    public static PkSelectFriendsDialogFragment b2(FragmentManager fragmentManager, LiveRoomModel liveRoomModel, int i9) {
        PkSelectFriendsDialogFragment pkSelectFriendsDialogFragment = new PkSelectFriendsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(BaseConfig.LIVEROOMMODEL, liveRoomModel);
        bundle.putInt("waitPeople", i9);
        pkSelectFriendsDialogFragment.setArguments(bundle);
        pkSelectFriendsDialogFragment.show(fragmentManager, PkSelectFriendsDialogFragment.class.getSimpleName());
        return pkSelectFriendsDialogFragment;
    }

    private void loadData() {
        new PostRequest().O(getActivity()).P(this).Q("tokens/user/attention/getFriendsListAndLiveUserIds").v("currPage", 1).v("pageSize", 10000).M(new a());
    }

    public int X1() {
        return this.f19719h;
    }

    public void Y1(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
        }
    }

    public void a2() {
        if (this.f19714c.size() > 0) {
            this.emptyView.setVisibility(8);
        } else {
            this.emptyView.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() instanceof LiveBroadCastActivity) {
            this.f19724m = ((LiveBroadCastActivity) getActivity()).f18066j;
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (getContext() == null) {
            return super.onCreateDialog(bundle);
        }
        return new BottomSheetDialog(getContext(), R.style.TransparentBottomSheetStyle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pk_select_friends, viewGroup, false);
        this.f19712a = inflate;
        ButterKnife.c(this, inflate);
        if (getArguments() != null) {
            this.f19721j = (LiveRoomModel) getArguments().getParcelable(BaseConfig.LIVEROOMMODEL);
            this.f19722k = getArguments().getInt("waitPeople");
        }
        this.f19714c = new ArrayList();
        this.f19715d = new ArrayList();
        this.f19717f = new ArrayList();
        this.f19723l = SvgaImageViewUtils.getParser();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvList.setLayoutManager(linearLayoutManager);
        PkSelectFriendsAdapter pkSelectFriendsAdapter = new PkSelectFriendsAdapter(getActivity(), this.f19714c);
        this.f19713b = pkSelectFriendsAdapter;
        this.rcvList.setAdapter(pkSelectFriendsAdapter);
        this.tvPkFriendToMatch.setText(getString(R.string.pk_friend_to_match, " "));
        loadData();
        return this.f19712a;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.0f;
        window.setAttributes(attributes);
        getDialog().getWindow().setSoftInputMode(2);
        FrameLayout frameLayout = (FrameLayout) ((BottomSheetDialog) getDialog()).getDelegate().findViewById(R.id.design_bottom_sheet);
        if (frameLayout != null) {
            ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) frameLayout.getLayoutParams())).height = W1();
            BottomSheetBehavior<FrameLayout> from = BottomSheetBehavior.from(frameLayout);
            this.f19720i = from;
            from.setState(this.f19718g);
        }
        this.f19720i.addBottomSheetCallback(new b(window));
        this.content.setOnTouchListener(new c());
        this.etSearch.setOnTouchListener(new d());
        this.rcvList.addOnScrollListener(new e());
        this.etSearch.addTextChangedListener(new f());
        this.f19713b.setOnItemClickListener(new g());
    }

    @OnClick
    public void onViewClicked(View view) {
        this.etSearch.setText("");
    }
}
