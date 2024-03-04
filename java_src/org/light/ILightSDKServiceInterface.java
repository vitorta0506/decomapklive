package org.light;

import android.graphics.PointF;
import android.graphics.RectF;
import android.hardware.HardwareBuffer;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.view.Surface;
import java.util.List;
import org.light.AIDLClipSourceFactory;
import org.light.AIDLFaceDetectCallback;
import org.light.bean.ArFrameInfo;
import org.light.bean.LightAIDataWrapper;
import org.light.bean.LightAgentBundleInfo;
import org.light.bean.LightDelegateAgentRequest;
import org.light.bean.LightFaceData;
import org.light.bean.LightFaceFeature;
import org.light.bean.ReadSampleResult;
import org.light.bean.WMElement;
import org.light.callback.AIDLComponentUpdateCallback;
import org.light.callback.AIDLExternalRenderCallback;
import org.light.callback.AIDLWillReadSampleCallback;
import org.light.listener.AIDLFilaPositionCallback;
import org.light.listener.AIDLHitTestFilaCallback;
import org.light.listener.AIDLILightLogger;
import org.light.listener.AIDLOnAIDataListener;
import org.light.listener.AIDLOnBindServiceListener;
import org.light.listener.AIDLOnClickWatermarkListener;
import org.light.listener.AIDLOnDelegateAgentRequestListener;
import org.light.listener.AIDLOnLoadAssetListener;
import org.light.listener.AIDLOnTipsStatusListener;
import org.light.listener.AIDLOnUE4EngineInitFInishListener;
import org.light.listener.AIDLOnWatermarkDataListener;
import org.light.service.InstanceId;
/* loaded from: classes7.dex */
public interface ILightSDKServiceInterface extends IInterface {

    /* loaded from: classes7.dex */
    public static abstract class Stub extends Binder implements ILightSDKServiceInterface {
        private static final String DESCRIPTOR = "org.light.ILightSDKServiceInterface";
        static final int TRANSACTION_audioOutputCopyNextSample = 129;
        static final int TRANSACTION_audioOutputCopyNextSampleSyncEnable = 130;
        static final int TRANSACTION_audioOutputRelease = 131;
        static final int TRANSACTION_audioOutputSeekTo = 128;
        static final int TRANSACTION_cameraConfigCameraSwitched = 69;
        static final int TRANSACTION_cameraConfigGetAbnormalFrameDetectResult = 72;
        static final int TRANSACTION_cameraConfigMake = 64;
        static final int TRANSACTION_cameraConfigSensorOrientationChanged = 68;
        static final int TRANSACTION_cameraConfigSetAbnormalFrameDetectFrequency = 71;
        static final int TRANSACTION_cameraConfigSetAutoTestMode = 70;
        static final int TRANSACTION_cameraConfigSetCameraTexture = 66;
        static final int TRANSACTION_cameraConfigSetRawInputForAR = 67;
        static final int TRANSACTION_cameraConfigUpdateCameraTexture = 65;
        static final int TRANSACTION_cameraControllerGetFilamentAssetPosition = 175;
        static final int TRANSACTION_cameraControllerGetHitTestFilamentAssets = 174;
        static final int TRANSACTION_cameraControllerPause3DAnimation = 168;
        static final int TRANSACTION_cameraControllerRegister3DAnimation = 170;
        static final int TRANSACTION_cameraControllerRelease = 161;
        static final int TRANSACTION_cameraControllerResume3DAnimation = 169;
        static final int TRANSACTION_cameraControllerRotateArModelToFront = 172;
        static final int TRANSACTION_cameraControllerSetARFrameInfo = 166;
        static final int TRANSACTION_cameraControllerSetHitTestAfterUnprojection = 171;
        static final int TRANSACTION_cameraControllerSetSegmentationFastMode = 167;
        static final int TRANSACTION_cameraControllerSetUEFaceStr = 176;
        static final int TRANSACTION_cameraControllerUpdateTouchEvent = 162;
        static final int TRANSACTION_cameraControllerUpdateTouchRotate = 164;
        static final int TRANSACTION_cameraControllerUpdateTouchScale = 165;
        static final int TRANSACTION_cameraControllerUpdateViewParams = 173;
        static final int TRANSACTION_cameraControllerUpdateVoiceDecibel = 163;
        static final int TRANSACTION_configAddExternalRenderCallback = 28;
        static final int TRANSACTION_configCleanFileCacheForKey = 58;
        static final int TRANSACTION_configClearAICachedData = 22;
        static final int TRANSACTION_configFreeCache = 57;
        static final int TRANSACTION_configGetAIData = 35;
        static final int TRANSACTION_configGetAssetDegradeFlag = 61;
        static final int TRANSACTION_configGetConfigData = 32;
        static final int TRANSACTION_configGetDisableRendererFlag = 56;
        static final int TRANSACTION_configGetFaceData = 34;
        static final int TRANSACTION_configGetFaceFeature = 30;
        static final int TRANSACTION_configGetPerformanceData = 54;
        static final int TRANSACTION_configGetPhonePrefLevel = 60;
        static final int TRANSACTION_configOnPause = 45;
        static final int TRANSACTION_configOnResume = 46;
        static final int TRANSACTION_configPerformFinalize = 63;
        static final int TRANSACTION_configRegisterFont = 44;
        static final int TRANSACTION_configRemoveExternalRenderCallback = 29;
        static final int TRANSACTION_configReplaceAIData = 36;
        static final int TRANSACTION_configSetAIDataListener = 41;
        static final int TRANSACTION_configSetAssetDowngradeFlag = 62;
        static final int TRANSACTION_configSetBGMusicHidden = 53;
        static final int TRANSACTION_configSetConfigData = 20;
        static final int TRANSACTION_configSetDefaultBeautyVersion = 23;
        static final int TRANSACTION_configSetDelegateAgentRequestListener = 42;
        static final int TRANSACTION_configSetDelegateAgentResult = 43;
        static final int TRANSACTION_configSetDetectShorterEdgeLength = 51;
        static final int TRANSACTION_configSetDisableRendererFlag = 55;
        static final int TRANSACTION_configSetDowngradeStrategy = 52;
        static final int TRANSACTION_configSetExternalFaceData = 31;
        static final int TRANSACTION_configSetExternalRenderCallback = 27;
        static final int TRANSACTION_configSetHorizontalFov = 33;
        static final int TRANSACTION_configSetLightAIModelPath = 24;
        static final int TRANSACTION_configSetLightAIModelPathByAgentInfo = 25;
        static final int TRANSACTION_configSetLightAIModelPathWithLevel = 26;
        static final int TRANSACTION_configSetLoadAssetListener = 40;
        static final int TRANSACTION_configSetOnClickWatermarkListener = 37;
        static final int TRANSACTION_configSetPreInitAgents = 59;
        static final int TRANSACTION_configSetPredictNextFrame = 49;
        static final int TRANSACTION_configSetPredictNextTime = 50;
        static final int TRANSACTION_configSetRenderSize = 21;
        static final int TRANSACTION_configSetSyncInitFlag = 48;
        static final int TRANSACTION_configSetSyncMode = 47;
        static final int TRANSACTION_configSetTipsStatusListener = 39;
        static final int TRANSACTION_configSetWatermarkDataListener = 38;
        static final int TRANSACTION_controllerAddComponent = 144;
        static final int TRANSACTION_controllerAddComponentUpdateMonitor = 148;
        static final int TRANSACTION_controllerAddEntity = 153;
        static final int TRANSACTION_controllerFetchComponent = 146;
        static final int TRANSACTION_controllerGetAssetData = 141;
        static final int TRANSACTION_controllerGetAudioPlaceHolders = 133;
        static final int TRANSACTION_controllerGetBoundsByKey = 158;
        static final int TRANSACTION_controllerGetEditableTextUnderPoint = 137;
        static final int TRANSACTION_controllerGetEditableWMItems = 157;
        static final int TRANSACTION_controllerGetEntitiesUnderPoint = 139;
        static final int TRANSACTION_controllerGetSoundEffectIDs = 132;
        static final int TRANSACTION_controllerGetTextPlaceHolderByEntityId = 138;
        static final int TRANSACTION_controllerGetTextPlaceHolders = 134;
        static final int TRANSACTION_controllerGetTimeLines = 151;
        static final int TRANSACTION_controllerHasAudio = 155;
        static final int TRANSACTION_controllerHasSpecificMakeUpType = 160;
        static final int TRANSACTION_controllerRemoveComponent = 145;
        static final int TRANSACTION_controllerRemoveComponentUpdateMonitor = 149;
        static final int TRANSACTION_controllerRemoveEntity = 154;
        static final int TRANSACTION_controllerReplaceAudioAsset = 140;
        static final int TRANSACTION_controllerResetAsset = 156;
        static final int TRANSACTION_controllerSetAssetData = 142;
        static final int TRANSACTION_controllerSetComponentUpdateCallback = 147;
        static final int TRANSACTION_controllerSetExternalAudioProcessor = 159;
        static final int TRANSACTION_controllerSetMaterialClipAssets = 136;
        static final int TRANSACTION_controllerSetTextAsset = 135;
        static final int TRANSACTION_controllerSetWillReadSampleCallback = 150;
        static final int TRANSACTION_controllerUpdateComponent = 143;
        static final int TRANSACTION_controllerUpdateResource = 152;
        static final int TRANSACTION_debugUtilsSetImageDebugInfo = 216;
        static final int TRANSACTION_lightAssetDataContextAddLightAsset = 118;
        static final int TRANSACTION_lightAssetDataContextExportEntityTreeJsonString = 120;
        static final int TRANSACTION_lightAssetDataContextExportInputSourcesJsonString = 122;
        static final int TRANSACTION_lightAssetDataContextExportLightAsset = 119;
        static final int TRANSACTION_lightAssetDataContextExportPropertiesJsonString = 124;
        static final int TRANSACTION_lightAssetDataContextMake = 117;
        static final int TRANSACTION_lightAssetDataContextReplaceEntityTreeJsonString = 121;
        static final int TRANSACTION_lightAssetDataContextReplaceInputSourcesJsonString = 123;
        static final int TRANSACTION_lightAssetDataContextReplacePropertiesJsonString = 125;
        static final int TRANSACTION_lightAssetForbiddenBasicMakeup = 101;
        static final int TRANSACTION_lightAssetForbiddenBasicNonReshapeBeauty = 102;
        static final int TRANSACTION_lightAssetForbiddenBasicReshape = 103;
        static final int TRANSACTION_lightAssetForbiddenBasicSmooth = 104;
        static final int TRANSACTION_lightAssetGetBgmMusicIDs = 108;
        static final int TRANSACTION_lightAssetGetBoundsTrackerPlaceHolders = 110;
        static final int TRANSACTION_lightAssetGetDefaultCameraPosition = 96;
        static final int TRANSACTION_lightAssetGetErrorCode = 113;
        static final int TRANSACTION_lightAssetGetFontAssets = 109;
        static final int TRANSACTION_lightAssetGetJsonString = 116;
        static final int TRANSACTION_lightAssetGetLUTPlaceHolders = 93;
        static final int TRANSACTION_lightAssetGetMaterialConfigs = 112;
        static final int TRANSACTION_lightAssetGetMaterialID = 92;
        static final int TRANSACTION_lightAssetGetMovieConfig = 111;
        static final int TRANSACTION_lightAssetGetRenderAgentBundleInfos = 91;
        static final int TRANSACTION_lightAssetGetRenderAgentTypes = 90;
        static final int TRANSACTION_lightAssetGetSupportCameraPosition = 97;
        static final int TRANSACTION_lightAssetGetVoiceEnvironment = 95;
        static final int TRANSACTION_lightAssetGetVoiceKind = 94;
        static final int TRANSACTION_lightAssetHasFactorMakeup = 105;
        static final int TRANSACTION_lightAssetHasLut = 87;
        static final int TRANSACTION_lightAssetHasMakeup = 100;
        static final int TRANSACTION_lightAssetHasMesh = 99;
        static final int TRANSACTION_lightAssetHeight = 107;
        static final int TRANSACTION_lightAssetLoad = 86;
        static final int TRANSACTION_lightAssetLoadFromString = 88;
        static final int TRANSACTION_lightAssetNeedRenderAbility = 89;
        static final int TRANSACTION_lightAssetNeedResetAssetWhenStartRecord = 114;
        static final int TRANSACTION_lightAssetNeedUE4Environment = 98;
        static final int TRANSACTION_lightAssetPerformFinalize = 115;
        static final int TRANSACTION_lightAssetWidth = 106;
        static final int TRANSACTION_lightEngineAudioOutput = 6;
        static final int TRANSACTION_lightEngineComponentLevel = 12;
        static final int TRANSACTION_lightEngineGetOriginTexture = 16;
        static final int TRANSACTION_lightEngineGetResultTexture = 15;
        static final int TRANSACTION_lightEngineInit = 10;
        static final int TRANSACTION_lightEngineInitAuth = 9;
        static final int TRANSACTION_lightEngineInitDeviceConfig = 13;
        static final int TRANSACTION_lightEngineIsDeviceAbilitySupported = 14;
        static final int TRANSACTION_lightEngineLoadLibraryForSDKService = 19;
        static final int TRANSACTION_lightEngineMake = 2;
        static final int TRANSACTION_lightEngineRelease = 17;
        static final int TRANSACTION_lightEngineSetAssetForCamera = 8;
        static final int TRANSACTION_lightEngineSetAssetForMovie = 7;
        static final int TRANSACTION_lightEngineSetConfig = 4;
        static final int TRANSACTION_lightEngineSetSurface = 3;
        static final int TRANSACTION_lightEngineSetTemplateAssets = 18;
        static final int TRANSACTION_lightEngineVersion = 11;
        static final int TRANSACTION_lightEngineVideoOutput = 5;
        static final int TRANSACTION_lightLogUtilDestroy = 208;
        static final int TRANSACTION_lightLogUtilInit = 205;
        static final int TRANSACTION_lightLogUtilSetLightLogger = 206;
        static final int TRANSACTION_lightLogUtilSetMinPriority = 207;
        static final int TRANSACTION_lightReportManagerGetShareKey = 202;
        static final int TRANSACTION_lightReportManagerLaunchFromApp = 204;
        static final int TRANSACTION_lightReportManagerReportOutsideData = 201;
        static final int TRANSACTION_lightReportManagerSetCommonParamsExternal = 203;
        static final int TRANSACTION_lightServicePid = 1;
        static final int TRANSACTION_lightSurfaceClearRenderCurrent = 78;
        static final int TRANSACTION_lightSurfaceFreeCache = 84;
        static final int TRANSACTION_lightSurfaceGetRenderCurrentGLContext = 83;
        static final int TRANSACTION_lightSurfaceMakeFromNativeBuffer = 75;
        static final int TRANSACTION_lightSurfaceMakeFromSurface = 74;
        static final int TRANSACTION_lightSurfaceMakeRenderCurrent = 77;
        static final int TRANSACTION_lightSurfaceRelease = 85;
        static final int TRANSACTION_lightSurfaceUpdateSize = 76;
        static final int TRANSACTION_movieConfigMake = 73;
        static final int TRANSACTION_movieControllerDuration = 189;
        static final int TRANSACTION_movieControllerGetBoundsTrackTimeRanges = 187;
        static final int TRANSACTION_movieControllerGetClipInfos = 185;
        static final int TRANSACTION_movieControllerGetClipPlaceHolders = 178;
        static final int TRANSACTION_movieControllerGetLUTPlaceHolders = 177;
        static final int TRANSACTION_movieControllerGetMediasTotalDurationLimitationStatus = 181;
        static final int TRANSACTION_movieControllerGetOriginVolume = 184;
        static final int TRANSACTION_movieControllerGetTextTimeRanges = 186;
        static final int TRANSACTION_movieControllerHasAudio = 190;
        static final int TRANSACTION_movieControllerRegisterClipSourceFactory = 191;
        static final int TRANSACTION_movieControllerReplaceLUTAsset = 188;
        static final int TRANSACTION_movieControllerSetClipAssets = 182;
        static final int TRANSACTION_movieControllerSetOriginVolume = 183;
        static final int TRANSACTION_movieControllerSetRenderMediaSize = 179;
        static final int TRANSACTION_movieControllerSetupMediasTotalDurationLimitationStatus = 180;
        static final int TRANSACTION_nativeBufferIsEglFenceEnabled = 224;
        static final int TRANSACTION_nativeBufferSetEglFenceEnabled = 225;
        static final int TRANSACTION_performanceMonitorGetBenchData = 196;
        static final int TRANSACTION_performanceMonitorGetPerformanceData = 198;
        static final int TRANSACTION_performanceMonitorSavePerformanceData = 197;
        static final int TRANSACTION_performanceMonitorSetBenchConfig = 192;
        static final int TRANSACTION_performanceMonitorSetBenchConfigWithThreshold = 193;
        static final int TRANSACTION_performanceMonitorSetBenchEnable = 194;
        static final int TRANSACTION_performanceMonitorSetBenchEnableWithThreshold = 195;
        static final int TRANSACTION_performanceMonitorSetPerfEnable = 200;
        static final int TRANSACTION_performanceMonitorSetPerformanceRunMode = 199;
        static final int TRANSACTION_removeSdkInstance = 217;
        static final int TRANSACTION_ueUtilCheckUE4Ready = 82;
        static final int TRANSACTION_ueUtilClearUEFaceStr = 218;
        static final int TRANSACTION_ueUtilCreateUEPlayer = 220;
        static final int TRANSACTION_ueUtilInitUEInterface = 222;
        static final int TRANSACTION_ueUtilInitUENativeFunctions = 221;
        static final int TRANSACTION_ueUtilSetMultiProc = 223;
        static final int TRANSACTION_ueUtilSetOnUE4InitFinishListener = 81;
        static final int TRANSACTION_ueUtilSetUEFaceStr = 219;
        static final int TRANSACTION_ueUtilStartUE4 = 79;
        static final int TRANSACTION_ueUtilStopUE4 = 80;
        static final int TRANSACTION_videoOutputReadSample = 126;
        static final int TRANSACTION_videoOutputRelease = 127;
        static final int TRANSACTION_wmElementConstructor = 209;
        static final int TRANSACTION_wmElementDoCheckIn = 210;
        static final int TRANSACTION_wmElementGetInnerValue = 214;
        static final int TRANSACTION_wmElementResetCheckIn = 215;
        static final int TRANSACTION_wmElementSetDate = 213;
        static final int TRANSACTION_wmElementSetLocation = 212;
        static final int TRANSACTION_wmElementSetText = 211;

        /* loaded from: classes7.dex */
        private static class Proxy implements ILightSDKServiceInterface {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // org.light.ILightSDKServiceInterface
            public AudioFrame audioOutputCopyNextSample(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(129, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AudioFrame.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public AudioFrame audioOutputCopyNextSampleSyncEnable(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(130, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? AudioFrame.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void audioOutputRelease(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(131, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void audioOutputSeekTo(int i9, long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeLong(j10);
                    this.mRemote.transact(128, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigCameraSwitched(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(69, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String cameraConfigGetAbnormalFrameDetectResult(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(72, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId cameraConfigMake() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(64, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigSensorOrientationChanged(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(68, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigSetAbnormalFrameDetectFrequency(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(71, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigSetAutoTestMode(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(70, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigSetCameraTexture(int i9, int i10, int i11, int i12, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    if (parcelFileDescriptor != null) {
                        obtain.writeInt(1);
                        parcelFileDescriptor.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(66, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigSetRawInputForAR(int i9, byte[] bArr, int i10, int i11, long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeLong(j10);
                    this.mRemote.transact(67, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraConfigUpdateCameraTexture(int i9, int i10, HardwareBuffer hardwareBuffer, int i11, int i12, int i13) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    if (hardwareBuffer != null) {
                        obtain.writeInt(1);
                        hardwareBuffer.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    obtain.writeInt(i13);
                    this.mRemote.transact(65, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerGetFilamentAssetPosition(int i9, AIDLFilaPositionCallback aIDLFilaPositionCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLFilaPositionCallback != null ? aIDLFilaPositionCallback.asBinder() : null);
                    this.mRemote.transact(175, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerGetHitTestFilamentAssets(int i9, float[] fArr, AIDLHitTestFilaCallback aIDLHitTestFilaCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloatArray(fArr);
                    obtain.writeStrongBinder(aIDLHitTestFilaCallback != null ? aIDLHitTestFilaCallback.asBinder() : null);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerGetHitTestFilamentAssets, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerPause3DAnimation(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerPause3DAnimation, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerRegister3DAnimation(int i9, List<String> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStringList(list);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerRegister3DAnimation, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerRelease(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerRelease, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerResume3DAnimation(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerResume3DAnimation, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerRotateArModelToFront(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(172, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerSetARFrameInfo(int i9, ArFrameInfo arFrameInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (arFrameInfo != null) {
                        obtain.writeInt(1);
                        arFrameInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(166, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerSetHitTestAfterUnprojection(int i9, float[] fArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloatArray(fArr);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerSetHitTestAfterUnprojection, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerSetSegmentationFastMode(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(167, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerSetUEFaceStr(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerSetUEFaceStr, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerUpdateTouchEvent(int i9, int i10, long j10, long j11, List<PointF> list, int i11, int i12) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeLong(j10);
                    obtain.writeLong(j11);
                    obtain.writeTypedList(list);
                    obtain.writeInt(i11);
                    obtain.writeInt(i12);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerUpdateTouchEvent, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerUpdateTouchRotate(int i9, float[] fArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloatArray(fArr);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerUpdateTouchRotate, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerUpdateTouchScale(int i9, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerUpdateTouchScale, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerUpdateViewParams(int i9, float[] fArr, float[] fArr2, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloatArray(fArr);
                    obtain.writeFloatArray(fArr2);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerUpdateViewParams, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void cameraControllerUpdateVoiceDecibel(int i9, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(Stub.TRANSACTION_cameraControllerUpdateVoiceDecibel, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configAddExternalRenderCallback(int i9, String str, AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(aIDLExternalRenderCallback != null ? aIDLExternalRenderCallback.asBinder() : null);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configCleanFileCacheForKey(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(58, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configClearAICachedData(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configFreeCache(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(57, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public LightAIDataWrapper configGetAIData(int i9, String[] strArr, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStringArray(strArr);
                    obtain.writeInt(i10);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LightAIDataWrapper.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean configGetAssetDegradeFlag() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(61, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public Bundle configGetConfigData(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean configGetDisableRendererFlag(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(56, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public LightFaceData configGetFaceData(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? LightFaceData.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public List<LightFaceFeature> configGetFaceFeature(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(LightFaceFeature.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public PerformanceData configGetPerformanceData(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(54, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? PerformanceData.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int configGetPhonePrefLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(60, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configOnPause(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configOnResume(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configPerformFinalize(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(63, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configRegisterFont(FontAsset fontAsset, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (fontAsset != null) {
                        obtain.writeInt(1);
                        fontAsset.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configRemoveExternalRenderCallback(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configReplaceAIData(int i9, LightAIDataWrapper lightAIDataWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (lightAIDataWrapper != null) {
                        obtain.writeInt(1);
                        lightAIDataWrapper.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetAIDataListener(int i9, AIDLOnAIDataListener aIDLOnAIDataListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLOnAIDataListener != null ? aIDLOnAIDataListener.asBinder() : null);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetAssetDowngradeFlag(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(62, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetBGMusicHidden(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(53, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetConfigData(int i9, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDefaultBeautyVersion(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDelegateAgentRequestListener(int i9, AIDLOnDelegateAgentRequestListener aIDLOnDelegateAgentRequestListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLOnDelegateAgentRequestListener != null ? aIDLOnDelegateAgentRequestListener.asBinder() : null);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDelegateAgentResult(int i9, LightDelegateAgentRequest lightDelegateAgentRequest, boolean z10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    int i10 = 1;
                    if (lightDelegateAgentRequest != null) {
                        obtain.writeInt(1);
                        lightDelegateAgentRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z10) {
                        i10 = 0;
                    }
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDetectShorterEdgeLength(int i9, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    this.mRemote.transact(51, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDisableRendererFlag(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(55, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetDowngradeStrategy(int i9, String str, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    this.mRemote.transact(52, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetExternalFaceData(int i9, LightFaceData lightFaceData) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (lightFaceData != null) {
                        obtain.writeInt(1);
                        lightFaceData.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetExternalRenderCallback(int i9, AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLExternalRenderCallback != null ? aIDLExternalRenderCallback.asBinder() : null);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetHorizontalFov(int i9, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetLightAIModelPath(int i9, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetLightAIModelPathByAgentInfo(int i9, String str, LightAgentBundleInfo lightAgentBundleInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    if (lightAgentBundleInfo != null) {
                        obtain.writeInt(1);
                        lightAgentBundleInfo.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetLightAIModelPathWithLevel(int i9, String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetLoadAssetListener(int i9, AIDLOnLoadAssetListener aIDLOnLoadAssetListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLOnLoadAssetListener != null ? aIDLOnLoadAssetListener.asBinder() : null);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetOnClickWatermarkListener(int i9, AIDLOnClickWatermarkListener aIDLOnClickWatermarkListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLOnClickWatermarkListener != null ? aIDLOnClickWatermarkListener.asBinder() : null);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetPreInitAgents(int i9, String[] strArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStringArray(strArr);
                    this.mRemote.transact(59, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetPredictNextFrame(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(49, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetPredictNextTime(int i9, long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeLong(j10);
                    this.mRemote.transact(50, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetRenderSize(int i9, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetSyncInitFlag(int i9, boolean z10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    obtain.writeString(str);
                    this.mRemote.transact(48, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetSyncMode(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetTipsStatusListener(int i9, AIDLOnTipsStatusListener aIDLOnTipsStatusListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLOnTipsStatusListener != null ? aIDLOnTipsStatusListener.asBinder() : null);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void configSetWatermarkDataListener(int i9, String str, AIDLOnWatermarkDataListener aIDLOnWatermarkDataListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(aIDLOnWatermarkDataListener != null ? aIDLOnWatermarkDataListener.asBinder() : null);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerAddComponent(int i9, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    this.mRemote.transact(144, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerAddComponentUpdateMonitor(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(Stub.TRANSACTION_controllerAddComponentUpdateMonitor, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerAddEntity(int i9, int i10, int i11, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeString(str);
                    this.mRemote.transact(153, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String controllerFetchComponent(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(146, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public Bundle controllerGetAssetData(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(141, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public AudioPlaceHolder[] controllerGetAudioPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(133, obtain, obtain2, 0);
                    obtain2.readException();
                    return (AudioPlaceHolder[]) obtain2.createTypedArray(AudioPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public RectF controllerGetBoundsByKey(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(Stub.TRANSACTION_controllerGetBoundsByKey, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (RectF) RectF.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TextPlaceHolder controllerGetEditableTextUnderPoint(int i9, float f10, float f11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    obtain.writeFloat(f11);
                    this.mRemote.transact(137, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? TextPlaceHolder.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public WMElement[] controllerGetEditableWMItems(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_controllerGetEditableWMItems, obtain, obtain2, 0);
                    obtain2.readException();
                    return (WMElement[]) obtain2.createTypedArray(WMElement.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int[] controllerGetEntitiesUnderPoint(int i9, float f10, float f11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    obtain.writeFloat(f11);
                    this.mRemote.transact(139, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createIntArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String[] controllerGetSoundEffectIDs(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(132, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TextPlaceHolder[] controllerGetTextPlaceHolderByEntityId(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(138, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TextPlaceHolder[]) obtain2.createTypedArray(TextPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TextPlaceHolder[] controllerGetTextPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(134, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TextPlaceHolder[]) obtain2.createTypedArray(TextPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TimeLine[] controllerGetTimeLines(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(151, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeLine[]) obtain2.createTypedArray(TimeLine.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean controllerHasAudio(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_controllerHasAudio, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean controllerHasSpecificMakeUpType(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(Stub.TRANSACTION_controllerHasSpecificMakeUpType, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerRemoveComponent(int i9, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    this.mRemote.transact(145, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerRemoveComponentUpdateMonitor(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(Stub.TRANSACTION_controllerRemoveComponentUpdateMonitor, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerRemoveEntity(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(154, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerReplaceAudioAsset(int i9, String str, AudioAsset audioAsset) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    if (audioAsset != null) {
                        obtain.writeInt(1);
                        audioAsset.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(140, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerResetAsset(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_controllerResetAsset, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetAssetData(int i9, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(142, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetComponentUpdateCallback(int i9, AIDLComponentUpdateCallback aIDLComponentUpdateCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLComponentUpdateCallback != null ? aIDLComponentUpdateCallback.asBinder() : null);
                    this.mRemote.transact(147, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetExternalAudioProcessor(int i9, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(Stub.TRANSACTION_controllerSetExternalAudioProcessor, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetMaterialClipAssets(int i9, String str, Bundle bundle, AIDLFaceDetectCallback aIDLFaceDetectCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(aIDLFaceDetectCallback != null ? aIDLFaceDetectCallback.asBinder() : null);
                    this.mRemote.transact(136, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetTextAsset(int i9, String str, TextAsset textAsset) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    if (textAsset != null) {
                        obtain.writeInt(1);
                        textAsset.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(Stub.TRANSACTION_controllerSetTextAsset, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerSetWillReadSampleCallback(int i9, AIDLWillReadSampleCallback aIDLWillReadSampleCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLWillReadSampleCallback != null ? aIDLWillReadSampleCallback.asBinder() : null);
                    this.mRemote.transact(150, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerUpdateComponent(int i9, int i10, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeString(str);
                    this.mRemote.transact(143, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void controllerUpdateResource(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(152, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void debugUtilsSetImageDebugInfo(boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i9 = 1;
                    obtain.writeInt(z10 ? 1 : 0);
                    obtain.writeString(str);
                    obtain.writeInt(z11 ? 1 : 0);
                    obtain.writeInt(z12 ? 1 : 0);
                    obtain.writeInt(z13 ? 1 : 0);
                    obtain.writeInt(z14 ? 1 : 0);
                    if (!z15) {
                        i9 = 0;
                    }
                    obtain.writeInt(i9);
                    this.mRemote.transact(216, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetDataContextAddLightAsset(int i9, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(118, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightAssetDataContextExportEntityTreeJsonString(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(120, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightAssetDataContextExportInputSourcesJsonString(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(122, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightAssetDataContextExportLightAsset(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(119, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightAssetDataContextExportPropertiesJsonString(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(124, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightAssetDataContextMake(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(117, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightAssetDataContextReplaceEntityTreeJsonString(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(121, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightAssetDataContextReplaceInputSourcesJsonString(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(123, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightAssetDataContextReplacePropertiesJsonString(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(125, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetForbiddenBasicMakeup(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(101, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetForbiddenBasicNonReshapeBeauty(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(102, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetForbiddenBasicReshape(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(103, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetForbiddenBasicSmooth(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(104, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String[] lightAssetGetBgmMusicIDs(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(108, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String[] lightAssetGetBoundsTrackerPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(110, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetGetDefaultCameraPosition(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(96, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetGetErrorCode(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(113, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public FontAsset[] lightAssetGetFontAssets(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(109, obtain, obtain2, 0);
                    obtain2.readException();
                    return (FontAsset[]) obtain2.createTypedArray(FontAsset.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightAssetGetJsonString(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(116, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public LUTPlaceHolder[] lightAssetGetLUTPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(93, obtain, obtain2, 0);
                    obtain2.readException();
                    return (LUTPlaceHolder[]) obtain2.createTypedArray(LUTPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public MaterialConfig[] lightAssetGetMaterialConfigs(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(112, obtain, obtain2, 0);
                    obtain2.readException();
                    return (MaterialConfig[]) obtain2.createTypedArray(MaterialConfig.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightAssetGetMaterialID(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(92, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TemplateConfig lightAssetGetMovieConfig(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(111, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? TemplateConfig.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public LightAgentBundleInfo[] lightAssetGetRenderAgentBundleInfos(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(91, obtain, obtain2, 0);
                    obtain2.readException();
                    return (LightAgentBundleInfo[]) obtain2.createTypedArray(LightAgentBundleInfo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String[] lightAssetGetRenderAgentTypes(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(90, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetGetSupportCameraPosition(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(97, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetGetVoiceEnvironment(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(95, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetGetVoiceKind(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(94, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetHasFactorMakeup(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(105, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetHasLut(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(87, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetHasMakeup(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(100, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetHasMesh(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(99, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetHeight(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(107, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightAssetLoad(String str, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i9);
                    this.mRemote.transact(86, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightAssetLoadFromString(String str, String str2, int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeInt(i9);
                    this.mRemote.transact(88, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetNeedRenderAbility(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(89, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetNeedResetAssetWhenStartRecord(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(114, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightAssetNeedUE4Environment(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(98, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightAssetPerformFinalize(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(115, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightAssetWidth(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(106, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightEngineAudioOutput(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightEngineComponentLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightEngineGetOriginTexture(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightEngineGetResultTexture(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightEngineInit() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightEngineInitAuth(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightEngineInitDeviceConfig(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightEngineIsDeviceAbilitySupported(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightEngineLoadLibraryForSDKService(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightEngineMake(VideoOutputConfig videoOutputConfig, AudioOutputConfig audioOutputConfig, RendererConfig rendererConfig) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (videoOutputConfig != null) {
                        obtain.writeInt(1);
                        videoOutputConfig.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (audioOutputConfig != null) {
                        obtain.writeInt(1);
                        audioOutputConfig.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (rendererConfig != null) {
                        obtain.writeInt(1);
                        rendererConfig.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightEngineRelease(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightEngineSetAssetForCamera(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightEngineSetAssetForMovie(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightEngineSetConfig(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean lightEngineSetSurface(int i9, int i10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int[] lightEngineSetTemplateAssets(int i9, TemplateClip[] templateClipArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeTypedArray(templateClipArr, 0);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createIntArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightEngineVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightEngineVideoOutput(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightLogUtilDestroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(208, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightLogUtilInit() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(205, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightLogUtilSetLightLogger(AIDLILightLogger aIDLILightLogger) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(aIDLILightLogger != null ? aIDLILightLogger.asBinder() : null);
                    this.mRemote.transact(206, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightLogUtilSetMinPriority(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(207, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String lightReportManagerGetShareKey() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(202, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightReportManagerLaunchFromApp(String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(204, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightReportManagerReportOutsideData(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(201, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightReportManagerSetCommonParamsExternal(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(203, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int lightServicePid() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightSurfaceClearRenderCurrent(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(78, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightSurfaceFreeCache(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(84, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public long lightSurfaceGetRenderCurrentGLContext(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(83, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightSurfaceMakeFromNativeBuffer(HardwareBuffer hardwareBuffer, int i9, int i10, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i11 = 1;
                    if (hardwareBuffer != null) {
                        obtain.writeInt(1);
                        hardwareBuffer.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    if (!z10) {
                        i11 = 0;
                    }
                    obtain.writeInt(i11);
                    this.mRemote.transact(75, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId lightSurfaceMakeFromSurface(Surface surface, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i9 = 1;
                    if (surface != null) {
                        obtain.writeInt(1);
                        surface.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!z10) {
                        i9 = 0;
                    }
                    obtain.writeInt(i9);
                    this.mRemote.transact(74, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightSurfaceMakeRenderCurrent(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(77, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightSurfaceRelease(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(85, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void lightSurfaceUpdateSize(int i9, HardwareBuffer hardwareBuffer, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    if (hardwareBuffer != null) {
                        obtain.writeInt(1);
                        hardwareBuffer.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(76, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public InstanceId movieConfigMake() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? InstanceId.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public long movieControllerDuration(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerDuration, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TimeRange[] movieControllerGetBoundsTrackTimeRanges(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerGetBoundsTrackTimeRanges, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeRange[]) obtain2.createTypedArray(TimeRange.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public ClipInfoArray[] movieControllerGetClipInfos(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerGetClipInfos, obtain, obtain2, 0);
                    obtain2.readException();
                    return (ClipInfoArray[]) obtain2.createTypedArray(ClipInfoArray.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public ClipPlaceHolder[] movieControllerGetClipPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(178, obtain, obtain2, 0);
                    obtain2.readException();
                    return (ClipPlaceHolder[]) obtain2.createTypedArray(ClipPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public LUTPlaceHolder[] movieControllerGetLUTPlaceHolders(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerGetLUTPlaceHolders, obtain, obtain2, 0);
                    obtain2.readException();
                    return (LUTPlaceHolder[]) obtain2.createTypedArray(LUTPlaceHolder.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean movieControllerGetMediasTotalDurationLimitationStatus(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(181, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public float movieControllerGetOriginVolume(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerGetOriginVolume, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public TimeRange[] movieControllerGetTextTimeRanges(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerGetTextTimeRanges, obtain, obtain2, 0);
                    obtain2.readException();
                    return (TimeRange[]) obtain2.createTypedArray(TimeRange.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean movieControllerHasAudio(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(190, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerRegisterClipSourceFactory(int i9, AIDLClipSourceFactory aIDLClipSourceFactory) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeStrongBinder(aIDLClipSourceFactory != null ? aIDLClipSourceFactory.asBinder() : null);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerRegisterClipSourceFactory, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerReplaceLUTAsset(int i9, String str, LUTAsset lUTAsset) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    if (lUTAsset != null) {
                        obtain.writeInt(1);
                        lUTAsset.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerReplaceLUTAsset, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerSetClipAssets(int i9, Bundle bundle, String str, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    int i10 = 1;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeString(str);
                    if (!z10) {
                        i10 = 0;
                    }
                    obtain.writeInt(i10);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerSetClipAssets, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerSetOriginVolume(int i9, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerSetOriginVolume, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerSetRenderMediaSize(int i9, int i10, int i11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    this.mRemote.transact(Stub.TRANSACTION_movieControllerSetRenderMediaSize, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void movieControllerSetupMediasTotalDurationLimitationStatus(int i9, boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(180, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean nativeBufferIsEglFenceEnabled() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_nativeBufferIsEglFenceEnabled, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void nativeBufferSetEglFenceEnabled(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(Stub.TRANSACTION_nativeBufferSetEglFenceEnabled, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String performanceMonitorGetBenchData() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_performanceMonitorGetBenchData, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String performanceMonitorGetPerformanceData() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_performanceMonitorGetPerformanceData, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean performanceMonitorSavePerformanceData() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_performanceMonitorSavePerformanceData, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetBenchConfig(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(192, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetBenchConfigWithThreshold(String str, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(193, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetBenchEnable(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(194, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetBenchEnableWithThreshold(boolean z10, float f10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    obtain.writeFloat(f10);
                    this.mRemote.transact(195, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetPerfEnable(boolean z10, boolean z11, boolean z12, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i9 = 1;
                    obtain.writeInt(z10 ? 1 : 0);
                    obtain.writeInt(z11 ? 1 : 0);
                    if (!z12) {
                        i9 = 0;
                    }
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(200, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void performanceMonitorSetPerformanceRunMode(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_performanceMonitorSetPerformanceRunMode, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void removeSdkInstance(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(217, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public boolean ueUtilCheckUE4Ready() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(82, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilClearUEFaceStr() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(218, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilCreateUEPlayer(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(Stub.TRANSACTION_ueUtilCreateUEPlayer, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilInitUEInterface(AIDLOnBindServiceListener aIDLOnBindServiceListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(aIDLOnBindServiceListener != null ? aIDLOnBindServiceListener.asBinder() : null);
                    this.mRemote.transact(Stub.TRANSACTION_ueUtilInitUEInterface, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilInitUENativeFunctions() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_ueUtilInitUENativeFunctions, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilSetMultiProc(boolean z10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z10 ? 1 : 0);
                    this.mRemote.transact(Stub.TRANSACTION_ueUtilSetMultiProc, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilSetOnUE4InitFinishListener(AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(aIDLOnUE4EngineInitFInishListener != null ? aIDLOnUE4EngineInitFInishListener.asBinder() : null);
                    this.mRemote.transact(81, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilSetUEFaceStr(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(219, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilStartUE4(long j10, int i9, int i10, AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j10);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeStrongBinder(aIDLOnUE4EngineInitFInishListener != null ? aIDLOnUE4EngineInitFInishListener.asBinder() : null);
                    this.mRemote.transact(79, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void ueUtilStopUE4() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(80, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public ReadSampleResult videoOutputReadSample(int i9, int i10, int i11, long j10, long j11) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeInt(i10);
                    obtain.writeInt(i11);
                    obtain.writeLong(j10);
                    obtain.writeLong(j11);
                    this.mRemote.transact(126, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ReadSampleResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void videoOutputRelease(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(127, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int wmElementConstructor(String str, String str2, String str3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.mRemote.transact(209, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public int wmElementDoCheckIn(int i9, String str, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.mRemote.transact(210, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public String wmElementGetInnerValue(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(Stub.TRANSACTION_wmElementGetInnerValue, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void wmElementResetCheckIn(int i9) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    this.mRemote.transact(215, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void wmElementSetDate(int i9, long j10) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeLong(j10);
                    this.mRemote.transact(213, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void wmElementSetLocation(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(212, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // org.light.ILightSDKServiceInterface
            public void wmElementSetText(int i9, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i9);
                    obtain.writeString(str);
                    this.mRemote.transact(211, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ILightSDKServiceInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ILightSDKServiceInterface)) {
                return (ILightSDKServiceInterface) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
            if (i9 != 1598968902) {
                switch (i9) {
                    case 1:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightServicePid = lightServicePid();
                        parcel2.writeNoException();
                        parcel2.writeInt(lightServicePid);
                        return true;
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightEngineMake = lightEngineMake(parcel.readInt() != 0 ? VideoOutputConfig.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? AudioOutputConfig.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? RendererConfig.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        if (lightEngineMake != null) {
                            parcel2.writeInt(1);
                            lightEngineMake.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightEngineSetSurface = lightEngineSetSurface(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineSetSurface ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightEngineSetConfig(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightEngineVideoOutput = lightEngineVideoOutput(parcel.readInt());
                        parcel2.writeNoException();
                        if (lightEngineVideoOutput != null) {
                            parcel2.writeInt(1);
                            lightEngineVideoOutput.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightEngineAudioOutput = lightEngineAudioOutput(parcel.readInt());
                        parcel2.writeNoException();
                        if (lightEngineAudioOutput != null) {
                            parcel2.writeInt(1);
                            lightEngineAudioOutput.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightEngineSetAssetForMovie = lightEngineSetAssetForMovie(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (lightEngineSetAssetForMovie != null) {
                            parcel2.writeInt(1);
                            lightEngineSetAssetForMovie.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightEngineSetAssetForCamera = lightEngineSetAssetForCamera(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (lightEngineSetAssetForCamera != null) {
                            parcel2.writeInt(1);
                            lightEngineSetAssetForCamera.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightEngineInitAuth = lightEngineInitAuth(parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineInitAuth);
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightEngineInit();
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightEngineVersion = lightEngineVersion();
                        parcel2.writeNoException();
                        parcel2.writeString(lightEngineVersion);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightEngineComponentLevel = lightEngineComponentLevel();
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineComponentLevel);
                        return true;
                    case 13:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightEngineInitDeviceConfig(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightEngineIsDeviceAbilitySupported = lightEngineIsDeviceAbilitySupported(parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineIsDeviceAbilitySupported ? 1 : 0);
                        return true;
                    case 15:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightEngineGetResultTexture = lightEngineGetResultTexture(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineGetResultTexture);
                        return true;
                    case 16:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightEngineGetOriginTexture = lightEngineGetOriginTexture(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineGetOriginTexture);
                        return true;
                    case 17:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightEngineRelease(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        parcel.enforceInterface(DESCRIPTOR);
                        int[] lightEngineSetTemplateAssets = lightEngineSetTemplateAssets(parcel.readInt(), (TemplateClip[]) parcel.createTypedArray(TemplateClip.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeIntArray(lightEngineSetTemplateAssets);
                        return true;
                    case 19:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightEngineLoadLibraryForSDKService = lightEngineLoadLibraryForSDKService(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        parcel2.writeInt(lightEngineLoadLibraryForSDKService ? 1 : 0);
                        return true;
                    case 20:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetConfigData(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 21:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetRenderSize(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 22:
                        parcel.enforceInterface(DESCRIPTOR);
                        configClearAICachedData(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 23:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDefaultBeautyVersion(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 24:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetLightAIModelPath(parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 25:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetLightAIModelPathByAgentInfo(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? LightAgentBundleInfo.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 26:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetLightAIModelPathWithLevel(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 27:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetExternalRenderCallback(parcel.readInt(), AIDLExternalRenderCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 28:
                        parcel.enforceInterface(DESCRIPTOR);
                        configAddExternalRenderCallback(parcel.readInt(), parcel.readString(), AIDLExternalRenderCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 29:
                        parcel.enforceInterface(DESCRIPTOR);
                        configRemoveExternalRenderCallback(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 30:
                        parcel.enforceInterface(DESCRIPTOR);
                        List<LightFaceFeature> configGetFaceFeature = configGetFaceFeature(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedList(configGetFaceFeature);
                        return true;
                    case 31:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetExternalFaceData(parcel.readInt(), parcel.readInt() != 0 ? LightFaceData.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 32:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle configGetConfigData = configGetConfigData(parcel.readInt());
                        parcel2.writeNoException();
                        if (configGetConfigData != null) {
                            parcel2.writeInt(1);
                            configGetConfigData.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 33:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetHorizontalFov(parcel.readInt(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 34:
                        parcel.enforceInterface(DESCRIPTOR);
                        LightFaceData configGetFaceData = configGetFaceData(parcel.readInt());
                        parcel2.writeNoException();
                        if (configGetFaceData != null) {
                            parcel2.writeInt(1);
                            configGetFaceData.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 35:
                        parcel.enforceInterface(DESCRIPTOR);
                        LightAIDataWrapper configGetAIData = configGetAIData(parcel.readInt(), parcel.createStringArray(), parcel.readInt());
                        parcel2.writeNoException();
                        if (configGetAIData != null) {
                            parcel2.writeInt(1);
                            configGetAIData.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 36:
                        parcel.enforceInterface(DESCRIPTOR);
                        configReplaceAIData(parcel.readInt(), parcel.readInt() != 0 ? LightAIDataWrapper.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 37:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetOnClickWatermarkListener(parcel.readInt(), AIDLOnClickWatermarkListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 38:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetWatermarkDataListener(parcel.readInt(), parcel.readString(), AIDLOnWatermarkDataListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 39:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetTipsStatusListener(parcel.readInt(), AIDLOnTipsStatusListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 40:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetLoadAssetListener(parcel.readInt(), AIDLOnLoadAssetListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 41:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetAIDataListener(parcel.readInt(), AIDLOnAIDataListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 42:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDelegateAgentRequestListener(parcel.readInt(), AIDLOnDelegateAgentRequestListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 43:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDelegateAgentResult(parcel.readInt(), parcel.readInt() != 0 ? LightDelegateAgentRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 44:
                        parcel.enforceInterface(DESCRIPTOR);
                        configRegisterFont(parcel.readInt() != 0 ? FontAsset.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 45:
                        parcel.enforceInterface(DESCRIPTOR);
                        configOnPause(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 46:
                        parcel.enforceInterface(DESCRIPTOR);
                        configOnResume(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 47:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetSyncMode(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 48:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetSyncInitFlag(parcel.readInt(), parcel.readInt() != 0, parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 49:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetPredictNextFrame(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 50:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetPredictNextTime(parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 51:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDetectShorterEdgeLength(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 52:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDowngradeStrategy(parcel.readInt(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 53:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetBGMusicHidden(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 54:
                        parcel.enforceInterface(DESCRIPTOR);
                        PerformanceData configGetPerformanceData = configGetPerformanceData(parcel.readInt());
                        parcel2.writeNoException();
                        if (configGetPerformanceData != null) {
                            parcel2.writeInt(1);
                            configGetPerformanceData.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 55:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetDisableRendererFlag(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 56:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean configGetDisableRendererFlag = configGetDisableRendererFlag(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(configGetDisableRendererFlag ? 1 : 0);
                        return true;
                    case 57:
                        parcel.enforceInterface(DESCRIPTOR);
                        configFreeCache(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 58:
                        parcel.enforceInterface(DESCRIPTOR);
                        configCleanFileCacheForKey(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 59:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetPreInitAgents(parcel.readInt(), parcel.createStringArray());
                        parcel2.writeNoException();
                        return true;
                    case 60:
                        parcel.enforceInterface(DESCRIPTOR);
                        int configGetPhonePrefLevel = configGetPhonePrefLevel();
                        parcel2.writeNoException();
                        parcel2.writeInt(configGetPhonePrefLevel);
                        return true;
                    case 61:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean configGetAssetDegradeFlag = configGetAssetDegradeFlag();
                        parcel2.writeNoException();
                        parcel2.writeInt(configGetAssetDegradeFlag ? 1 : 0);
                        return true;
                    case 62:
                        parcel.enforceInterface(DESCRIPTOR);
                        configSetAssetDowngradeFlag(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 63:
                        parcel.enforceInterface(DESCRIPTOR);
                        configPerformFinalize(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 64:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId cameraConfigMake = cameraConfigMake();
                        parcel2.writeNoException();
                        if (cameraConfigMake != null) {
                            parcel2.writeInt(1);
                            cameraConfigMake.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 65:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigUpdateCameraTexture(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? (HardwareBuffer) HardwareBuffer.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 66:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigSetCameraTexture(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 67:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigSetRawInputForAR(parcel.readInt(), parcel.createByteArray(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 68:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigSensorOrientationChanged(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 69:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigCameraSwitched(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 70:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigSetAutoTestMode(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 71:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraConfigSetAbnormalFrameDetectFrequency(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 72:
                        parcel.enforceInterface(DESCRIPTOR);
                        String cameraConfigGetAbnormalFrameDetectResult = cameraConfigGetAbnormalFrameDetectResult(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(cameraConfigGetAbnormalFrameDetectResult);
                        return true;
                    case 73:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId movieConfigMake = movieConfigMake();
                        parcel2.writeNoException();
                        if (movieConfigMake != null) {
                            parcel2.writeInt(1);
                            movieConfigMake.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 74:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightSurfaceMakeFromSurface = lightSurfaceMakeFromSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                        parcel2.writeNoException();
                        if (lightSurfaceMakeFromSurface != null) {
                            parcel2.writeInt(1);
                            lightSurfaceMakeFromSurface.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 75:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightSurfaceMakeFromNativeBuffer = lightSurfaceMakeFromNativeBuffer(parcel.readInt() != 0 ? (HardwareBuffer) HardwareBuffer.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        if (lightSurfaceMakeFromNativeBuffer != null) {
                            parcel2.writeInt(1);
                            lightSurfaceMakeFromNativeBuffer.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 76:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightSurfaceUpdateSize(parcel.readInt(), parcel.readInt() != 0 ? (HardwareBuffer) HardwareBuffer.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 77:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightSurfaceMakeRenderCurrent(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 78:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightSurfaceClearRenderCurrent(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 79:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilStartUE4(parcel.readLong(), parcel.readInt(), parcel.readInt(), AIDLOnUE4EngineInitFInishListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 80:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilStopUE4();
                        parcel2.writeNoException();
                        return true;
                    case 81:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilSetOnUE4InitFinishListener(AIDLOnUE4EngineInitFInishListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 82:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean ueUtilCheckUE4Ready = ueUtilCheckUE4Ready();
                        parcel2.writeNoException();
                        parcel2.writeInt(ueUtilCheckUE4Ready ? 1 : 0);
                        return true;
                    case 83:
                        parcel.enforceInterface(DESCRIPTOR);
                        long lightSurfaceGetRenderCurrentGLContext = lightSurfaceGetRenderCurrentGLContext(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeLong(lightSurfaceGetRenderCurrentGLContext);
                        return true;
                    case 84:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightSurfaceFreeCache(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 85:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightSurfaceRelease(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 86:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightAssetLoad = lightAssetLoad(parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (lightAssetLoad != null) {
                            parcel2.writeInt(1);
                            lightAssetLoad.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 87:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetHasLut = lightAssetHasLut(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetHasLut ? 1 : 0);
                        return true;
                    case 88:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightAssetLoadFromString = lightAssetLoadFromString(parcel.readString(), parcel.readString(), parcel.readInt());
                        parcel2.writeNoException();
                        if (lightAssetLoadFromString != null) {
                            parcel2.writeInt(1);
                            lightAssetLoadFromString.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 89:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetNeedRenderAbility = lightAssetNeedRenderAbility(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetNeedRenderAbility ? 1 : 0);
                        return true;
                    case 90:
                        parcel.enforceInterface(DESCRIPTOR);
                        String[] lightAssetGetRenderAgentTypes = lightAssetGetRenderAgentTypes(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStringArray(lightAssetGetRenderAgentTypes);
                        return true;
                    case 91:
                        parcel.enforceInterface(DESCRIPTOR);
                        LightAgentBundleInfo[] lightAssetGetRenderAgentBundleInfos = lightAssetGetRenderAgentBundleInfos(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(lightAssetGetRenderAgentBundleInfos, 1);
                        return true;
                    case 92:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightAssetGetMaterialID = lightAssetGetMaterialID(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(lightAssetGetMaterialID);
                        return true;
                    case 93:
                        parcel.enforceInterface(DESCRIPTOR);
                        LUTPlaceHolder[] lightAssetGetLUTPlaceHolders = lightAssetGetLUTPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(lightAssetGetLUTPlaceHolders, 1);
                        return true;
                    case 94:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetGetVoiceKind = lightAssetGetVoiceKind(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetGetVoiceKind);
                        return true;
                    case 95:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetGetVoiceEnvironment = lightAssetGetVoiceEnvironment(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetGetVoiceEnvironment);
                        return true;
                    case 96:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetGetDefaultCameraPosition = lightAssetGetDefaultCameraPosition(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetGetDefaultCameraPosition);
                        return true;
                    case 97:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetGetSupportCameraPosition = lightAssetGetSupportCameraPosition(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetGetSupportCameraPosition);
                        return true;
                    case 98:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetNeedUE4Environment = lightAssetNeedUE4Environment(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetNeedUE4Environment ? 1 : 0);
                        return true;
                    case 99:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetHasMesh = lightAssetHasMesh(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetHasMesh ? 1 : 0);
                        return true;
                    case 100:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetHasMakeup = lightAssetHasMakeup(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetHasMakeup ? 1 : 0);
                        return true;
                    case 101:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetForbiddenBasicMakeup = lightAssetForbiddenBasicMakeup(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetForbiddenBasicMakeup ? 1 : 0);
                        return true;
                    case 102:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetForbiddenBasicNonReshapeBeauty = lightAssetForbiddenBasicNonReshapeBeauty(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetForbiddenBasicNonReshapeBeauty ? 1 : 0);
                        return true;
                    case 103:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetForbiddenBasicReshape = lightAssetForbiddenBasicReshape(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetForbiddenBasicReshape ? 1 : 0);
                        return true;
                    case 104:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetForbiddenBasicSmooth = lightAssetForbiddenBasicSmooth(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetForbiddenBasicSmooth ? 1 : 0);
                        return true;
                    case 105:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetHasFactorMakeup = lightAssetHasFactorMakeup(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetHasFactorMakeup ? 1 : 0);
                        return true;
                    case 106:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetWidth = lightAssetWidth(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetWidth);
                        return true;
                    case 107:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetHeight = lightAssetHeight(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetHeight);
                        return true;
                    case 108:
                        parcel.enforceInterface(DESCRIPTOR);
                        String[] lightAssetGetBgmMusicIDs = lightAssetGetBgmMusicIDs(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStringArray(lightAssetGetBgmMusicIDs);
                        return true;
                    case 109:
                        parcel.enforceInterface(DESCRIPTOR);
                        FontAsset[] lightAssetGetFontAssets = lightAssetGetFontAssets(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(lightAssetGetFontAssets, 1);
                        return true;
                    case 110:
                        parcel.enforceInterface(DESCRIPTOR);
                        String[] lightAssetGetBoundsTrackerPlaceHolders = lightAssetGetBoundsTrackerPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStringArray(lightAssetGetBoundsTrackerPlaceHolders);
                        return true;
                    case 111:
                        parcel.enforceInterface(DESCRIPTOR);
                        TemplateConfig lightAssetGetMovieConfig = lightAssetGetMovieConfig(parcel.readInt());
                        parcel2.writeNoException();
                        if (lightAssetGetMovieConfig != null) {
                            parcel2.writeInt(1);
                            lightAssetGetMovieConfig.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 112:
                        parcel.enforceInterface(DESCRIPTOR);
                        MaterialConfig[] lightAssetGetMaterialConfigs = lightAssetGetMaterialConfigs(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(lightAssetGetMaterialConfigs, 1);
                        return true;
                    case 113:
                        parcel.enforceInterface(DESCRIPTOR);
                        int lightAssetGetErrorCode = lightAssetGetErrorCode(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetGetErrorCode);
                        return true;
                    case 114:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetNeedResetAssetWhenStartRecord = lightAssetNeedResetAssetWhenStartRecord(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetNeedResetAssetWhenStartRecord ? 1 : 0);
                        return true;
                    case 115:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightAssetPerformFinalize(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 116:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightAssetGetJsonString = lightAssetGetJsonString(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(lightAssetGetJsonString);
                        return true;
                    case 117:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightAssetDataContextMake = lightAssetDataContextMake(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        if (lightAssetDataContextMake != null) {
                            parcel2.writeInt(1);
                            lightAssetDataContextMake.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 118:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean lightAssetDataContextAddLightAsset = lightAssetDataContextAddLightAsset(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(lightAssetDataContextAddLightAsset ? 1 : 0);
                        return true;
                    case 119:
                        parcel.enforceInterface(DESCRIPTOR);
                        InstanceId lightAssetDataContextExportLightAsset = lightAssetDataContextExportLightAsset(parcel.readInt());
                        parcel2.writeNoException();
                        if (lightAssetDataContextExportLightAsset != null) {
                            parcel2.writeInt(1);
                            lightAssetDataContextExportLightAsset.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 120:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightAssetDataContextExportEntityTreeJsonString = lightAssetDataContextExportEntityTreeJsonString(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(lightAssetDataContextExportEntityTreeJsonString);
                        return true;
                    case 121:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightAssetDataContextReplaceEntityTreeJsonString(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 122:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightAssetDataContextExportInputSourcesJsonString = lightAssetDataContextExportInputSourcesJsonString(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(lightAssetDataContextExportInputSourcesJsonString);
                        return true;
                    case 123:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightAssetDataContextReplaceInputSourcesJsonString(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 124:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightAssetDataContextExportPropertiesJsonString = lightAssetDataContextExportPropertiesJsonString(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(lightAssetDataContextExportPropertiesJsonString);
                        return true;
                    case 125:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightAssetDataContextReplacePropertiesJsonString(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 126:
                        parcel.enforceInterface(DESCRIPTOR);
                        ReadSampleResult videoOutputReadSample = videoOutputReadSample(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong());
                        parcel2.writeNoException();
                        if (videoOutputReadSample != null) {
                            parcel2.writeInt(1);
                            videoOutputReadSample.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 127:
                        parcel.enforceInterface(DESCRIPTOR);
                        videoOutputRelease(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 128:
                        parcel.enforceInterface(DESCRIPTOR);
                        audioOutputSeekTo(parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case 129:
                        parcel.enforceInterface(DESCRIPTOR);
                        AudioFrame audioOutputCopyNextSample = audioOutputCopyNextSample(parcel.readInt());
                        parcel2.writeNoException();
                        if (audioOutputCopyNextSample != null) {
                            parcel2.writeInt(1);
                            audioOutputCopyNextSample.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 130:
                        parcel.enforceInterface(DESCRIPTOR);
                        AudioFrame audioOutputCopyNextSampleSyncEnable = audioOutputCopyNextSampleSyncEnable(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        if (audioOutputCopyNextSampleSyncEnable != null) {
                            parcel2.writeInt(1);
                            audioOutputCopyNextSampleSyncEnable.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 131:
                        parcel.enforceInterface(DESCRIPTOR);
                        audioOutputRelease(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 132:
                        parcel.enforceInterface(DESCRIPTOR);
                        String[] controllerGetSoundEffectIDs = controllerGetSoundEffectIDs(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeStringArray(controllerGetSoundEffectIDs);
                        return true;
                    case 133:
                        parcel.enforceInterface(DESCRIPTOR);
                        AudioPlaceHolder[] controllerGetAudioPlaceHolders = controllerGetAudioPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(controllerGetAudioPlaceHolders, 1);
                        return true;
                    case 134:
                        parcel.enforceInterface(DESCRIPTOR);
                        TextPlaceHolder[] controllerGetTextPlaceHolders = controllerGetTextPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(controllerGetTextPlaceHolders, 1);
                        return true;
                    case TRANSACTION_controllerSetTextAsset /* 135 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetTextAsset(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? TextAsset.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 136:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetMaterialClipAssets(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, AIDLFaceDetectCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 137:
                        parcel.enforceInterface(DESCRIPTOR);
                        TextPlaceHolder controllerGetEditableTextUnderPoint = controllerGetEditableTextUnderPoint(parcel.readInt(), parcel.readFloat(), parcel.readFloat());
                        parcel2.writeNoException();
                        if (controllerGetEditableTextUnderPoint != null) {
                            parcel2.writeInt(1);
                            controllerGetEditableTextUnderPoint.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 138:
                        parcel.enforceInterface(DESCRIPTOR);
                        TextPlaceHolder[] controllerGetTextPlaceHolderByEntityId = controllerGetTextPlaceHolderByEntityId(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(controllerGetTextPlaceHolderByEntityId, 1);
                        return true;
                    case 139:
                        parcel.enforceInterface(DESCRIPTOR);
                        int[] controllerGetEntitiesUnderPoint = controllerGetEntitiesUnderPoint(parcel.readInt(), parcel.readFloat(), parcel.readFloat());
                        parcel2.writeNoException();
                        parcel2.writeIntArray(controllerGetEntitiesUnderPoint);
                        return true;
                    case 140:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerReplaceAudioAsset(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? AudioAsset.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 141:
                        parcel.enforceInterface(DESCRIPTOR);
                        Bundle controllerGetAssetData = controllerGetAssetData(parcel.readInt());
                        parcel2.writeNoException();
                        if (controllerGetAssetData != null) {
                            parcel2.writeInt(1);
                            controllerGetAssetData.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 142:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetAssetData(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 143:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerUpdateComponent(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 144:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerAddComponent(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 145:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerRemoveComponent(parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 146:
                        parcel.enforceInterface(DESCRIPTOR);
                        String controllerFetchComponent = controllerFetchComponent(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(controllerFetchComponent);
                        return true;
                    case 147:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetComponentUpdateCallback(parcel.readInt(), AIDLComponentUpdateCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_controllerAddComponentUpdateMonitor /* 148 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerAddComponentUpdateMonitor(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_controllerRemoveComponentUpdateMonitor /* 149 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerRemoveComponentUpdateMonitor(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 150:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetWillReadSampleCallback(parcel.readInt(), AIDLWillReadSampleCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 151:
                        parcel.enforceInterface(DESCRIPTOR);
                        TimeLine[] controllerGetTimeLines = controllerGetTimeLines(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(controllerGetTimeLines, 1);
                        return true;
                    case 152:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerUpdateResource(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 153:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerAddEntity(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 154:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerRemoveEntity(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_controllerHasAudio /* 155 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean controllerHasAudio = controllerHasAudio(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(controllerHasAudio ? 1 : 0);
                        return true;
                    case TRANSACTION_controllerResetAsset /* 156 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerResetAsset(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_controllerGetEditableWMItems /* 157 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        WMElement[] controllerGetEditableWMItems = controllerGetEditableWMItems(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(controllerGetEditableWMItems, 1);
                        return true;
                    case TRANSACTION_controllerGetBoundsByKey /* 158 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        RectF controllerGetBoundsByKey = controllerGetBoundsByKey(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        if (controllerGetBoundsByKey != null) {
                            parcel2.writeInt(1);
                            controllerGetBoundsByKey.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case TRANSACTION_controllerSetExternalAudioProcessor /* 159 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        controllerSetExternalAudioProcessor(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_controllerHasSpecificMakeUpType /* 160 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean controllerHasSpecificMakeUpType = controllerHasSpecificMakeUpType(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(controllerHasSpecificMakeUpType ? 1 : 0);
                        return true;
                    case TRANSACTION_cameraControllerRelease /* 161 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerRelease(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerUpdateTouchEvent /* 162 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerUpdateTouchEvent(parcel.readInt(), parcel.readInt(), parcel.readLong(), parcel.readLong(), parcel.createTypedArrayList(PointF.CREATOR), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerUpdateVoiceDecibel /* 163 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerUpdateVoiceDecibel(parcel.readInt(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerUpdateTouchRotate /* 164 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerUpdateTouchRotate(parcel.readInt(), parcel.createFloatArray());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerUpdateTouchScale /* 165 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerUpdateTouchScale(parcel.readInt(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 166:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerSetARFrameInfo(parcel.readInt(), parcel.readInt() != 0 ? ArFrameInfo.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 167:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerSetSegmentationFastMode(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerPause3DAnimation /* 168 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerPause3DAnimation(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerResume3DAnimation /* 169 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerResume3DAnimation(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerRegister3DAnimation /* 170 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerRegister3DAnimation(parcel.readInt(), parcel.createStringArrayList());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerSetHitTestAfterUnprojection /* 171 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerSetHitTestAfterUnprojection(parcel.readInt(), parcel.createFloatArray());
                        parcel2.writeNoException();
                        return true;
                    case 172:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerRotateArModelToFront(parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerUpdateViewParams /* 173 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerUpdateViewParams(parcel.readInt(), parcel.createFloatArray(), parcel.createFloatArray(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerGetHitTestFilamentAssets /* 174 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerGetHitTestFilamentAssets(parcel.readInt(), parcel.createFloatArray(), AIDLHitTestFilaCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 175:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerGetFilamentAssetPosition(parcel.readInt(), AIDLFilaPositionCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_cameraControllerSetUEFaceStr /* 176 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        cameraControllerSetUEFaceStr(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_movieControllerGetLUTPlaceHolders /* 177 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        LUTPlaceHolder[] movieControllerGetLUTPlaceHolders = movieControllerGetLUTPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(movieControllerGetLUTPlaceHolders, 1);
                        return true;
                    case 178:
                        parcel.enforceInterface(DESCRIPTOR);
                        ClipPlaceHolder[] movieControllerGetClipPlaceHolders = movieControllerGetClipPlaceHolders(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(movieControllerGetClipPlaceHolders, 1);
                        return true;
                    case TRANSACTION_movieControllerSetRenderMediaSize /* 179 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerSetRenderMediaSize(parcel.readInt(), parcel.readInt(), parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 180:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerSetupMediasTotalDurationLimitationStatus(parcel.readInt(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 181:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean movieControllerGetMediasTotalDurationLimitationStatus = movieControllerGetMediasTotalDurationLimitationStatus(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(movieControllerGetMediasTotalDurationLimitationStatus ? 1 : 0);
                        return true;
                    case TRANSACTION_movieControllerSetClipAssets /* 182 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerSetClipAssets(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_movieControllerSetOriginVolume /* 183 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerSetOriginVolume(parcel.readInt(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_movieControllerGetOriginVolume /* 184 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        float movieControllerGetOriginVolume = movieControllerGetOriginVolume(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeFloat(movieControllerGetOriginVolume);
                        return true;
                    case TRANSACTION_movieControllerGetClipInfos /* 185 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        ClipInfoArray[] movieControllerGetClipInfos = movieControllerGetClipInfos(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(movieControllerGetClipInfos, 1);
                        return true;
                    case TRANSACTION_movieControllerGetTextTimeRanges /* 186 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        TimeRange[] movieControllerGetTextTimeRanges = movieControllerGetTextTimeRanges(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(movieControllerGetTextTimeRanges, 1);
                        return true;
                    case TRANSACTION_movieControllerGetBoundsTrackTimeRanges /* 187 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        TimeRange[] movieControllerGetBoundsTrackTimeRanges = movieControllerGetBoundsTrackTimeRanges(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeTypedArray(movieControllerGetBoundsTrackTimeRanges, 1);
                        return true;
                    case TRANSACTION_movieControllerReplaceLUTAsset /* 188 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerReplaceLUTAsset(parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? LUTAsset.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_movieControllerDuration /* 189 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        long movieControllerDuration = movieControllerDuration(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeLong(movieControllerDuration);
                        return true;
                    case 190:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean movieControllerHasAudio = movieControllerHasAudio(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeInt(movieControllerHasAudio ? 1 : 0);
                        return true;
                    case TRANSACTION_movieControllerRegisterClipSourceFactory /* 191 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        movieControllerRegisterClipSourceFactory(parcel.readInt(), AIDLClipSourceFactory.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 192:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetBenchConfig(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 193:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetBenchConfigWithThreshold(parcel.readString(), parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case 194:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetBenchEnable(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 195:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetBenchEnableWithThreshold(parcel.readInt() != 0, parcel.readFloat());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_performanceMonitorGetBenchData /* 196 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        String performanceMonitorGetBenchData = performanceMonitorGetBenchData();
                        parcel2.writeNoException();
                        parcel2.writeString(performanceMonitorGetBenchData);
                        return true;
                    case TRANSACTION_performanceMonitorSavePerformanceData /* 197 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean performanceMonitorSavePerformanceData = performanceMonitorSavePerformanceData();
                        parcel2.writeNoException();
                        parcel2.writeInt(performanceMonitorSavePerformanceData ? 1 : 0);
                        return true;
                    case TRANSACTION_performanceMonitorGetPerformanceData /* 198 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        String performanceMonitorGetPerformanceData = performanceMonitorGetPerformanceData();
                        parcel2.writeNoException();
                        parcel2.writeString(performanceMonitorGetPerformanceData);
                        return true;
                    case TRANSACTION_performanceMonitorSetPerformanceRunMode /* 199 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetPerformanceRunMode(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 200:
                        parcel.enforceInterface(DESCRIPTOR);
                        performanceMonitorSetPerfEnable(parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 201:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightReportManagerReportOutsideData(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 202:
                        parcel.enforceInterface(DESCRIPTOR);
                        String lightReportManagerGetShareKey = lightReportManagerGetShareKey();
                        parcel2.writeNoException();
                        parcel2.writeString(lightReportManagerGetShareKey);
                        return true;
                    case 203:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightReportManagerSetCommonParamsExternal(parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                        parcel2.writeNoException();
                        return true;
                    case 204:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightReportManagerLaunchFromApp(parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 205:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightLogUtilInit();
                        parcel2.writeNoException();
                        return true;
                    case 206:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightLogUtilSetLightLogger(AIDLILightLogger.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 207:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightLogUtilSetMinPriority(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 208:
                        parcel.enforceInterface(DESCRIPTOR);
                        lightLogUtilDestroy();
                        parcel2.writeNoException();
                        return true;
                    case 209:
                        parcel.enforceInterface(DESCRIPTOR);
                        int wmElementConstructor = wmElementConstructor(parcel.readString(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(wmElementConstructor);
                        return true;
                    case 210:
                        parcel.enforceInterface(DESCRIPTOR);
                        int wmElementDoCheckIn = wmElementDoCheckIn(parcel.readInt(), parcel.readString(), parcel.readString());
                        parcel2.writeNoException();
                        parcel2.writeInt(wmElementDoCheckIn);
                        return true;
                    case 211:
                        parcel.enforceInterface(DESCRIPTOR);
                        wmElementSetText(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 212:
                        parcel.enforceInterface(DESCRIPTOR);
                        wmElementSetLocation(parcel.readInt(), parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 213:
                        parcel.enforceInterface(DESCRIPTOR);
                        wmElementSetDate(parcel.readInt(), parcel.readLong());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_wmElementGetInnerValue /* 214 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        String wmElementGetInnerValue = wmElementGetInnerValue(parcel.readInt());
                        parcel2.writeNoException();
                        parcel2.writeString(wmElementGetInnerValue);
                        return true;
                    case 215:
                        parcel.enforceInterface(DESCRIPTOR);
                        wmElementResetCheckIn(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 216:
                        parcel.enforceInterface(DESCRIPTOR);
                        debugUtilsSetImageDebugInfo(parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case 217:
                        parcel.enforceInterface(DESCRIPTOR);
                        removeSdkInstance(parcel.readInt());
                        parcel2.writeNoException();
                        return true;
                    case 218:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilClearUEFaceStr();
                        parcel2.writeNoException();
                        return true;
                    case 219:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilSetUEFaceStr(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_ueUtilCreateUEPlayer /* 220 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilCreateUEPlayer(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_ueUtilInitUENativeFunctions /* 221 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilInitUENativeFunctions();
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_ueUtilInitUEInterface /* 222 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilInitUEInterface(AIDLOnBindServiceListener.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_ueUtilSetMultiProc /* 223 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        ueUtilSetMultiProc(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    case TRANSACTION_nativeBufferIsEglFenceEnabled /* 224 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean nativeBufferIsEglFenceEnabled = nativeBufferIsEglFenceEnabled();
                        parcel2.writeNoException();
                        parcel2.writeInt(nativeBufferIsEglFenceEnabled ? 1 : 0);
                        return true;
                    case TRANSACTION_nativeBufferSetEglFenceEnabled /* 225 */:
                        parcel.enforceInterface(DESCRIPTOR);
                        nativeBufferSetEglFenceEnabled(parcel.readInt() != 0);
                        parcel2.writeNoException();
                        return true;
                    default:
                        return super.onTransact(i9, parcel, parcel2, i10);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    AudioFrame audioOutputCopyNextSample(int i9) throws RemoteException;

    AudioFrame audioOutputCopyNextSampleSyncEnable(int i9, boolean z10) throws RemoteException;

    void audioOutputRelease(int i9) throws RemoteException;

    void audioOutputSeekTo(int i9, long j10) throws RemoteException;

    void cameraConfigCameraSwitched(int i9, int i10) throws RemoteException;

    String cameraConfigGetAbnormalFrameDetectResult(int i9) throws RemoteException;

    InstanceId cameraConfigMake() throws RemoteException;

    void cameraConfigSensorOrientationChanged(int i9, int i10) throws RemoteException;

    void cameraConfigSetAbnormalFrameDetectFrequency(int i9, int i10) throws RemoteException;

    void cameraConfigSetAutoTestMode(int i9, boolean z10) throws RemoteException;

    void cameraConfigSetCameraTexture(int i9, int i10, int i11, int i12, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void cameraConfigSetRawInputForAR(int i9, byte[] bArr, int i10, int i11, long j10) throws RemoteException;

    void cameraConfigUpdateCameraTexture(int i9, int i10, HardwareBuffer hardwareBuffer, int i11, int i12, int i13) throws RemoteException;

    void cameraControllerGetFilamentAssetPosition(int i9, AIDLFilaPositionCallback aIDLFilaPositionCallback) throws RemoteException;

    void cameraControllerGetHitTestFilamentAssets(int i9, float[] fArr, AIDLHitTestFilaCallback aIDLHitTestFilaCallback) throws RemoteException;

    void cameraControllerPause3DAnimation(int i9) throws RemoteException;

    void cameraControllerRegister3DAnimation(int i9, List<String> list) throws RemoteException;

    void cameraControllerRelease(int i9) throws RemoteException;

    void cameraControllerResume3DAnimation(int i9) throws RemoteException;

    void cameraControllerRotateArModelToFront(int i9, int i10) throws RemoteException;

    void cameraControllerSetARFrameInfo(int i9, ArFrameInfo arFrameInfo) throws RemoteException;

    void cameraControllerSetHitTestAfterUnprojection(int i9, float[] fArr) throws RemoteException;

    void cameraControllerSetSegmentationFastMode(int i9, boolean z10) throws RemoteException;

    void cameraControllerSetUEFaceStr(int i9, String str) throws RemoteException;

    void cameraControllerUpdateTouchEvent(int i9, int i10, long j10, long j11, List<PointF> list, int i11, int i12) throws RemoteException;

    void cameraControllerUpdateTouchRotate(int i9, float[] fArr) throws RemoteException;

    void cameraControllerUpdateTouchScale(int i9, float f10) throws RemoteException;

    void cameraControllerUpdateViewParams(int i9, float[] fArr, float[] fArr2, float f10) throws RemoteException;

    void cameraControllerUpdateVoiceDecibel(int i9, float f10) throws RemoteException;

    void configAddExternalRenderCallback(int i9, String str, AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException;

    void configCleanFileCacheForKey(int i9, String str) throws RemoteException;

    void configClearAICachedData(int i9) throws RemoteException;

    void configFreeCache(int i9) throws RemoteException;

    LightAIDataWrapper configGetAIData(int i9, String[] strArr, int i10) throws RemoteException;

    boolean configGetAssetDegradeFlag() throws RemoteException;

    Bundle configGetConfigData(int i9) throws RemoteException;

    boolean configGetDisableRendererFlag(int i9) throws RemoteException;

    LightFaceData configGetFaceData(int i9) throws RemoteException;

    List<LightFaceFeature> configGetFaceFeature(int i9) throws RemoteException;

    PerformanceData configGetPerformanceData(int i9) throws RemoteException;

    int configGetPhonePrefLevel() throws RemoteException;

    void configOnPause(int i9) throws RemoteException;

    void configOnResume(int i9) throws RemoteException;

    void configPerformFinalize(int i9) throws RemoteException;

    void configRegisterFont(FontAsset fontAsset, String str) throws RemoteException;

    void configRemoveExternalRenderCallback(int i9, String str) throws RemoteException;

    void configReplaceAIData(int i9, LightAIDataWrapper lightAIDataWrapper) throws RemoteException;

    void configSetAIDataListener(int i9, AIDLOnAIDataListener aIDLOnAIDataListener) throws RemoteException;

    void configSetAssetDowngradeFlag(boolean z10) throws RemoteException;

    void configSetBGMusicHidden(int i9, boolean z10) throws RemoteException;

    void configSetConfigData(int i9, Bundle bundle) throws RemoteException;

    void configSetDefaultBeautyVersion(int i9, String str) throws RemoteException;

    void configSetDelegateAgentRequestListener(int i9, AIDLOnDelegateAgentRequestListener aIDLOnDelegateAgentRequestListener) throws RemoteException;

    void configSetDelegateAgentResult(int i9, LightDelegateAgentRequest lightDelegateAgentRequest, boolean z10, String str) throws RemoteException;

    void configSetDetectShorterEdgeLength(int i9, int i10, String str) throws RemoteException;

    void configSetDisableRendererFlag(int i9, boolean z10) throws RemoteException;

    void configSetDowngradeStrategy(int i9, String str, int i10) throws RemoteException;

    void configSetExternalFaceData(int i9, LightFaceData lightFaceData) throws RemoteException;

    void configSetExternalRenderCallback(int i9, AIDLExternalRenderCallback aIDLExternalRenderCallback) throws RemoteException;

    void configSetHorizontalFov(int i9, float f10) throws RemoteException;

    void configSetLightAIModelPath(int i9, String str, String str2) throws RemoteException;

    void configSetLightAIModelPathByAgentInfo(int i9, String str, LightAgentBundleInfo lightAgentBundleInfo) throws RemoteException;

    void configSetLightAIModelPathWithLevel(int i9, String str, String str2, String str3) throws RemoteException;

    void configSetLoadAssetListener(int i9, AIDLOnLoadAssetListener aIDLOnLoadAssetListener) throws RemoteException;

    void configSetOnClickWatermarkListener(int i9, AIDLOnClickWatermarkListener aIDLOnClickWatermarkListener) throws RemoteException;

    void configSetPreInitAgents(int i9, String[] strArr) throws RemoteException;

    void configSetPredictNextFrame(int i9, boolean z10) throws RemoteException;

    void configSetPredictNextTime(int i9, long j10) throws RemoteException;

    void configSetRenderSize(int i9, int i10, int i11) throws RemoteException;

    void configSetSyncInitFlag(int i9, boolean z10, String str) throws RemoteException;

    void configSetSyncMode(int i9, boolean z10) throws RemoteException;

    void configSetTipsStatusListener(int i9, AIDLOnTipsStatusListener aIDLOnTipsStatusListener) throws RemoteException;

    void configSetWatermarkDataListener(int i9, String str, AIDLOnWatermarkDataListener aIDLOnWatermarkDataListener) throws RemoteException;

    void controllerAddComponent(int i9, int i10, String str) throws RemoteException;

    void controllerAddComponentUpdateMonitor(int i9, int i10) throws RemoteException;

    void controllerAddEntity(int i9, int i10, int i11, String str) throws RemoteException;

    String controllerFetchComponent(int i9, int i10) throws RemoteException;

    Bundle controllerGetAssetData(int i9) throws RemoteException;

    AudioPlaceHolder[] controllerGetAudioPlaceHolders(int i9) throws RemoteException;

    RectF controllerGetBoundsByKey(int i9, String str) throws RemoteException;

    TextPlaceHolder controllerGetEditableTextUnderPoint(int i9, float f10, float f11) throws RemoteException;

    WMElement[] controllerGetEditableWMItems(int i9) throws RemoteException;

    int[] controllerGetEntitiesUnderPoint(int i9, float f10, float f11) throws RemoteException;

    String[] controllerGetSoundEffectIDs(int i9) throws RemoteException;

    TextPlaceHolder[] controllerGetTextPlaceHolderByEntityId(int i9, int i10) throws RemoteException;

    TextPlaceHolder[] controllerGetTextPlaceHolders(int i9) throws RemoteException;

    TimeLine[] controllerGetTimeLines(int i9) throws RemoteException;

    boolean controllerHasAudio(int i9) throws RemoteException;

    boolean controllerHasSpecificMakeUpType(int i9, int i10) throws RemoteException;

    void controllerRemoveComponent(int i9, int i10, String str) throws RemoteException;

    void controllerRemoveComponentUpdateMonitor(int i9, int i10) throws RemoteException;

    void controllerRemoveEntity(int i9, int i10) throws RemoteException;

    void controllerReplaceAudioAsset(int i9, String str, AudioAsset audioAsset) throws RemoteException;

    void controllerResetAsset(int i9) throws RemoteException;

    void controllerSetAssetData(int i9, Bundle bundle) throws RemoteException;

    void controllerSetComponentUpdateCallback(int i9, AIDLComponentUpdateCallback aIDLComponentUpdateCallback) throws RemoteException;

    void controllerSetExternalAudioProcessor(int i9, Bundle bundle) throws RemoteException;

    void controllerSetMaterialClipAssets(int i9, String str, Bundle bundle, AIDLFaceDetectCallback aIDLFaceDetectCallback) throws RemoteException;

    void controllerSetTextAsset(int i9, String str, TextAsset textAsset) throws RemoteException;

    void controllerSetWillReadSampleCallback(int i9, AIDLWillReadSampleCallback aIDLWillReadSampleCallback) throws RemoteException;

    void controllerUpdateComponent(int i9, int i10, String str) throws RemoteException;

    void controllerUpdateResource(int i9, String str) throws RemoteException;

    void debugUtilsSetImageDebugInfo(boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) throws RemoteException;

    boolean lightAssetDataContextAddLightAsset(int i9, int i10, int i11) throws RemoteException;

    String lightAssetDataContextExportEntityTreeJsonString(int i9) throws RemoteException;

    String lightAssetDataContextExportInputSourcesJsonString(int i9) throws RemoteException;

    InstanceId lightAssetDataContextExportLightAsset(int i9) throws RemoteException;

    String lightAssetDataContextExportPropertiesJsonString(int i9) throws RemoteException;

    InstanceId lightAssetDataContextMake(int i9, int i10) throws RemoteException;

    void lightAssetDataContextReplaceEntityTreeJsonString(int i9, String str) throws RemoteException;

    void lightAssetDataContextReplaceInputSourcesJsonString(int i9, String str) throws RemoteException;

    void lightAssetDataContextReplacePropertiesJsonString(int i9, String str) throws RemoteException;

    boolean lightAssetForbiddenBasicMakeup(int i9) throws RemoteException;

    boolean lightAssetForbiddenBasicNonReshapeBeauty(int i9) throws RemoteException;

    boolean lightAssetForbiddenBasicReshape(int i9) throws RemoteException;

    boolean lightAssetForbiddenBasicSmooth(int i9) throws RemoteException;

    String[] lightAssetGetBgmMusicIDs(int i9) throws RemoteException;

    String[] lightAssetGetBoundsTrackerPlaceHolders(int i9) throws RemoteException;

    int lightAssetGetDefaultCameraPosition(int i9) throws RemoteException;

    int lightAssetGetErrorCode(int i9) throws RemoteException;

    FontAsset[] lightAssetGetFontAssets(int i9) throws RemoteException;

    String lightAssetGetJsonString(int i9) throws RemoteException;

    LUTPlaceHolder[] lightAssetGetLUTPlaceHolders(int i9) throws RemoteException;

    MaterialConfig[] lightAssetGetMaterialConfigs(int i9) throws RemoteException;

    String lightAssetGetMaterialID(int i9) throws RemoteException;

    TemplateConfig lightAssetGetMovieConfig(int i9) throws RemoteException;

    LightAgentBundleInfo[] lightAssetGetRenderAgentBundleInfos(int i9) throws RemoteException;

    String[] lightAssetGetRenderAgentTypes(int i9) throws RemoteException;

    int lightAssetGetSupportCameraPosition(int i9) throws RemoteException;

    int lightAssetGetVoiceEnvironment(int i9) throws RemoteException;

    int lightAssetGetVoiceKind(int i9) throws RemoteException;

    boolean lightAssetHasFactorMakeup(int i9) throws RemoteException;

    boolean lightAssetHasLut(int i9) throws RemoteException;

    boolean lightAssetHasMakeup(int i9) throws RemoteException;

    boolean lightAssetHasMesh(int i9) throws RemoteException;

    int lightAssetHeight(int i9) throws RemoteException;

    InstanceId lightAssetLoad(String str, int i9) throws RemoteException;

    InstanceId lightAssetLoadFromString(String str, String str2, int i9) throws RemoteException;

    boolean lightAssetNeedRenderAbility(int i9, String str) throws RemoteException;

    boolean lightAssetNeedResetAssetWhenStartRecord(int i9) throws RemoteException;

    boolean lightAssetNeedUE4Environment(int i9) throws RemoteException;

    void lightAssetPerformFinalize(int i9) throws RemoteException;

    int lightAssetWidth(int i9) throws RemoteException;

    InstanceId lightEngineAudioOutput(int i9) throws RemoteException;

    int lightEngineComponentLevel() throws RemoteException;

    int lightEngineGetOriginTexture(int i9) throws RemoteException;

    int lightEngineGetResultTexture(int i9) throws RemoteException;

    void lightEngineInit() throws RemoteException;

    int lightEngineInitAuth(String str, String str2, String str3) throws RemoteException;

    void lightEngineInitDeviceConfig(String str, String str2) throws RemoteException;

    boolean lightEngineIsDeviceAbilitySupported(String str) throws RemoteException;

    boolean lightEngineLoadLibraryForSDKService(Bundle bundle) throws RemoteException;

    InstanceId lightEngineMake(VideoOutputConfig videoOutputConfig, AudioOutputConfig audioOutputConfig, RendererConfig rendererConfig) throws RemoteException;

    void lightEngineRelease(int i9) throws RemoteException;

    InstanceId lightEngineSetAssetForCamera(int i9, int i10) throws RemoteException;

    InstanceId lightEngineSetAssetForMovie(int i9, int i10) throws RemoteException;

    void lightEngineSetConfig(int i9, int i10) throws RemoteException;

    boolean lightEngineSetSurface(int i9, int i10) throws RemoteException;

    int[] lightEngineSetTemplateAssets(int i9, TemplateClip[] templateClipArr) throws RemoteException;

    String lightEngineVersion() throws RemoteException;

    InstanceId lightEngineVideoOutput(int i9) throws RemoteException;

    void lightLogUtilDestroy() throws RemoteException;

    void lightLogUtilInit() throws RemoteException;

    void lightLogUtilSetLightLogger(AIDLILightLogger aIDLILightLogger) throws RemoteException;

    void lightLogUtilSetMinPriority(int i9) throws RemoteException;

    String lightReportManagerGetShareKey() throws RemoteException;

    void lightReportManagerLaunchFromApp(String str, String str2) throws RemoteException;

    void lightReportManagerReportOutsideData(String str, Bundle bundle) throws RemoteException;

    void lightReportManagerSetCommonParamsExternal(Bundle bundle) throws RemoteException;

    int lightServicePid() throws RemoteException;

    void lightSurfaceClearRenderCurrent(int i9) throws RemoteException;

    void lightSurfaceFreeCache(int i9) throws RemoteException;

    long lightSurfaceGetRenderCurrentGLContext(int i9) throws RemoteException;

    InstanceId lightSurfaceMakeFromNativeBuffer(HardwareBuffer hardwareBuffer, int i9, int i10, boolean z10) throws RemoteException;

    InstanceId lightSurfaceMakeFromSurface(Surface surface, boolean z10) throws RemoteException;

    void lightSurfaceMakeRenderCurrent(int i9) throws RemoteException;

    void lightSurfaceRelease(int i9) throws RemoteException;

    void lightSurfaceUpdateSize(int i9, HardwareBuffer hardwareBuffer, int i10, int i11) throws RemoteException;

    InstanceId movieConfigMake() throws RemoteException;

    long movieControllerDuration(int i9) throws RemoteException;

    TimeRange[] movieControllerGetBoundsTrackTimeRanges(int i9) throws RemoteException;

    ClipInfoArray[] movieControllerGetClipInfos(int i9) throws RemoteException;

    ClipPlaceHolder[] movieControllerGetClipPlaceHolders(int i9) throws RemoteException;

    LUTPlaceHolder[] movieControllerGetLUTPlaceHolders(int i9) throws RemoteException;

    boolean movieControllerGetMediasTotalDurationLimitationStatus(int i9) throws RemoteException;

    float movieControllerGetOriginVolume(int i9) throws RemoteException;

    TimeRange[] movieControllerGetTextTimeRanges(int i9) throws RemoteException;

    boolean movieControllerHasAudio(int i9) throws RemoteException;

    void movieControllerRegisterClipSourceFactory(int i9, AIDLClipSourceFactory aIDLClipSourceFactory) throws RemoteException;

    void movieControllerReplaceLUTAsset(int i9, String str, LUTAsset lUTAsset) throws RemoteException;

    void movieControllerSetClipAssets(int i9, Bundle bundle, String str, boolean z10) throws RemoteException;

    void movieControllerSetOriginVolume(int i9, float f10) throws RemoteException;

    void movieControllerSetRenderMediaSize(int i9, int i10, int i11) throws RemoteException;

    void movieControllerSetupMediasTotalDurationLimitationStatus(int i9, boolean z10) throws RemoteException;

    boolean nativeBufferIsEglFenceEnabled() throws RemoteException;

    void nativeBufferSetEglFenceEnabled(boolean z10) throws RemoteException;

    String performanceMonitorGetBenchData() throws RemoteException;

    String performanceMonitorGetPerformanceData() throws RemoteException;

    boolean performanceMonitorSavePerformanceData() throws RemoteException;

    void performanceMonitorSetBenchConfig(String str) throws RemoteException;

    void performanceMonitorSetBenchConfigWithThreshold(String str, float f10) throws RemoteException;

    void performanceMonitorSetBenchEnable(boolean z10) throws RemoteException;

    void performanceMonitorSetBenchEnableWithThreshold(boolean z10, float f10) throws RemoteException;

    void performanceMonitorSetPerfEnable(boolean z10, boolean z11, boolean z12, String str) throws RemoteException;

    void performanceMonitorSetPerformanceRunMode(int i9) throws RemoteException;

    void removeSdkInstance(int i9) throws RemoteException;

    boolean ueUtilCheckUE4Ready() throws RemoteException;

    void ueUtilClearUEFaceStr() throws RemoteException;

    void ueUtilCreateUEPlayer(String str) throws RemoteException;

    void ueUtilInitUEInterface(AIDLOnBindServiceListener aIDLOnBindServiceListener) throws RemoteException;

    void ueUtilInitUENativeFunctions() throws RemoteException;

    void ueUtilSetMultiProc(boolean z10) throws RemoteException;

    void ueUtilSetOnUE4InitFinishListener(AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException;

    void ueUtilSetUEFaceStr(String str) throws RemoteException;

    void ueUtilStartUE4(long j10, int i9, int i10, AIDLOnUE4EngineInitFInishListener aIDLOnUE4EngineInitFInishListener) throws RemoteException;

    void ueUtilStopUE4() throws RemoteException;

    ReadSampleResult videoOutputReadSample(int i9, int i10, int i11, long j10, long j11) throws RemoteException;

    void videoOutputRelease(int i9) throws RemoteException;

    int wmElementConstructor(String str, String str2, String str3) throws RemoteException;

    int wmElementDoCheckIn(int i9, String str, String str2) throws RemoteException;

    String wmElementGetInnerValue(int i9) throws RemoteException;

    void wmElementResetCheckIn(int i9) throws RemoteException;

    void wmElementSetDate(int i9, long j10) throws RemoteException;

    void wmElementSetLocation(int i9, String str) throws RemoteException;

    void wmElementSetText(int i9, String str) throws RemoteException;
}
