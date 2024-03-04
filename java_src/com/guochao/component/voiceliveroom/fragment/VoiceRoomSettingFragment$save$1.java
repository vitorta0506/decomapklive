package com.guochao.component.voiceliveroom.fragment;

import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment;
import com.guochao.faceshow.views.SvgaImageViewV2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.voiceliveroom.fragment.VoiceRoomSettingFragment$save$1", f = "VoiceRoomSettingFragment.kt", i = {}, l = {172}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class VoiceRoomSettingFragment$save$1 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {
    final /* synthetic */ VoiceRoomSettingFragment.SavingDialog $dialog;
    /* synthetic */ int I$0;
    int label;
    final /* synthetic */ VoiceRoomSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSettingFragment$save$1(VoiceRoomSettingFragment voiceRoomSettingFragment, VoiceRoomSettingFragment.SavingDialog savingDialog, Continuation<? super VoiceRoomSettingFragment$save$1> continuation) {
        super(2, continuation);
        this.this$0 = voiceRoomSettingFragment;
        this.$dialog = savingDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        VoiceRoomSettingFragment$save$1 voiceRoomSettingFragment$save$1 = new VoiceRoomSettingFragment$save$1(this.this$0, this.$dialog, continuation);
        voiceRoomSettingFragment$save$1.I$0 = ((Number) obj).intValue();
        return voiceRoomSettingFragment$save$1;
    }

    @Nullable
    public final Object invoke(int i9, @Nullable Continuation<? super Unit> continuation) {
        return ((VoiceRoomSettingFragment$save$1) create(Integer.valueOf(i9), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke */
    public /* bridge */ /* synthetic */ Object mo1invoke(Integer num, Continuation<? super Unit> continuation) {
        return invoke(num.intValue(), continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.I$0 == 1) {
                this.this$0.showToast(R$string.save_successful);
                this.$dialog.dismiss();
                this.this$0.getParentFragmentManager().beginTransaction().remove(this.this$0).commitAllowingStateLoss();
                return Unit.INSTANCE;
            }
            this.$dialog.getViewBinding().info.setText(R$string.saved_error);
            SvgaImageViewV2 svgaImageViewV2 = this.$dialog.getViewBinding().loading;
            svgaImageViewV2.clearPlay();
            svgaImageViewV2.setImageResource(R$drawable.ic_voice_room_save_failed);
            this.label = 1;
            if (DelayKt.delay(2000L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i9 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        this.$dialog.dismiss();
        return Unit.INSTANCE;
    }
}
