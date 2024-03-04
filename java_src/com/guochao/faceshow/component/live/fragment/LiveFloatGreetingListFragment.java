package com.guochao.faceshow.component.live.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.beans.ConversationInfo;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2;
import com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment;
import com.guochao.faceshow.component.live.utils.FloatFragmentUtils;
import com.guochao.faceshow.databinding.FragmentLiveFloatGreetingListBinding;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/LiveFloatGreetingListFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "list", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;", "Lkotlin/collections/ArrayList;", "viewBinding", "Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;", "setViewBinding", "(Lcom/guochao/faceshow/databinding/FragmentLiveFloatGreetingListBinding;)V", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class LiveFloatGreetingListFragment extends GCCoreFragment {
    @NotNull
    private final ArrayList<ConversationInfo> list = new ArrayList<>();
    public FragmentLiveFloatGreetingListBinding viewBinding;

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-0  reason: not valid java name */
    public static final void m659initView$lambda0(LiveFloatGreetingListFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity activity = this$0.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3  reason: not valid java name */
    public static final void m660initView$lambda3(LiveFloatGreetingListFragment this$0, a8.a aVar) {
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
            RecyclerView.Adapter adapter = this$0.getViewBinding().recyclerView.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
            this$0.getViewBinding().recyclerView.setVisibility(this$0.list.isEmpty() ? 8 : 0);
            this$0.getViewBinding().emptyView.getRoot().setVisibility(this$0.list.isEmpty() ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-5$lambda-4  reason: not valid java name */
    public static final void m661initView$lambda5$lambda4(LiveFloatGreetingListFragment this$0, BaseQuickAdapter adapter, View _v, int i9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(_v, "_v");
        ConversationInfo conversationInfo = (ConversationInfo) adapter.getItem(i9);
        if (conversationInfo == null) {
            return;
        }
        LiveIMChatFloatFragment.Companion companion = LiveIMChatFloatFragment.Companion;
        String conversationId = conversationInfo.getConversationId();
        Intrinsics.checkNotNullExpressionValue(conversationId, "item.conversationId");
        String conversationName = conversationInfo.getConversationName();
        Intrinsics.checkNotNullExpressionValue(conversationName, "item.conversationName");
        LiveIMChatFloatFragment newInstance = companion.newInstance(conversationId, conversationName);
        FragmentActivity activity = this$0.getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity");
        FloatFragmentUtils.addFloatFragment(newInstance, (BaseLiveActivity) activity);
    }

    @NotNull
    public final FragmentLiveFloatGreetingListBinding getViewBinding() {
        FragmentLiveFloatGreetingListBinding fragmentLiveFloatGreetingListBinding = this.viewBinding;
        if (fragmentLiveFloatGreetingListBinding != null) {
            return fragmentLiveFloatGreetingListBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().back.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.live.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveFloatGreetingListFragment.m659initView$lambda0(LiveFloatGreetingListFragment.this, view);
            }
        });
        FloatFragmentUtils.setDefaultFragmentViewHeight(root);
        com.guochao.faceshow.aaspring.manager.im.b.l0().o(this, new Observer() { // from class: com.guochao.faceshow.component.live.fragment.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiveFloatGreetingListFragment.m660initView$lambda3(LiveFloatGreetingListFragment.this, (a8.a) obj);
            }
        });
        getViewBinding().recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        RecyclerView recyclerView = getViewBinding().recyclerView;
        ConversationListFragmentV2.ConversationAdapter conversationAdapter = new ConversationListFragmentV2.ConversationAdapter(false, 1, null);
        conversationAdapter.setNewInstance(this.list);
        conversationAdapter.setOnItemClickListener(new x0.f() { // from class: com.guochao.faceshow.component.live.fragment.d
            @Override // x0.f
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i9) {
                LiveFloatGreetingListFragment.m661initView$lambda5$lambda4(LiveFloatGreetingListFragment.this, baseQuickAdapter, view, i9);
            }
        });
        recyclerView.setAdapter(conversationAdapter);
    }

    public final void setViewBinding(@NotNull FragmentLiveFloatGreetingListBinding fragmentLiveFloatGreetingListBinding) {
        Intrinsics.checkNotNullParameter(fragmentLiveFloatGreetingListBinding, "<set-?>");
        this.viewBinding = fragmentLiveFloatGreetingListBinding;
    }
}
