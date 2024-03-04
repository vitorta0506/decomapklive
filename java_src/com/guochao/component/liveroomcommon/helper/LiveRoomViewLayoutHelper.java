package com.guochao.component.liveroomcommon.helper;

import android.view.View;
import androidx.annotation.IdRes;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.helper.VideoLiveRoomViewLayoutHelper;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.helper.VoiceLiveRoomViewLayoutHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003H&J\u0006\u0010\u0012\u001a\u00020\u0003J;\u0010\u0013\u001a\u00020\f\"\b\b\u0000\u0010\u0014*\u00020\u00032\b\b\u0001\u0010\u0015\u001a\u00020\u00162\u0019\b\u0002\u0010\u0017\u001a\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\f0\u0018¢\u0006\u0002\b\u0019H\u0086\bø\u0001\u0000R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;", "", "contentView", "Landroid/view/View;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V", "getContentView$component_liveroom_release", "()Landroid/view/View;", "getGcLiveRoomModel$component_liveroom_release", "()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "layoutAdsView", "", ViewHierarchyConstants.VIEW_KEY, "layoutBottomActionView", "layoutEventView", "layoutLiveRoomPlayerView", "layoutTopInfoView", "requireLiveRoomDecorView", "requireView", ExifInterface.GPS_DIRECTION_TRUE, "id", "", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class LiveRoomViewLayoutHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final View contentView;
    @NotNull
    private final GCLiveRoomModel gcLiveRoomModel;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;", "", "()V", "create", "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final LiveRoomViewLayoutHelper create(@NotNull GCLiveRoomModel gcLiveRoomModel, @NotNull View view) {
            Intrinsics.checkNotNullParameter(gcLiveRoomModel, "gcLiveRoomModel");
            Intrinsics.checkNotNullParameter(view, "view");
            if (gcLiveRoomModel.isVoiceRoom()) {
                return new VoiceLiveRoomViewLayoutHelper(view, gcLiveRoomModel);
            }
            return new VideoLiveRoomViewLayoutHelper(view, gcLiveRoomModel);
        }
    }

    public LiveRoomViewLayoutHelper(@NotNull View contentView, @NotNull GCLiveRoomModel gcLiveRoomModel) {
        Intrinsics.checkNotNullParameter(contentView, "contentView");
        Intrinsics.checkNotNullParameter(gcLiveRoomModel, "gcLiveRoomModel");
        this.contentView = contentView;
        this.gcLiveRoomModel = gcLiveRoomModel;
    }

    @JvmStatic
    @NotNull
    public static final LiveRoomViewLayoutHelper create(@NotNull GCLiveRoomModel gCLiveRoomModel, @NotNull View view) {
        return Companion.create(gCLiveRoomModel, view);
    }

    public static /* synthetic */ void requireView$default(LiveRoomViewLayoutHelper liveRoomViewLayoutHelper, int i9, Function1 block, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                block = new Function1() { // from class: com.guochao.component.liveroomcommon.helper.LiveRoomViewLayoutHelper$requireView$1
                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((View) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(@NotNull View view) {
                        Intrinsics.checkNotNullParameter(view, "$this$null");
                    }
                };
            }
            Intrinsics.checkNotNullParameter(block, "block");
            View findViewById = liveRoomViewLayoutHelper.requireLiveRoomDecorView().findViewById(i9);
            if (findViewById != null) {
                block.invoke(findViewById);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: requireView");
    }

    @NotNull
    public final View getContentView$component_liveroom_release() {
        return this.contentView;
    }

    @NotNull
    public final GCLiveRoomModel getGcLiveRoomModel$component_liveroom_release() {
        return this.gcLiveRoomModel;
    }

    public abstract void layoutAdsView(@NotNull View view);

    public abstract void layoutBottomActionView(@NotNull View view);

    public abstract void layoutEventView(@NotNull View view);

    public abstract void layoutLiveRoomPlayerView(@NotNull View view);

    public abstract void layoutTopInfoView(@NotNull View view);

    @NotNull
    public final View requireLiveRoomDecorView() {
        return this.contentView;
    }

    public final <T extends View> void requireView(@IdRes int i9, @NotNull Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        View findViewById = requireLiveRoomDecorView().findViewById(i9);
        if (findViewById != null) {
            block.invoke(findViewById);
        }
    }
}
