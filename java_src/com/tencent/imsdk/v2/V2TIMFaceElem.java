package com.tencent.imsdk.v2;

import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import com.tencent.imsdk.message.FaceElement;
/* loaded from: classes4.dex */
public class V2TIMFaceElem extends V2TIMElem {
    private byte[] data;
    private int index = 0;

    public byte[] getData() {
        if (getElement() == null) {
            return this.data;
        }
        return ((FaceElement) getElement()).getFaceData();
    }

    public int getIndex() {
        if (getElement() == null) {
            return this.index;
        }
        return ((FaceElement) getElement()).getFaceIndex();
    }

    public void setData(byte[] bArr) {
        if (getElement() == null) {
            this.data = bArr;
        } else {
            ((FaceElement) getElement()).setFaceData(bArr);
        }
    }

    public void setIndex(int i9) {
        if (getElement() == null) {
            this.index = i9;
        } else {
            ((FaceElement) getElement()).setFaceIndex(i9);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("V2TIMFaceElem--->");
        sb2.append("index:");
        sb2.append(getIndex());
        sb2.append(", has data:");
        sb2.append(getData() == null ? Bugly.SDK_IS_DEV : ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        return sb2.toString();
    }
}
