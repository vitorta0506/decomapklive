package cn.jiguang.ai;

import android.content.Context;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.CellLocation;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthWcdma;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.util.List;
/* loaded from: classes.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f1860a;

    /* renamed from: b  reason: collision with root package name */
    private final TelephonyManager f1861b;

    /* renamed from: c  reason: collision with root package name */
    private cn.jiguang.aj.a f1862c;

    /* loaded from: classes.dex */
    private class a extends PhoneStateListener {
        private a() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            cn.jiguang.aj.a aVar;
            int networkId;
            try {
                super.onSignalStrengthsChanged(signalStrength);
                b.this.f1862c.f1882f = signalStrength.getGsmSignalStrength();
                CellLocation cellLocation = b.this.f1861b.getCellLocation();
                if (cellLocation == null) {
                    return;
                }
                if (!(cellLocation instanceof GsmCellLocation)) {
                    if (cellLocation instanceof CdmaCellLocation) {
                        CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                        b.this.f1862c.f1881e = cdmaCellLocation.getBaseStationId();
                        aVar = b.this.f1862c;
                        networkId = cdmaCellLocation.getNetworkId();
                    }
                    b.this.f1861b.listen(this, 0);
                }
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                b.this.f1862c.f1881e = gsmCellLocation.getCid();
                aVar = b.this.f1862c;
                networkId = gsmCellLocation.getLac();
                aVar.f1880d = networkId;
                b.this.f1861b.listen(this, 0);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.f1860a = context;
        this.f1861b = (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn.jiguang.aj.a a() {
        return this.f1862c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f1861b == null) {
            cn.jiguang.al.a.d("JLocationCell", "get telephonyManager failed");
            return;
        }
        cn.jiguang.aj.a aVar = new cn.jiguang.aj.a();
        this.f1862c = aVar;
        aVar.f1877a = cn.jiguang.o.d.h(this.f1860a);
        String networkOperator = this.f1861b.getNetworkOperator();
        if (networkOperator.length() > 3) {
            this.f1862c.f1878b = Integer.parseInt(networkOperator.substring(0, 3));
            this.f1862c.f1879c = Integer.parseInt(networkOperator.substring(3));
        }
        this.f1862c.f1885i = this.f1861b.getNetworkOperatorName();
        this.f1862c.f1883g = cn.jiguang.o.d.a(this.f1861b.getNetworkType());
        this.f1862c.f1884h = cn.jiguang.o.d.a(this.f1860a, this.f1861b.getNetworkType());
        List<CellInfo> allCellInfo = this.f1861b.getAllCellInfo();
        if (allCellInfo == null || allCellInfo.size() <= 0) {
            return;
        }
        for (CellInfo cellInfo : allCellInfo) {
            if (cellInfo != null) {
                if (cellInfo instanceof CellInfoLte) {
                    CellInfoLte cellInfoLte = (CellInfoLte) cellInfo;
                    CellSignalStrengthLte cellSignalStrength = cellInfoLte.getCellSignalStrength();
                    CellIdentityLte cellIdentity = cellInfoLte.getCellIdentity();
                    this.f1862c.f1882f = cellSignalStrength.getDbm();
                    this.f1862c.f1881e = cellIdentity.getCi();
                    this.f1862c.f1880d = cellIdentity.getTac();
                    if (this.f1862c.f1881e < 268435455) {
                        return;
                    }
                } else if (cellInfo instanceof CellInfoGsm) {
                    CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
                    CellSignalStrengthGsm cellSignalStrength2 = cellInfoGsm.getCellSignalStrength();
                    CellIdentityGsm cellIdentity2 = cellInfoGsm.getCellIdentity();
                    this.f1862c.f1882f = cellSignalStrength2.getDbm();
                    this.f1862c.f1881e = cellIdentity2.getCid();
                    this.f1862c.f1880d = cellIdentity2.getLac();
                    if (this.f1862c.f1881e < 65535) {
                        return;
                    }
                } else if (cellInfo instanceof CellInfoCdma) {
                    CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
                    CellSignalStrengthCdma cellSignalStrength3 = cellInfoCdma.getCellSignalStrength();
                    CellIdentityCdma cellIdentity3 = cellInfoCdma.getCellIdentity();
                    this.f1862c.f1882f = cellSignalStrength3.getDbm();
                    this.f1862c.f1881e = cellIdentity3.getBasestationId();
                    this.f1862c.f1880d = cellIdentity3.getNetworkId();
                    if (this.f1862c.f1881e < 65535) {
                        return;
                    }
                } else if (cellInfo instanceof CellInfoWcdma) {
                    CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
                    CellSignalStrengthWcdma cellSignalStrength4 = cellInfoWcdma.getCellSignalStrength();
                    CellIdentityWcdma cellIdentity4 = cellInfoWcdma.getCellIdentity();
                    this.f1862c.f1882f = cellSignalStrength4.getDbm();
                    this.f1862c.f1881e = cellIdentity4.getCid();
                    this.f1862c.f1880d = cellIdentity4.getLac();
                    if (this.f1862c.f1881e < 268435455) {
                        return;
                    }
                } else {
                    continue;
                }
            }
        }
    }
}
