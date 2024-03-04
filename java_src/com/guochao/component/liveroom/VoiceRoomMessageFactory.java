package com.guochao.component.liveroom;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.exifinterface.media.ExifInterface;
import androidx.startup.Initializer;
import com.google.gson.Gson;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModelKt;
import com.guochao.faceshow.aaspring.base.im_messages.IGCMessageFactoryRegister;
import com.guochao.faceshow.aaspring.base.im_messages.factory.GCIMMessageFactory;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.tencent.imsdk.v2.V2TIMCustomElem;
import com.tencent.imsdk.v2.V2TIMMessage;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import o7.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\u000b"}, d2 = {"Lcom/guochao/component/liveroom/VoiceRoomMessageFactory;", "Landroidx/startup/Initializer;", "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "()V", "create", "context", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "Factory", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMessageFactory implements Initializer<GCIMMessageFactory> {

    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/guochao/component/liveroom/VoiceRoomMessageFactory$Factory;", "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "Lo7/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/tencent/imsdk/v2/V2TIMMessage;", "v2Message", "create", "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;", "<init>", "()V", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class Factory implements GCIMMessageFactory {
        @NotNull
        public static final Factory INSTANCE = new Factory();

        private Factory() {
        }

        @Override // com.guochao.faceshow.aaspring.base.im_messages.factory.GCIMMessageFactory
        @Nullable
        public <T extends a> T create(@NotNull V2TIMMessage v2Message) {
            Intrinsics.checkNotNullParameter(v2Message, "v2Message");
            v2Message.getSender();
            V2TIMCustomElem customElem = v2Message.getCustomElem();
            byte[] data = customElem != null ? customElem.getData() : null;
            if (data == null) {
                return null;
            }
            String str = new String(data, Charsets.UTF_8);
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("type")) {
                    Object fromJson = new Gson().fromJson(str, (Class<Object>) VoiceRoomCMDMessageModelKt.getClassForType(jSONObject.optInt("type")));
                    if (fromJson instanceof a) {
                        return (T) fromJson;
                    }
                    return null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                if (e10 instanceof IllegalStateException) {
                    throw e10;
                }
            }
            return null;
        }
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        List<Class<? extends Initializer<?>>> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(VoiceRoomMessageDispatcher.class);
        return mutableListOf;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NotNull
    public GCIMMessageFactory create(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_MESSAGE_FACTORIES).navigation();
        IGCMessageFactoryRegister iGCMessageFactoryRegister = navigation instanceof IGCMessageFactoryRegister ? (IGCMessageFactoryRegister) navigation : null;
        Factory factory = Factory.INSTANCE;
        if (iGCMessageFactoryRegister != null) {
            iGCMessageFactoryRegister.registerFactory(factory);
        }
        return factory;
    }
}
