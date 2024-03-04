package com.guochao.faceshow.guild.view;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/guild/view/BaseDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "onAttach", "", "context", "Landroid/content/Context;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public class BaseDialogFragment extends DialogFragment {
    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        requireActivity().getLifecycle().addObserver(new LifecycleEventObserver() { // from class: com.guochao.faceshow.guild.view.BaseDialogFragment$onAttach$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event.getTargetState() == Lifecycle.State.CREATED) {
                    BaseDialogFragment.this.getLifecycle().removeObserver(this);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Bundle bundle2;
        Dialog dialog;
        Dialog dialog2;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        boolean showsDialog = getShowsDialog();
        setShowsDialog(false);
        setShowsDialog(showsDialog);
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setContentView(view);
        }
        FragmentActivity activity = getActivity();
        if (activity != null && (dialog2 = getDialog()) != null) {
            dialog2.setOwnerActivity(activity);
        }
        if (bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null || (dialog = getDialog()) == null) {
            return;
        }
        dialog.onRestoreInstanceState(bundle2);
    }
}
