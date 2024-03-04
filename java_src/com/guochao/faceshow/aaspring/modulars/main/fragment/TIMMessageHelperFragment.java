package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.modulars.main.model.ConversationModel;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel;
import com.guochao.faceshow.context.GCApplication;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0014J\u0012\u0010\u0019\u001a\u00020\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001c"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;", "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;", "()V", "mActivityUnreadView", "Landroid/widget/TextView;", "getMActivityUnreadView", "()Landroid/widget/TextView;", "setMActivityUnreadView", "(Landroid/widget/TextView;)V", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "getViewModel", "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "calNotificationNumber", "", "conversationModel", "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;", "getLayoutId", "", "initView", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "loadData", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TIMMessageHelperFragment extends BaseFragment {
    @Nullable
    private TextView mActivityUnreadView;
    @NotNull
    private final Lazy viewModel$delegate;

    public TIMMessageHelperFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ConversationViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.TIMMessageHelperFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ConversationViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, ConversationViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(ConversationViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel");
                return (ConversationViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
    }

    private final void calNotificationNumber(ConversationModel conversationModel) {
        if (conversationModel instanceof ConversationModel.ConversationListModel) {
            int unread = ((ConversationModel.ConversationListModel) conversationModel).getUnread();
            if (unread > 0) {
                TextView textView = this.mActivityUnreadView;
                Intrinsics.checkNotNull(textView);
                textView.setVisibility(0);
                if (unread <= 99) {
                    TextView textView2 = this.mActivityUnreadView;
                    Intrinsics.checkNotNull(textView2);
                    textView2.setText(String.valueOf(unread));
                } else {
                    TextView textView3 = this.mActivityUnreadView;
                    Intrinsics.checkNotNull(textView3);
                    textView3.setText("99+");
                }
            } else {
                TextView textView4 = this.mActivityUnreadView;
                Intrinsics.checkNotNull(textView4);
                textView4.setVisibility(8);
            }
            ii.b.a(BaseApplication.getInstance(), unread);
        }
    }

    private final ConversationViewModel getViewModel() {
        return (ConversationViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onActivityCreated$lambda-0  reason: not valid java name */
    public static final void m516onActivityCreated$lambda0(TIMMessageHelperFragment this$0, ConversationModel conversationModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.calNotificationNumber(conversationModel);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return 0;
    }

    @Nullable
    public final TextView getMActivityUnreadView() {
        return this.mActivityUnreadView;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mActivityUnreadView = (TextView) requireActivity().findViewById(R.id.activity_unread_num);
        getViewModel().bind(requireActivity(), new Observer() { // from class: com.guochao.faceshow.aaspring.modulars.main.fragment.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TIMMessageHelperFragment.m516onActivityCreated$lambda0(TIMMessageHelperFragment.this, (ConversationModel) obj);
            }
        });
    }

    public final void setMActivityUnreadView(@Nullable TextView textView) {
        this.mActivityUnreadView = textView;
    }
}
