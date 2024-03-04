package com.gyailib.library;
/* loaded from: classes4.dex */
public class Face3DResult {
    public float[] euler;
    public float[] exp;
    public int facekitVertexNum;
    public float[] facekitVertices;
    public float pointScale;
    public float scale;
    public int traceId;
    public float[] transMatrix;
    public float[] translate;

    public Face3DResult(int i9, float[] fArr, float[] fArr2, float[] fArr3, float f10, float f11, float[] fArr4, int i10, float[] fArr5) {
        this.traceId = i9;
        this.transMatrix = fArr;
        this.euler = fArr2;
        this.translate = fArr3;
        this.scale = f10;
        this.pointScale = f11;
        this.exp = fArr4;
        this.facekitVertexNum = i10;
        this.facekitVertices = fArr5;
    }
}
