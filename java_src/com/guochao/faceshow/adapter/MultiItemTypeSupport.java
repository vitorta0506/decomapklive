package com.guochao.faceshow.adapter;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;", ExifInterface.GPS_DIRECTION_TRUE, "", "getItemViewType", "", "position", "t", "(ILjava/lang/Object;)I", "getLayoutId", "itemType", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface MultiItemTypeSupport<T> {
    int getItemViewType(int i9, T t10);

    int getLayoutId(int i9);
}
