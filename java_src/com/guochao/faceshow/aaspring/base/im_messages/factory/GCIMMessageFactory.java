package com.guochao.faceshow.aaspring.base.im_messages.factory;

import androidx.exifinterface.media.ExifInterface;
import com.tencent.imsdk.v2.V2TIMMessage;
import kotlin.Metadata;
import o7.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;", "", "Lo7/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/tencent/imsdk/v2/V2TIMMessage;", "v2Message", "create", "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;", "lib_core_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface GCIMMessageFactory {
    @Nullable
    <T extends a> T create(@NotNull V2TIMMessage v2TIMMessage);
}
