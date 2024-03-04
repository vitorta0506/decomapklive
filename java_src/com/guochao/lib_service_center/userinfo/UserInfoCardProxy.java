package com.guochao.lib_service_center.userinfo;

import androidx.fragment.app.FragmentActivity;
import com.alibaba.android.arouter.facade.template.IProvider;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import o.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u0000 \r2\u00020\u0001:\u0001\rJ9\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&¢\u0006\u0002\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "start", "", "context", "Landroidx/fragment/app/FragmentActivity;", Contants.USER_ID, "", "roomId", "voiceId", "seat", "", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "Companion", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface UserInfoCardProxy extends IProvider {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J;\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy$Companion;", "", "()V", "start", "", "context", "Landroidx/fragment/app/FragmentActivity;", Contants.USER_ID, "", "roomId", "voiceId", "seat", "", "(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public static /* synthetic */ void start$default(Companion companion, FragmentActivity fragmentActivity, String str, String str2, String str3, Integer num, int i9, Object obj) {
            if ((i9 & 8) != 0) {
                str3 = "";
            }
            String str4 = str3;
            if ((i9 & 16) != 0) {
                num = -1;
            }
            companion.start(fragmentActivity, str, str2, str4, num);
        }

        public final void start(@NotNull FragmentActivity context, @NotNull String userId, @NotNull String roomId, @Nullable String str, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Object navigation = a.c().a(RouterPath.ROUTER_USER_INFO_CARD).navigation();
            Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.userinfo.UserInfoCardProxy");
            ((UserInfoCardProxy) navigation).start(context, userId, roomId, str, num);
        }
    }

    void start(@NotNull FragmentActivity fragmentActivity, @NotNull String str, @NotNull String str2, @Nullable String str3, @Nullable Integer num);
}
