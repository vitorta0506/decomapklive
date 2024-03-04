package com.guochao.faceshow.aaspring.base.im_messages;

import androidx.exifinterface.media.ExifInterface;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.aaspring.base.im_messages.factory.GCIMMessageFactory;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o7.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Route(path = RouterPath.ROUTER_GC_MESSAGE_FACTORIES)
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J#\u0010\f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\t*\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;", "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCMessageFactoryRegister;", "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "factor", "", "registerFactory", "factory", "unregisterFactory", "Lo7/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/tencent/imsdk/v2/V2TIMMessage;", "v2Message", "create", "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;", "<init>", "()V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GCIMMessageFactoryRegister extends IGCMessageFactoryRegister {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ArrayList<GCIMMessageFactory> factories = new ArrayList<>();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00068\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister$Companion;", "", "()V", "factories", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "Lkotlin/collections/ArrayList;", "getFactories$annotations", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getFactories$annotations() {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.factory.GCIMMessageFactory
    @Nullable
    public <T extends a> T create(@NotNull V2TIMMessage v2Message) {
        Intrinsics.checkNotNullParameter(v2Message, "v2Message");
        for (GCIMMessageFactory gCIMMessageFactory : factories) {
            T t10 = (T) gCIMMessageFactory.create(v2Message);
            if (t10 != null) {
                return t10;
            }
        }
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.IGCMessageFactoryRegister
    public void registerFactory(@NotNull GCIMMessageFactory factor) {
        Intrinsics.checkNotNullParameter(factor, "factor");
        ArrayList<GCIMMessageFactory> arrayList = factories;
        if (arrayList.contains(factor)) {
            return;
        }
        arrayList.add(factor);
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.IGCMessageFactoryRegister
    public void unregisterFactory(@NotNull GCIMMessageFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        factories.remove(factory);
    }
}
