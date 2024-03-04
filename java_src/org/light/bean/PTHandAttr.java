package org.light.bean;

import java.io.Serializable;
import java.lang.reflect.Array;
/* loaded from: classes7.dex */
public class PTHandAttr implements Serializable {
    public float classifyConfidence;
    public String classifyName;
    public float confidence;
    public int detectHeight;
    public int detectWidth;
    public float[][] handPoint = (float[][]) Array.newInstance(float.class, 32, 2);
}
