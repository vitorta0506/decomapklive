package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import org.light.Controller;
import org.light.ILightSDKServiceInterface;
import org.light.utils.LightLogUtil;
/* loaded from: classes7.dex */
public class WMElement implements Parcelable {
    public static final int CHECK_IN_ERR_CODE_DUPLICATE = 11;
    public static final int CHECK_IN_ERR_CODE_SUCCESS = 0;
    public static final Parcelable.Creator<WMElement> CREATOR = new Parcelable.Creator<WMElement>() { // from class: org.light.bean.WMElement.1
        @Override // android.os.Parcelable.Creator
        public WMElement createFromParcel(Parcel parcel) {
            return new WMElement(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public WMElement[] newArray(int i9) {
            return new WMElement[i9];
        }
    };
    private static final String TAG = "WMElement";
    public static final String TYPE_CHECK_IN = "CHECK_IN";
    public static final String TYPE_COUNTDOWN = "COUNTDOWN";
    public static final String TYPE_EDITABLE_LOCATION = "EDITABLE_LOCATION";
    public static final String TYPE_PLAIN_TEXT = "PLAIN_TEXT";
    public static final String TYPE_SINCE = "SINCE";
    protected static ILightSDKServiceInterface lightSDKServiceInterface;
    public Controller controller;
    public final String elementId;
    protected int instanceId;
    public final String key;
    public final String materialId;
    public final String type;

    public WMElement(String str, String str2, String str3) {
        this.instanceId = 0;
        this.materialId = str;
        this.elementId = str2;
        this.type = str3;
        this.key = str + "_" + str2;
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                this.instanceId = iLightSDKServiceInterface.wmElementConstructor(str, str2, str3);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
            }
        }
    }

    private native String getCustomInnerValue(String str, String str2);

    private native int nativeDoCheckIn(String str, String str2);

    private native void nativeResetCheckIn(String str);

    private void setCustomData(String str, String str2) {
        setCustomData(str, str2, true);
    }

    private native void setCustomData(String str, String str2, boolean z10);

    public static void setLightSDKServiceInterface(ILightSDKServiceInterface iLightSDKServiceInterface) {
        lightSDKServiceInterface = iLightSDKServiceInterface;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int doCheckIn() {
        return doCheckIn(this.key, this.type);
    }

    public String getInnerValue() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.wmElementGetInnerValue(this.instanceId);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return null;
            }
        }
        return getCustomInnerValue(this.key, this.type);
    }

    public void resetCheckIn() {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.wmElementResetCheckIn(this.instanceId);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        nativeResetCheckIn(this.key);
    }

    public void setDate(long j10) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.wmElementSetDate(this.instanceId, j10);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        setCustomData(this.key, String.valueOf(j10));
    }

    public void setInstanceId(int i9) {
        this.instanceId = i9;
    }

    public void setLocation(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.wmElementSetLocation(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        setCustomData(this.key, str, false);
    }

    public void setText(String str) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                iLightSDKServiceInterface.wmElementSetText(this.instanceId, str);
                return;
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return;
            }
        }
        setCustomData(this.key, str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.materialId);
        parcel.writeString(this.elementId);
        parcel.writeString(this.type);
        parcel.writeString(this.key);
        parcel.writeInt(this.instanceId);
    }

    public int doCheckIn(String str, String str2) {
        ILightSDKServiceInterface iLightSDKServiceInterface = lightSDKServiceInterface;
        if (iLightSDKServiceInterface != null) {
            try {
                return iLightSDKServiceInterface.wmElementDoCheckIn(this.instanceId, str, str2);
            } catch (RemoteException e10) {
                LightLogUtil.e(TAG, "RemoteException:\n" + e10);
                return -1;
            }
        }
        return nativeDoCheckIn(str, str2);
    }

    protected WMElement(Parcel parcel) {
        this.instanceId = 0;
        this.materialId = parcel.readString();
        this.elementId = parcel.readString();
        this.type = parcel.readString();
        this.key = parcel.readString();
        this.instanceId = parcel.readInt();
    }
}
