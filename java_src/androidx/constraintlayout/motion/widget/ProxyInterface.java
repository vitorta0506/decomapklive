package androidx.constraintlayout.motion.widget;
/* loaded from: classes.dex */
interface ProxyInterface {
    int designAccess(int i9, String str, Object obj, float[] fArr, int i10, float[] fArr2, int i11);

    float getKeyFramePosition(Object obj, int i9, float f10, float f11);

    Object getKeyframeAtLocation(Object obj, float f10, float f11);

    Boolean getPositionKeyframe(Object obj, Object obj2, float f10, float f11, String[] strArr, float[] fArr);

    long getTransitionTimeMs();

    void setAttributes(int i9, String str, Object obj, Object obj2);

    void setKeyFrame(Object obj, int i9, String str, Object obj2);

    boolean setKeyFramePosition(Object obj, int i9, int i10, float f10, float f11);

    void setToolPosition(float f10);
}
