package com.guochao.faceshow.activity;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.guochao.faceshow.databinding.ActivityTestBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/activity/TestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "binding", "Lcom/guochao/faceshow/databinding/ActivityTestBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TestActivity extends AppCompatActivity {
    private ActivityTestBinding binding;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onCreate$lambda-0  reason: not valid java name */
    public static final void m601onCreate$lambda0(TestActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityTestBinding activityTestBinding = this$0.binding;
        if (activityTestBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityTestBinding = null;
        }
        activityTestBinding.giftComboView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ActivityTestBinding inflate = ActivityTestBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(layoutInflater)");
        this.binding = inflate;
        ActivityTestBinding activityTestBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        setContentView(inflate.getRoot());
        ActivityTestBinding activityTestBinding2 = this.binding;
        if (activityTestBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityTestBinding = activityTestBinding2;
        }
        activityTestBinding.start.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.activity.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestActivity.m601onCreate$lambda0(TestActivity.this, view);
            }
        });
    }
}
