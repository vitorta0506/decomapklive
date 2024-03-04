package com.guochao.faceshow.aaspring.modulars.chat.activity;

import android.view.View;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR!\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/activity/GreetingListActivity;", "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;", "()V", "emptyView", "Landroid/view/View;", "getEmptyView", "()Landroid/view/View;", "setEmptyView", "(Landroid/view/View;)V", "list", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "Lkotlin/collections/ArrayList;", "getList", "()Ljava/util/ArrayList;", "recylcerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecylcerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecylcerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "getLayoutId", "", "initView", "", "loadData", "useImmersiveStatusBar", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GreetingListActivity extends BaseActivity {
    @BindView
    public View emptyView;
    @NotNull
    private final ArrayList<ConversationInfo> list = new ArrayList<>();
    @BindView
    public RecyclerView recylcerView;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-2  reason: not valid java name */
    public static final void m347initView$lambda2(GreetingListActivity this$0, a8.a aVar) {
        ArrayList arrayList;
        List list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (aVar != null) {
            this$0.list.clear();
            ArrayList<ConversationInfo> arrayList2 = this$0.list;
            List<ConversationInfo> a10 = aVar.a();
            if (a10 != null) {
                arrayList = new ArrayList();
                for (Object obj : a10) {
                    if (((ConversationInfo) obj).isSayHi()) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            Intrinsics.checkNotNull(arrayList);
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            arrayList2.addAll(list);
            RecyclerView.Adapter adapter = this$0.getRecylcerView().getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
            this$0.getRecylcerView().setVisibility(this$0.list.isEmpty() ? 8 : 0);
            this$0.getEmptyView().setVisibility(this$0.list.isEmpty() ? 0 : 8);
        }
    }

    @NotNull
    public final View getEmptyView() {
        View view = this.emptyView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("emptyView");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_greeting_list;
    }

    @NotNull
    public final ArrayList<ConversationInfo> getList() {
        return this.list;
    }

    @NotNull
    public final RecyclerView getRecylcerView() {
        RecyclerView recyclerView = this.recylcerView;
        if (recyclerView != null) {
            return recyclerView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recylcerView");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.system_hello);
        com.guochao.faceshow.aaspring.manager.im.b.l0().o(this, new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.chat.activity.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                GreetingListActivity.m347initView$lambda2(GreetingListActivity.this, (a8.a) obj);
            }
        });
        getRecylcerView().setLayoutManager(new LinearLayoutManager(getActivity()));
        RecyclerView recylcerView = getRecylcerView();
        ConversationListFragmentV2.ConversationAdapter conversationAdapter = new ConversationListFragmentV2.ConversationAdapter(false, 1, null);
        conversationAdapter.setNewInstance(this.list);
        recylcerView.setAdapter(conversationAdapter);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public final void setEmptyView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.emptyView = view;
    }

    public final void setRecylcerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recylcerView = recyclerView;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useImmersiveStatusBar() {
        return true;
    }
}
