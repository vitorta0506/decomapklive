package com.guochao.faceshow.aaspring.base.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.ActivityOptionsCompat;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.Comment;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.EmptyHolder;
import com.guochao.faceshow.aaspring.modulars.main.fragment.CommentsFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.SearchFriendsActivity;
import com.guochao.faceshow.aaspring.utils.AndroidBug5497Workaround;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ScreenShotHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.views.AtFriendEditText;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.bean.MyTopicAndName;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.utils.Tools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseCommentFragment extends BaseRecyclerViewActivity<Comment, BaseViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    protected String f16093a;

    /* renamed from: b  reason: collision with root package name */
    protected AtFriendEditText f16094b;

    /* renamed from: c  reason: collision with root package name */
    protected View f16095c;

    /* renamed from: e  reason: collision with root package name */
    protected ImageView f16097e;

    /* renamed from: h  reason: collision with root package name */
    protected k f16100h;

    /* renamed from: i  reason: collision with root package name */
    protected int f16101i;
    @BindView
    protected TextView mTextViewCount;

    /* renamed from: d  reason: collision with root package name */
    protected String f16096d = "";

    /* renamed from: f  reason: collision with root package name */
    int f16098f = -1;

    /* renamed from: g  reason: collision with root package name */
    ArrayList<IM_User> f16099g = new ArrayList<>();

    /* renamed from: j  reason: collision with root package name */
    int f16102j = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (BaseCommentFragment.this.f16094b.getText().toString().length() > 240) {
                BaseCommentFragment.this.f16094b.setText(BaseCommentFragment.this.f16094b.getText().toString().substring(0, 240));
                AtFriendEditText atFriendEditText = BaseCommentFragment.this.f16094b;
                atFriendEditText.setSelection(atFriendEditText.length());
                ToastUtils.showToast(BaseCommentFragment.this.getActivity(), BaseCommentFragment.this.getString(R.string.Words_length_over_limit));
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i9, int i10, int i11) {
            if (BaseCommentFragment.this.f16094b.getText().toString().trim().length() > 0) {
                BaseCommentFragment.this.f16097e.setEnabled(true);
            } else {
                BaseCommentFragment.this.f16097e.setEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HeadPortraitView f16104a;

        b(HeadPortraitView headPortraitView) {
            this.f16104a = headPortraitView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f16104a.performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comment f16106a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f16107b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ImageView f16108c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f16109d;

        c(Comment comment, View view, ImageView imageView, TextView textView) {
            this.f16106a = comment;
            this.f16107b = view;
            this.f16108c = imageView;
            this.f16109d = textView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseCommentFragment.this.k0(this.f16106a, this.f16107b, this.f16108c, this.f16109d);
            BaseCommentFragment.this.F0(this.f16106a, this.f16107b, this.f16109d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseViewHolder f16111a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f16112b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Comment f16113c;

        d(BaseViewHolder baseViewHolder, int i9, Comment comment) {
            this.f16111a = baseViewHolder;
            this.f16112b = i9;
            this.f16113c = comment;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            BaseCommentFragment.this.A0(this.f16111a, this.f16112b, this.f16113c);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comment f16115a;

        e(Comment comment) {
            this.f16115a = comment;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(BaseCommentFragment.this.getActivity(), UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, this.f16115a.getUserId());
            BaseCommentFragment.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comment f16117a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f16118b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f16119c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ImageView f16120d;

        f(Comment comment, TextView textView, View view, ImageView imageView) {
            this.f16117a = comment;
            this.f16118b = textView;
            this.f16119c = view;
            this.f16120d = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.f16117a.getIsLike() == 0) {
                this.f16117a.setIsLike(1);
                Comment comment = this.f16117a;
                comment.setLikeNum(comment.getLikeNum() + 1);
            } else {
                this.f16117a.setIsLike(0);
                Comment comment2 = this.f16117a;
                comment2.setLikeNum(comment2.getLikeNum() - 1);
            }
            this.f16118b.setText(Formatter.getFormat(this.f16117a.getLikeNum()));
            this.f16119c.setSelected(this.f16117a.getIsLike() == 1);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f16120d, "scaleX", 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f16120d, "scaleY", 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements View.OnTouchListener {
        g() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && BaseConfig.isChinese() && com.guochao.faceshow.aaspring.manager.i.u().s().getIsBindMobile() == 0) {
                com.guochao.faceshow.aaspring.modulars.live.broadcaster.d.e(BaseCommentFragment.this.getActivity(), BaseCommentFragment.this.getSupportFragmentManager(), 2);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements AtFriendEditText.b {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.views.AtFriendEditText.b
        public boolean a(AtFriendEditText atFriendEditText, int i9, KeyEvent keyEvent) {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.views.AtFriendEditText.b
        public void b() {
            BaseCommentFragment.this.f16095c.callOnClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (BaseCommentFragment.this.f16094b.getText() != null && !TextUtils.isEmpty(BaseCommentFragment.this.f16094b.getText()) && BaseCommentFragment.l0(BaseCommentFragment.this.getActivity(), BaseCommentFragment.this.f16094b.getText().toString())) {
                ToastUtils.showCenterToast(BaseCommentFragment.this.getActivity(), BaseCommentFragment.this.getString(R.string.comment_limit_tip));
                return;
            }
            BaseCommentFragment baseCommentFragment = BaseCommentFragment.this;
            baseCommentFragment.B0(baseCommentFragment.f16094b.getText() == null ? "" : BaseCommentFragment.this.f16094b.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BaseCommentFragment.this.o0();
        }
    }

    /* loaded from: classes3.dex */
    public interface k {
        void a(int i9, int i10);
    }

    private ArrayList<String> E0(String str, String str2) {
        ArrayList<String> arrayList = new ArrayList<>();
        int indexOf = str.indexOf(str2);
        if (indexOf != -1) {
            this.f16102j = indexOf;
            if (indexOf > 0) {
                arrayList.add(str.substring(0, indexOf));
            }
        } else {
            arrayList.add(str);
        }
        while (indexOf != -1) {
            indexOf = str.indexOf(str2, indexOf + 1);
            if (indexOf == -1) {
                arrayList.add(str.substring(this.f16102j, str.length()));
            } else {
                arrayList.add(str.substring(this.f16102j, indexOf));
            }
            this.f16102j = indexOf;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(Comment comment, View view, ImageView imageView, TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, "scaleX", 0.2f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(imageView, "scaleY", 0.2f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new f(comment, textView, view, imageView));
        animatorSet.setDuration(150L);
        animatorSet.start();
    }

    public static boolean l0(Context context, String str) {
        String string = CustomNameCacheUtils.getString(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE);
        if (TextUtils.isEmpty(string)) {
            CustomNameCacheUtils.setString(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE, str);
            CustomNameCacheUtils.setInt(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE_NUMBER, 1);
            return false;
        }
        int i9 = CustomNameCacheUtils.getInt(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE_NUMBER);
        if (!str.equals(string)) {
            CustomNameCacheUtils.setString(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE, str);
            CustomNameCacheUtils.setInt(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE_NUMBER, 1);
            return false;
        } else if (i9 >= 2) {
            return true;
        } else {
            CustomNameCacheUtils.setInt(context, CustomNameCacheUtils.MODULE_NOTIFICATION, CustomNameCacheUtils.COMMENT_MESSAGE_NUMBER, 2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        Intent intent = new Intent(getActivity(), SearchFriendsActivity.class);
        intent.putExtra("title", getString(R.string.ugc_add_at));
        startActivityForResult(intent, 77, ActivityOptionsCompat.makeCustomAnimation(getActivity(), R.anim.enter_up, R.anim.do_nothing).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean t0(BaseViewHolder baseViewHolder, int i9, Comment comment, View view) {
        A0(baseViewHolder, i9, comment);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean u0(BaseViewHolder baseViewHolder, int i9, Comment comment, View view) {
        A0(baseViewHolder, i9, comment);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(View view) {
        finish();
    }

    public void A0(BaseViewHolder baseViewHolder, int i9, Comment comment) {
    }

    public abstract void B0(String str);

    protected abstract void F0(Comment comment, View view, TextView textView);

    @OnClick
    @Optional
    public void cancel(View view) {
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.top_y_in_activity, R.anim.bottom_y_out_activity);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a, com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    public int getItemViewType(int i9) {
        if (getList() != null && getList().size() == 1 && getList().get(0).getCommentId() == -1) {
            return -1;
        }
        return super.getItemViewType(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.fragment_comments;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        AndroidBug5497Workaround.assistActivity(this);
        findViewById(R.id.space).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.base.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseCommentFragment.this.v0(view);
            }
        });
        AtFriendEditText atFriendEditText = (AtFriendEditText) findViewById(R.id.input);
        this.f16094b = atFriendEditText;
        atFriendEditText.setOnTouchListener(new g());
        this.f16094b.setOnKeyAtDownListener(new h());
        this.f16097e = (ImageView) findViewById(R.id.btn_send);
        this.f16095c = findViewById(R.id.btn_at_people);
        this.f16097e.setOnClickListener(new i());
        this.f16097e.setEnabled(false);
        this.f16095c.setOnClickListener(new j());
        this.f16094b.addTextChangedListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    /* renamed from: m0 */
    public void convertItem(final BaseViewHolder baseViewHolder, final int i9, final Comment comment) {
        if (baseViewHolder instanceof EmptyHolder) {
            return;
        }
        HeadPortraitView headPortraitView = (HeadPortraitView) baseViewHolder.getView(R.id.avatar_view);
        VipIndicatorView vipIndicatorView = (VipIndicatorView) baseViewHolder.getView(R.id.vip_indicator);
        headPortraitView.f(comment, false);
        if (comment.getUserVipMsg() != null) {
            vipIndicatorView.setVipLevel(comment.getUserVipMsg().getIsVip());
        }
        baseViewHolder.setText(R.id.author_name, comment.getIsCommentator());
        baseViewHolder.getView(R.id.author_name).setOnClickListener(new b(headPortraitView));
        baseViewHolder.getView(R.id.author).setVisibility(comment.getUserId().equals(this.f16093a) ? 0 : 8);
        TextView textView = (TextView) baseViewHolder.getView(R.id.content);
        View view = baseViewHolder.getView(R.id.like_area);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.icon_like);
        view.setSelected(comment.getIsLike() != 0);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.like_count);
        textView2.setText(Formatter.getFormat(comment.getLikeNum()));
        baseViewHolder.setText(R.id.send_time, Tools.timeString(comment.getCreateTime(), getActivity()));
        boolean z10 = this instanceof CommentsFragment;
        View view2 = baseViewHolder.getView(R.id.hot_divider);
        if (view2 != null) {
            view2.setVisibility((z10 && i9 == 3) ? 0 : 8);
        }
        baseViewHolder.getView(R.id.send_time).setVisibility((!z10 || i9 >= 3) ? 0 : 8);
        baseViewHolder.getView(R.id.reply_send_time).setVisibility((!z10 || i9 >= 3) ? 0 : 8);
        DensityUtil.dp2px((!z10 || i9 >= 3) ? 8.0f : 4.0f);
        baseViewHolder.getView(R.id.like_area).setOnClickListener(new c(comment, view, imageView, textView2));
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.reply_content);
        ViewGroup viewGroup = (ViewGroup) baseViewHolder.getView(R.id.reply_item);
        CharSequence realComment = Comment.getRealComment(getActivity(), comment);
        textView.setText(realComment);
        if (realComment instanceof Spannable) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        } else {
            textView.setMovementMethod(null);
        }
        textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.guochao.faceshow.aaspring.base.fragment.c
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view3) {
                boolean t02;
                t02 = BaseCommentFragment.this.t0(baseViewHolder, i9, comment, view3);
                return t02;
            }
        });
        textView3.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.guochao.faceshow.aaspring.base.fragment.b
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view3) {
                boolean u02;
                u02 = BaseCommentFragment.this.u0(baseViewHolder, i9, comment, view3);
                return u02;
            }
        });
        if (comment.getCommentParent() != null) {
            Comment commentParent = comment.getCommentParent();
            VipIndicatorView vipIndicatorView2 = (VipIndicatorView) baseViewHolder.getView(R.id.reply_vip_indicator);
            if (commentParent.getUserVipMsg() != null && commentParent.getUserVipMsg().getIsVip() != 0) {
                vipIndicatorView2.setVisibility(0);
                vipIndicatorView2.setVipLevel(commentParent.getUserVipMsg().getIsVip());
            } else {
                vipIndicatorView2.setVisibility(8);
            }
            baseViewHolder.setText(R.id.reply_author_name, commentParent.getIsCommentator());
            baseViewHolder.setText(R.id.reply_send_time, Tools.timeString(commentParent.getCreateTime(), getActivity()));
            ((HeadPortraitView) baseViewHolder.getView(R.id.reply_avatar)).f(commentParent, false);
            viewGroup.setVisibility(0);
            textView3.setText(Comment.getRealComment(getActivity(), commentParent));
            baseViewHolder.getView(R.id.reply_author).setVisibility(commentParent.getUserId().equals(this.f16093a) ? 0 : 8);
        } else {
            viewGroup.setVisibility(8);
        }
        baseViewHolder.getView(R.id.item).setOnLongClickListener(new d(baseViewHolder, i9, comment));
        headPortraitView.setOnClickListener(new e(comment));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String n0(String str) {
        return GsonGetter.getGson().toJson(p0(r0(E0(str, "#"))));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.c
    public void notifyDataLoaded(boolean z10) {
        super.notifyDataLoaded(z10);
        if (z10) {
            setFooterView(0);
        } else {
            hideFooterView();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 652) {
            if (i10 != -1 || intent == null) {
                return;
            }
            ScreenShotHelper.getInstance().onActivityResult(getActivity(), i10, intent);
            ScreenShotHelper.onActivityResult = true;
        } else if (i10 == -1) {
            AtFriendEditText atFriendEditText = this.f16094b;
            if (atFriendEditText != null) {
                atFriendEditText.b(i9, i10, intent);
            }
            List list = (List) MemoryCache.getInstance().remove(Contants.PARAMS_KEY1);
            if (list == null) {
                return;
            }
            for (int i11 = 0; i11 < list.size(); i11++) {
                IM_User iM_User = (IM_User) list.get(i11);
                String str = "@" + StringUtils.addInvisibleCharBeforeWhiteSpace(iM_User.getNick_name());
                if (str.length() <= 90) {
                    this.f16094b.a(str, String.valueOf(iM_User.getCurrentUserId()));
                    Iterator<IM_User> it = this.f16099g.iterator();
                    boolean z10 = false;
                    while (it.hasNext()) {
                        IM_User next = it.next();
                        if (next.getCurrentUserId() != null && next.getCurrentUserId().equals(iM_User.getCurrentUserId())) {
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        this.f16099g.add(iM_User);
                    }
                }
            }
            SoftKeyBoardUtils.openSoftKeyBoard(this.f16094b);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        s0(getActivity());
        super.onStop();
    }

    public ArrayList<MyTopicAndName> p0(ArrayList<String> arrayList) {
        ArrayList<MyTopicAndName> arrayList2 = new ArrayList<>();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            String str = arrayList.get(i9);
            if (str.startsWith("#")) {
                if (str.length() == 1) {
                    MyTopicAndName myTopicAndName = new MyTopicAndName();
                    myTopicAndName.type = 1;
                    myTopicAndName.content = str;
                    myTopicAndName.userId = "";
                    arrayList2.add(myTopicAndName);
                } else if (str.contains(" ")) {
                    String[] split = str.split("\\s");
                    if (split[0].length() == 1) {
                        MyTopicAndName myTopicAndName2 = new MyTopicAndName();
                        myTopicAndName2.type = 1;
                        myTopicAndName2.content = str;
                        myTopicAndName2.userId = "";
                        arrayList2.add(myTopicAndName2);
                    } else {
                        MyTopicAndName myTopicAndName3 = new MyTopicAndName();
                        myTopicAndName3.type = 2;
                        myTopicAndName3.content = split[0];
                        myTopicAndName3.userId = "";
                        arrayList2.add(myTopicAndName3);
                        String replace = str.replace(split[0], "");
                        MyTopicAndName myTopicAndName4 = new MyTopicAndName();
                        myTopicAndName4.type = 1;
                        myTopicAndName4.content = replace;
                        myTopicAndName4.userId = "";
                        arrayList2.add(myTopicAndName4);
                    }
                } else {
                    MyTopicAndName myTopicAndName5 = new MyTopicAndName();
                    myTopicAndName5.type = 1;
                    myTopicAndName5.content = str;
                    myTopicAndName5.userId = "";
                    arrayList2.add(myTopicAndName5);
                }
            } else if (str.startsWith("@")) {
                q0(arrayList2, str);
            } else {
                MyTopicAndName myTopicAndName6 = new MyTopicAndName();
                myTopicAndName6.type = 1;
                myTopicAndName6.content = str;
                myTopicAndName6.userId = "";
                arrayList2.add(myTopicAndName6);
            }
        }
        return arrayList2;
    }

    protected void q0(ArrayList<MyTopicAndName> arrayList, String str) {
        for (int i9 = 0; i9 < this.f16099g.size(); i9++) {
            if (str.contains("@" + this.f16099g.get(i9).getNick_name())) {
                this.f16098f = i9;
            }
        }
        int i10 = this.f16098f;
        if (i10 >= 0) {
            IM_User iM_User = this.f16099g.get(i10);
            String str2 = "@" + iM_User.getNick_name();
            if (str.length() == str2.length()) {
                MyTopicAndName myTopicAndName = new MyTopicAndName();
                myTopicAndName.type = 3;
                myTopicAndName.content = str;
                myTopicAndName.userId = String.valueOf(iM_User.getCurrentUserId());
                arrayList.add(myTopicAndName);
            } else {
                String substring = str.substring(0, str2.length());
                String substring2 = str.substring(str2.length(), str.length());
                MyTopicAndName myTopicAndName2 = new MyTopicAndName();
                myTopicAndName2.type = 3;
                myTopicAndName2.content = substring;
                myTopicAndName2.userId = String.valueOf(iM_User.getCurrentUserId());
                arrayList.add(myTopicAndName2);
                MyTopicAndName myTopicAndName3 = new MyTopicAndName();
                myTopicAndName3.type = 1;
                myTopicAndName3.userId = "";
                myTopicAndName3.content = substring2;
                arrayList.add(myTopicAndName3);
            }
            this.f16098f = -1;
            return;
        }
        MyTopicAndName myTopicAndName4 = new MyTopicAndName();
        myTopicAndName4.type = 1;
        myTopicAndName4.userId = "";
        myTopicAndName4.content = str;
        arrayList.add(myTopicAndName4);
    }

    protected ArrayList<String> r0(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            arrayList2.addAll(E0(arrayList.get(i9), "@"));
        }
        return arrayList2;
    }

    protected void s0(Activity activity) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
            if (activity.getWindow().getAttributes().softInputMode == 2 || activity.getCurrentFocus() == null || inputMethodManager == null) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setOnCommentCountChangedListener(k kVar) {
        this.f16100h = kVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity, d7.a
    public void showEmptyView() {
        if (getList() == null || getList().isEmpty()) {
            Comment comment = new Comment();
            comment.setCommentId(-1);
            addData(comment);
            notifyDataLoaded(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseRecyclerViewActivity
    /* renamed from: y0 */
    public void onItemClick(BaseViewHolder baseViewHolder, int i9, Comment comment) {
        if (baseViewHolder instanceof EmptyHolder) {
            loadData(1);
            return;
        }
        this.f16096d = comment.getCommentId() + "";
        AtFriendEditText atFriendEditText = this.f16094b;
        atFriendEditText.setHint("@" + comment.getIsCommentator());
        this.f16094b.setFocusable(true);
        this.f16094b.setFocusableInTouchMode(true);
        this.f16094b.requestFocus();
        SoftKeyBoardUtils.openSoftKeyBoard(this.f16094b);
    }

    @Override // com.guochao.faceshow.aaspring.base.adapter.BaseRecyclerAdapter.a
    @NonNull
    public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == -1) {
            return new EmptyHolder(viewGroup, null);
        }
        boolean z10 = this instanceof CommentsFragment;
        return new BaseViewHolder(getLayoutInflater().inflate(R.layout.item_short_video_comments, viewGroup, false));
    }
}
