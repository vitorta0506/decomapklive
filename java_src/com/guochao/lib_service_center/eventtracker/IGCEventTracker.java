package com.guochao.lib_service_center.eventtracker;

import com.alibaba.android.arouter.facade.template.IProvider;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker;", "Lcom/alibaba/android/arouter/facade/template/IProvider;", "track", "", "event", "", "Companion", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface IGCEventTracker extends IProvider {
    @NotNull
    public static final String CLICK_MVP = "CLICK_MVP";
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/lib_service_center/eventtracker/IGCEventTracker$Companion;", "", "()V", "CLICK_MVP", "", "lib_service_center_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        public static final String CLICK_MVP = "CLICK_MVP";

        private Companion() {
        }
    }

    void track(@NotNull String str);
}
