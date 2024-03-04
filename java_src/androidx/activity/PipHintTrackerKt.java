package androidx.activity;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.RequiresApi;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"trackPipAnimationHintView", "", "Landroid/app/Activity;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/app/Activity;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "activity-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PipHintTrackerKt {
    @RequiresApi(26)
    @ExperimentalCoroutinesApi
    @Nullable
    public static final Object trackPipAnimationHintView(@NotNull final Activity activity, @NotNull View view, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = FlowKt.callbackFlow(new PipHintTrackerKt$trackPipAnimationHintView$flow$1(view, null)).collect(new FlowCollector<Rect>() { // from class: androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$$inlined$collect$1
            @Override // kotlinx.coroutines.flow.FlowCollector
            @Nullable
            public Object emit(Rect rect, @NotNull Continuation continuation2) {
                Api26Impl.INSTANCE.setPipParamsSourceRectHint(activity, rect);
                return Unit.INSTANCE;
            }
        }, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect trackPipAnimationHintView$positionInWindow(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }
}
