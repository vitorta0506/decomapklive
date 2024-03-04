package com.guochao.faceshow.component.live.fragment;

import android.app.LocalActivityManager;
import android.os.Bundle;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\nH\u0016J\b\u0010\u000e\u001a\u00020\nH\u0016J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0010\u001a\u00020\nH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;", "()V", "localActivityManager", "Landroid/app/LocalActivityManager;", "getLocalActivityManager", "()Landroid/app/LocalActivityManager;", "localActivityManager$delegate", "Lkotlin/Lazy;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onResume", "onStop", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public class BaseEmbedActivityFragment extends GCCoreFragment {
    @NotNull
    private final Lazy localActivityManager$delegate;

    public BaseEmbedActivityFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<LocalActivityManager>() { // from class: com.guochao.faceshow.component.live.fragment.BaseEmbedActivityFragment$localActivityManager$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LocalActivityManager invoke() {
                return new LocalActivityManager(BaseEmbedActivityFragment.this.requireActivity(), true);
            }
        });
        this.localActivityManager$delegate = lazy;
    }

    @NotNull
    public final LocalActivityManager getLocalActivityManager() {
        return (LocalActivityManager) this.localActivityManager$delegate.getValue();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getLocalActivityManager().dispatchCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getLocalActivityManager().dispatchDestroy(requireActivity().isFinishing());
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        getLocalActivityManager().dispatchPause(requireActivity().isFinishing());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        getLocalActivityManager().dispatchResume();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        getLocalActivityManager().dispatchStop();
    }
}
