package org.light.bean;

import java.io.Serializable;
import java.lang.reflect.Array;
/* loaded from: classes7.dex */
public class PTBodyAttr implements Serializable {
    public float[][] bodyPoint = (float[][]) Array.newInstance(float.class, 59, 2);
    public float classifyConfidence;
    public String classifyName;
    public float confidence;
}
