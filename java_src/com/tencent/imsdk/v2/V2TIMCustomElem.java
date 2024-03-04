package com.tencent.imsdk.v2;

import com.tencent.imsdk.message.CustomElement;
/* loaded from: classes4.dex */
public class V2TIMCustomElem extends V2TIMElem {
    private byte[] data;
    private String description;
    private byte[] extension;

    public byte[] getData() {
        if (getElement() == null) {
            return this.data;
        }
        return ((CustomElement) getElement()).getData();
    }

    public String getDescription() {
        if (getElement() == null) {
            return this.description;
        }
        return ((CustomElement) getElement()).getDescription();
    }

    public byte[] getExtension() {
        if (getElement() == null) {
            return this.extension;
        }
        return ((CustomElement) getElement()).getExtension();
    }

    public void setData(byte[] bArr) {
        if (getElement() == null) {
            this.data = bArr;
        } else {
            ((CustomElement) getElement()).setData(bArr);
        }
    }

    public void setDescription(String str) {
        if (getElement() == null) {
            this.description = str;
        } else {
            ((CustomElement) getElement()).setDescription(str);
        }
    }

    public void setExtension(byte[] bArr) {
        if (getElement() == null) {
            this.extension = bArr;
        } else {
            ((CustomElement) getElement()).setExtension(bArr);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        byte[] data = getData();
        String str = data != null ? new String(data) : "";
        String description = getDescription() != null ? getDescription() : "";
        String str2 = getExtension() != null ? new String(getExtension()) : "";
        sb2.append("V2TIMCustomElem--->");
        sb2.append("data2String:");
        sb2.append(str);
        sb2.append(", description:");
        sb2.append(description);
        sb2.append(", extension2String:");
        sb2.append(str2);
        return sb2.toString();
    }
}
