package org.light.listener;

import java.util.List;
import org.light.bean.BodyData;
import org.light.bean.FaceData;
import org.light.bean.HandData;
/* loaded from: classes7.dex */
public interface OnAIDataListener {
    void onBodyDataUpdated(List<BodyData> list);

    void onFaceDataUpdated(List<FaceData> list);

    void onHandDataUpdated(List<HandData> list);
}
