package com.unity3d.services.core.device.reader;

import com.facebook.share.internal.ShareConstants;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import com.unity3d.services.core.misc.IJsonStorageReader;
import com.unity3d.services.core.misc.JsonFlattener;
import com.unity3d.services.core.misc.JsonStorageAggregator;
import com.unity3d.services.core.misc.Utilities;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class DeviceInfoReaderWithStorageInfo implements IDeviceInfoReader {
    private final IDeviceInfoReader _deviceInfoReader;
    private final List<IJsonStorageReader> _storageReaders;
    private static final List<String> _includedKeys = Arrays.asList(ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "gdpr", "framework", "adapter", "mediation", "unity", "pipl", "configuration", "user", JsonStorageKeyNames.UNIFIED_CONFIG_KEY);
    private static final List<String> _blackListOfKeys = Arrays.asList(TimeDisplaySetting.TIME_DISPLAY_SETTING, "exclude", "pii", "nonBehavioral", "nonbehavioral");

    public DeviceInfoReaderWithStorageInfo(IDeviceInfoReader iDeviceInfoReader, IJsonStorageReader... iJsonStorageReaderArr) {
        this._deviceInfoReader = iDeviceInfoReader;
        this._storageReaders = Arrays.asList(iJsonStorageReaderArr);
    }

    @Override // com.unity3d.services.core.device.reader.IDeviceInfoReader
    public Map<String, Object> getDeviceInfoData() {
        Map<String, Object> deviceInfoData = this._deviceInfoReader.getDeviceInfoData();
        return deviceInfoData != null ? Utilities.combineJsonIntoMap(deviceInfoData, new JsonFlattener(new JsonStorageAggregator(this._storageReaders).getData()).flattenJson(".", _includedKeys, Collections.singletonList("value"), _blackListOfKeys)) : deviceInfoData;
    }
}
