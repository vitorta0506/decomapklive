package com.vk.sdk.api.photos.dto;

import androidx.exifinterface.media.ExifInterface;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.opendevice.c;
import com.huawei.hms.opendevice.i;
import com.huawei.hms.push.e;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001f¨\u0006 "}, d2 = {"Lcom/vk/sdk/api/photos/dto/PhotosPhotoSizesType;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", ExifInterface.LATITUDE_SOUTH, "M", "X", "O", "P", "Q", "R", "K", "L", "Y", "Z", "C", ExifInterface.LONGITUDE_WEST, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", ExifInterface.LONGITUDE_EAST, "I", "D", "J", "TEMP", "H", "G", "N", "F", "MAX", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes5.dex */
public enum PhotosPhotoSizesType {
    S(NotifyType.SOUND),
    M("m"),
    X(x.f19108w),
    O("o"),
    P("p"),
    Q("q"),
    R("r"),
    K("k"),
    L(NotifyType.LIGHTS),
    Y("y"),
    Z("z"),
    C(c.f27627a),
    W("w"),
    A("a"),
    B("b"),
    E(e.f27721a),
    I(i.TAG),
    D("d"),
    J("j"),
    TEMP("temp"),
    H("h"),
    G("g"),
    N("n"),
    F("f"),
    MAX("max");
    
    @NotNull
    private final String value;

    PhotosPhotoSizesType(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
