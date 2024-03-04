.class public abstract Lorg/light/ILightSDKServiceInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/light/ILightSDKServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/ILightSDKServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/ILightSDKServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.light.ILightSDKServiceInterface"

.field static final TRANSACTION_audioOutputCopyNextSample:I = 0x81

.field static final TRANSACTION_audioOutputCopyNextSampleSyncEnable:I = 0x82

.field static final TRANSACTION_audioOutputRelease:I = 0x83

.field static final TRANSACTION_audioOutputSeekTo:I = 0x80

.field static final TRANSACTION_cameraConfigCameraSwitched:I = 0x45

.field static final TRANSACTION_cameraConfigGetAbnormalFrameDetectResult:I = 0x48

.field static final TRANSACTION_cameraConfigMake:I = 0x40

.field static final TRANSACTION_cameraConfigSensorOrientationChanged:I = 0x44

.field static final TRANSACTION_cameraConfigSetAbnormalFrameDetectFrequency:I = 0x47

.field static final TRANSACTION_cameraConfigSetAutoTestMode:I = 0x46

.field static final TRANSACTION_cameraConfigSetCameraTexture:I = 0x42

.field static final TRANSACTION_cameraConfigSetRawInputForAR:I = 0x43

.field static final TRANSACTION_cameraConfigUpdateCameraTexture:I = 0x41

.field static final TRANSACTION_cameraControllerGetFilamentAssetPosition:I = 0xaf

.field static final TRANSACTION_cameraControllerGetHitTestFilamentAssets:I = 0xae

.field static final TRANSACTION_cameraControllerPause3DAnimation:I = 0xa8

.field static final TRANSACTION_cameraControllerRegister3DAnimation:I = 0xaa

.field static final TRANSACTION_cameraControllerRelease:I = 0xa1

.field static final TRANSACTION_cameraControllerResume3DAnimation:I = 0xa9

.field static final TRANSACTION_cameraControllerRotateArModelToFront:I = 0xac

.field static final TRANSACTION_cameraControllerSetARFrameInfo:I = 0xa6

.field static final TRANSACTION_cameraControllerSetHitTestAfterUnprojection:I = 0xab

.field static final TRANSACTION_cameraControllerSetSegmentationFastMode:I = 0xa7

.field static final TRANSACTION_cameraControllerSetUEFaceStr:I = 0xb0

.field static final TRANSACTION_cameraControllerUpdateTouchEvent:I = 0xa2

.field static final TRANSACTION_cameraControllerUpdateTouchRotate:I = 0xa4

.field static final TRANSACTION_cameraControllerUpdateTouchScale:I = 0xa5

.field static final TRANSACTION_cameraControllerUpdateViewParams:I = 0xad

.field static final TRANSACTION_cameraControllerUpdateVoiceDecibel:I = 0xa3

.field static final TRANSACTION_configAddExternalRenderCallback:I = 0x1c

.field static final TRANSACTION_configCleanFileCacheForKey:I = 0x3a

.field static final TRANSACTION_configClearAICachedData:I = 0x16

.field static final TRANSACTION_configFreeCache:I = 0x39

.field static final TRANSACTION_configGetAIData:I = 0x23

.field static final TRANSACTION_configGetAssetDegradeFlag:I = 0x3d

.field static final TRANSACTION_configGetConfigData:I = 0x20

.field static final TRANSACTION_configGetDisableRendererFlag:I = 0x38

.field static final TRANSACTION_configGetFaceData:I = 0x22

.field static final TRANSACTION_configGetFaceFeature:I = 0x1e

.field static final TRANSACTION_configGetPerformanceData:I = 0x36

.field static final TRANSACTION_configGetPhonePrefLevel:I = 0x3c

.field static final TRANSACTION_configOnPause:I = 0x2d

.field static final TRANSACTION_configOnResume:I = 0x2e

.field static final TRANSACTION_configPerformFinalize:I = 0x3f

.field static final TRANSACTION_configRegisterFont:I = 0x2c

.field static final TRANSACTION_configRemoveExternalRenderCallback:I = 0x1d

.field static final TRANSACTION_configReplaceAIData:I = 0x24

.field static final TRANSACTION_configSetAIDataListener:I = 0x29

.field static final TRANSACTION_configSetAssetDowngradeFlag:I = 0x3e

.field static final TRANSACTION_configSetBGMusicHidden:I = 0x35

.field static final TRANSACTION_configSetConfigData:I = 0x14

.field static final TRANSACTION_configSetDefaultBeautyVersion:I = 0x17

.field static final TRANSACTION_configSetDelegateAgentRequestListener:I = 0x2a

.field static final TRANSACTION_configSetDelegateAgentResult:I = 0x2b

.field static final TRANSACTION_configSetDetectShorterEdgeLength:I = 0x33

.field static final TRANSACTION_configSetDisableRendererFlag:I = 0x37

.field static final TRANSACTION_configSetDowngradeStrategy:I = 0x34

.field static final TRANSACTION_configSetExternalFaceData:I = 0x1f

.field static final TRANSACTION_configSetExternalRenderCallback:I = 0x1b

.field static final TRANSACTION_configSetHorizontalFov:I = 0x21

.field static final TRANSACTION_configSetLightAIModelPath:I = 0x18

.field static final TRANSACTION_configSetLightAIModelPathByAgentInfo:I = 0x19

.field static final TRANSACTION_configSetLightAIModelPathWithLevel:I = 0x1a

.field static final TRANSACTION_configSetLoadAssetListener:I = 0x28

.field static final TRANSACTION_configSetOnClickWatermarkListener:I = 0x25

.field static final TRANSACTION_configSetPreInitAgents:I = 0x3b

.field static final TRANSACTION_configSetPredictNextFrame:I = 0x31

.field static final TRANSACTION_configSetPredictNextTime:I = 0x32

.field static final TRANSACTION_configSetRenderSize:I = 0x15

.field static final TRANSACTION_configSetSyncInitFlag:I = 0x30

.field static final TRANSACTION_configSetSyncMode:I = 0x2f

.field static final TRANSACTION_configSetTipsStatusListener:I = 0x27

.field static final TRANSACTION_configSetWatermarkDataListener:I = 0x26

.field static final TRANSACTION_controllerAddComponent:I = 0x90

.field static final TRANSACTION_controllerAddComponentUpdateMonitor:I = 0x94

.field static final TRANSACTION_controllerAddEntity:I = 0x99

.field static final TRANSACTION_controllerFetchComponent:I = 0x92

.field static final TRANSACTION_controllerGetAssetData:I = 0x8d

.field static final TRANSACTION_controllerGetAudioPlaceHolders:I = 0x85

.field static final TRANSACTION_controllerGetBoundsByKey:I = 0x9e

.field static final TRANSACTION_controllerGetEditableTextUnderPoint:I = 0x89

.field static final TRANSACTION_controllerGetEditableWMItems:I = 0x9d

.field static final TRANSACTION_controllerGetEntitiesUnderPoint:I = 0x8b

.field static final TRANSACTION_controllerGetSoundEffectIDs:I = 0x84

.field static final TRANSACTION_controllerGetTextPlaceHolderByEntityId:I = 0x8a

.field static final TRANSACTION_controllerGetTextPlaceHolders:I = 0x86

.field static final TRANSACTION_controllerGetTimeLines:I = 0x97

.field static final TRANSACTION_controllerHasAudio:I = 0x9b

.field static final TRANSACTION_controllerHasSpecificMakeUpType:I = 0xa0

.field static final TRANSACTION_controllerRemoveComponent:I = 0x91

.field static final TRANSACTION_controllerRemoveComponentUpdateMonitor:I = 0x95

.field static final TRANSACTION_controllerRemoveEntity:I = 0x9a

.field static final TRANSACTION_controllerReplaceAudioAsset:I = 0x8c

.field static final TRANSACTION_controllerResetAsset:I = 0x9c

.field static final TRANSACTION_controllerSetAssetData:I = 0x8e

.field static final TRANSACTION_controllerSetComponentUpdateCallback:I = 0x93

.field static final TRANSACTION_controllerSetExternalAudioProcessor:I = 0x9f

.field static final TRANSACTION_controllerSetMaterialClipAssets:I = 0x88

.field static final TRANSACTION_controllerSetTextAsset:I = 0x87

.field static final TRANSACTION_controllerSetWillReadSampleCallback:I = 0x96

.field static final TRANSACTION_controllerUpdateComponent:I = 0x8f

.field static final TRANSACTION_controllerUpdateResource:I = 0x98

.field static final TRANSACTION_debugUtilsSetImageDebugInfo:I = 0xd8

.field static final TRANSACTION_lightAssetDataContextAddLightAsset:I = 0x76

.field static final TRANSACTION_lightAssetDataContextExportEntityTreeJsonString:I = 0x78

.field static final TRANSACTION_lightAssetDataContextExportInputSourcesJsonString:I = 0x7a

.field static final TRANSACTION_lightAssetDataContextExportLightAsset:I = 0x77

.field static final TRANSACTION_lightAssetDataContextExportPropertiesJsonString:I = 0x7c

.field static final TRANSACTION_lightAssetDataContextMake:I = 0x75

.field static final TRANSACTION_lightAssetDataContextReplaceEntityTreeJsonString:I = 0x79

.field static final TRANSACTION_lightAssetDataContextReplaceInputSourcesJsonString:I = 0x7b

.field static final TRANSACTION_lightAssetDataContextReplacePropertiesJsonString:I = 0x7d

.field static final TRANSACTION_lightAssetForbiddenBasicMakeup:I = 0x65

.field static final TRANSACTION_lightAssetForbiddenBasicNonReshapeBeauty:I = 0x66

.field static final TRANSACTION_lightAssetForbiddenBasicReshape:I = 0x67

.field static final TRANSACTION_lightAssetForbiddenBasicSmooth:I = 0x68

.field static final TRANSACTION_lightAssetGetBgmMusicIDs:I = 0x6c

.field static final TRANSACTION_lightAssetGetBoundsTrackerPlaceHolders:I = 0x6e

.field static final TRANSACTION_lightAssetGetDefaultCameraPosition:I = 0x60

.field static final TRANSACTION_lightAssetGetErrorCode:I = 0x71

.field static final TRANSACTION_lightAssetGetFontAssets:I = 0x6d

.field static final TRANSACTION_lightAssetGetJsonString:I = 0x74

.field static final TRANSACTION_lightAssetGetLUTPlaceHolders:I = 0x5d

.field static final TRANSACTION_lightAssetGetMaterialConfigs:I = 0x70

.field static final TRANSACTION_lightAssetGetMaterialID:I = 0x5c

.field static final TRANSACTION_lightAssetGetMovieConfig:I = 0x6f

.field static final TRANSACTION_lightAssetGetRenderAgentBundleInfos:I = 0x5b

.field static final TRANSACTION_lightAssetGetRenderAgentTypes:I = 0x5a

.field static final TRANSACTION_lightAssetGetSupportCameraPosition:I = 0x61

.field static final TRANSACTION_lightAssetGetVoiceEnvironment:I = 0x5f

.field static final TRANSACTION_lightAssetGetVoiceKind:I = 0x5e

.field static final TRANSACTION_lightAssetHasFactorMakeup:I = 0x69

.field static final TRANSACTION_lightAssetHasLut:I = 0x57

.field static final TRANSACTION_lightAssetHasMakeup:I = 0x64

.field static final TRANSACTION_lightAssetHasMesh:I = 0x63

.field static final TRANSACTION_lightAssetHeight:I = 0x6b

.field static final TRANSACTION_lightAssetLoad:I = 0x56

.field static final TRANSACTION_lightAssetLoadFromString:I = 0x58

.field static final TRANSACTION_lightAssetNeedRenderAbility:I = 0x59

.field static final TRANSACTION_lightAssetNeedResetAssetWhenStartRecord:I = 0x72

.field static final TRANSACTION_lightAssetNeedUE4Environment:I = 0x62

.field static final TRANSACTION_lightAssetPerformFinalize:I = 0x73

.field static final TRANSACTION_lightAssetWidth:I = 0x6a

.field static final TRANSACTION_lightEngineAudioOutput:I = 0x6

.field static final TRANSACTION_lightEngineComponentLevel:I = 0xc

.field static final TRANSACTION_lightEngineGetOriginTexture:I = 0x10

.field static final TRANSACTION_lightEngineGetResultTexture:I = 0xf

.field static final TRANSACTION_lightEngineInit:I = 0xa

.field static final TRANSACTION_lightEngineInitAuth:I = 0x9

.field static final TRANSACTION_lightEngineInitDeviceConfig:I = 0xd

.field static final TRANSACTION_lightEngineIsDeviceAbilitySupported:I = 0xe

.field static final TRANSACTION_lightEngineLoadLibraryForSDKService:I = 0x13

.field static final TRANSACTION_lightEngineMake:I = 0x2

.field static final TRANSACTION_lightEngineRelease:I = 0x11

.field static final TRANSACTION_lightEngineSetAssetForCamera:I = 0x8

.field static final TRANSACTION_lightEngineSetAssetForMovie:I = 0x7

.field static final TRANSACTION_lightEngineSetConfig:I = 0x4

.field static final TRANSACTION_lightEngineSetSurface:I = 0x3

.field static final TRANSACTION_lightEngineSetTemplateAssets:I = 0x12

.field static final TRANSACTION_lightEngineVersion:I = 0xb

.field static final TRANSACTION_lightEngineVideoOutput:I = 0x5

.field static final TRANSACTION_lightLogUtilDestroy:I = 0xd0

.field static final TRANSACTION_lightLogUtilInit:I = 0xcd

.field static final TRANSACTION_lightLogUtilSetLightLogger:I = 0xce

.field static final TRANSACTION_lightLogUtilSetMinPriority:I = 0xcf

.field static final TRANSACTION_lightReportManagerGetShareKey:I = 0xca

.field static final TRANSACTION_lightReportManagerLaunchFromApp:I = 0xcc

.field static final TRANSACTION_lightReportManagerReportOutsideData:I = 0xc9

.field static final TRANSACTION_lightReportManagerSetCommonParamsExternal:I = 0xcb

.field static final TRANSACTION_lightServicePid:I = 0x1

.field static final TRANSACTION_lightSurfaceClearRenderCurrent:I = 0x4e

.field static final TRANSACTION_lightSurfaceFreeCache:I = 0x54

.field static final TRANSACTION_lightSurfaceGetRenderCurrentGLContext:I = 0x53

.field static final TRANSACTION_lightSurfaceMakeFromNativeBuffer:I = 0x4b

.field static final TRANSACTION_lightSurfaceMakeFromSurface:I = 0x4a

.field static final TRANSACTION_lightSurfaceMakeRenderCurrent:I = 0x4d

.field static final TRANSACTION_lightSurfaceRelease:I = 0x55

.field static final TRANSACTION_lightSurfaceUpdateSize:I = 0x4c

.field static final TRANSACTION_movieConfigMake:I = 0x49

.field static final TRANSACTION_movieControllerDuration:I = 0xbd

.field static final TRANSACTION_movieControllerGetBoundsTrackTimeRanges:I = 0xbb

.field static final TRANSACTION_movieControllerGetClipInfos:I = 0xb9

.field static final TRANSACTION_movieControllerGetClipPlaceHolders:I = 0xb2

.field static final TRANSACTION_movieControllerGetLUTPlaceHolders:I = 0xb1

.field static final TRANSACTION_movieControllerGetMediasTotalDurationLimitationStatus:I = 0xb5

.field static final TRANSACTION_movieControllerGetOriginVolume:I = 0xb8

.field static final TRANSACTION_movieControllerGetTextTimeRanges:I = 0xba

.field static final TRANSACTION_movieControllerHasAudio:I = 0xbe

.field static final TRANSACTION_movieControllerRegisterClipSourceFactory:I = 0xbf

.field static final TRANSACTION_movieControllerReplaceLUTAsset:I = 0xbc

.field static final TRANSACTION_movieControllerSetClipAssets:I = 0xb6

.field static final TRANSACTION_movieControllerSetOriginVolume:I = 0xb7

.field static final TRANSACTION_movieControllerSetRenderMediaSize:I = 0xb3

.field static final TRANSACTION_movieControllerSetupMediasTotalDurationLimitationStatus:I = 0xb4

.field static final TRANSACTION_nativeBufferIsEglFenceEnabled:I = 0xe0

.field static final TRANSACTION_nativeBufferSetEglFenceEnabled:I = 0xe1

.field static final TRANSACTION_performanceMonitorGetBenchData:I = 0xc4

.field static final TRANSACTION_performanceMonitorGetPerformanceData:I = 0xc6

.field static final TRANSACTION_performanceMonitorSavePerformanceData:I = 0xc5

.field static final TRANSACTION_performanceMonitorSetBenchConfig:I = 0xc0

.field static final TRANSACTION_performanceMonitorSetBenchConfigWithThreshold:I = 0xc1

.field static final TRANSACTION_performanceMonitorSetBenchEnable:I = 0xc2

.field static final TRANSACTION_performanceMonitorSetBenchEnableWithThreshold:I = 0xc3

.field static final TRANSACTION_performanceMonitorSetPerfEnable:I = 0xc8

.field static final TRANSACTION_performanceMonitorSetPerformanceRunMode:I = 0xc7

.field static final TRANSACTION_removeSdkInstance:I = 0xd9

.field static final TRANSACTION_ueUtilCheckUE4Ready:I = 0x52

.field static final TRANSACTION_ueUtilClearUEFaceStr:I = 0xda

.field static final TRANSACTION_ueUtilCreateUEPlayer:I = 0xdc

.field static final TRANSACTION_ueUtilInitUEInterface:I = 0xde

.field static final TRANSACTION_ueUtilInitUENativeFunctions:I = 0xdd

.field static final TRANSACTION_ueUtilSetMultiProc:I = 0xdf

.field static final TRANSACTION_ueUtilSetOnUE4InitFinishListener:I = 0x51

.field static final TRANSACTION_ueUtilSetUEFaceStr:I = 0xdb

.field static final TRANSACTION_ueUtilStartUE4:I = 0x4f

.field static final TRANSACTION_ueUtilStopUE4:I = 0x50

.field static final TRANSACTION_videoOutputReadSample:I = 0x7e

.field static final TRANSACTION_videoOutputRelease:I = 0x7f

.field static final TRANSACTION_wmElementConstructor:I = 0xd1

.field static final TRANSACTION_wmElementDoCheckIn:I = 0xd2

.field static final TRANSACTION_wmElementGetInnerValue:I = 0xd6

.field static final TRANSACTION_wmElementResetCheckIn:I = 0xd7

.field static final TRANSACTION_wmElementSetDate:I = 0xd5

.field static final TRANSACTION_wmElementSetLocation:I = 0xd4

.field static final TRANSACTION_wmElementSetText:I = 0xd3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.light.ILightSDKServiceInterface"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/light/ILightSDKServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.light.ILightSDKServiceInterface"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lorg/light/ILightSDKServiceInterface;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lorg/light/ILightSDKServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/light/ILightSDKServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v10, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    const v2, 0x5f4e5446

    const/4 v12, 0x1

    const-string v3, "org.light.ILightSDKServiceInterface"

    if-eq v0, v2, :cond_4c

    const/4 v2, 0x0

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .line 4
    :cond_0
    invoke-interface {p0, v8}, Lorg/light/ILightSDKServiceInterface;->nativeBufferSetEglFenceEnabled(Z)V

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 6
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->nativeBufferIsEglFenceEnabled()Z

    move-result v0

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 10
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 12
    :cond_1
    invoke-interface {p0, v8}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetMultiProc(Z)V

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 14
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/light/listener/AIDLOnBindServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnBindServiceListener;

    move-result-object v0

    .line 16
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilInitUEInterface(Lorg/light/listener/AIDLOnBindServiceListener;)V

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 18
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilInitUENativeFunctions()V

    .line 20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 21
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilCreateUEPlayer(Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 25
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetUEFaceStr(Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 29
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilClearUEFaceStr()V

    .line 31
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 32
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 34
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->removeSdkInstance(I)V

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 36
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 40
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    .line 41
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 42
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    .line 43
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v8, 0x1

    :cond_7
    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 44
    invoke-interface/range {v0 .. v7}, Lorg/light/ILightSDKServiceInterface;->debugUtilsSetImageDebugInfo(ZLjava/lang/String;ZZZZZ)V

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 46
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->wmElementResetCheckIn(I)V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 50
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->wmElementGetInnerValue(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 55
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 58
    invoke-interface {p0, v0, v1, v2}, Lorg/light/ILightSDKServiceInterface;->wmElementSetDate(IJ)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 60
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementSetLocation(ILjava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 65
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementSetText(ILjava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 70
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementDoCheckIn(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 77
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->wmElementConstructor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 84
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilDestroy()V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 87
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilSetMinPriority(I)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 91
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/light/listener/AIDLILightLogger$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLILightLogger;

    move-result-object v0

    .line 93
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilSetLightLogger(Lorg/light/listener/AIDLILightLogger;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 95
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightLogUtilInit()V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 98
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightReportManagerLaunchFromApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 103
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 106
    :cond_8
    invoke-interface {p0, v2}, Lorg/light/ILightSDKServiceInterface;->lightReportManagerSetCommonParamsExternal(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 108
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightReportManagerGetShareKey()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 112
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 115
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    .line 116
    :cond_9
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->lightReportManagerReportOutsideData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 118
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 120
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 121
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v8, 0x1

    .line 122
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {p0, v0, v2, v8, v1}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetPerfEnable(ZZZLjava/lang/String;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 125
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetPerformanceRunMode(I)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 129
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorGetPerformanceData()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 133
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSavePerformanceData()Z

    move-result v0

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 137
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorGetBenchData()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 141
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v8, 0x1

    .line 143
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 144
    invoke-interface {p0, v8, v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchEnableWithThreshold(ZF)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 146
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 148
    :cond_e
    invoke-interface {p0, v8}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchEnable(Z)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 150
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 153
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchConfigWithThreshold(Ljava/lang/String;F)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 155
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchConfig(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 159
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/AIDLClipSourceFactory$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/AIDLClipSourceFactory;

    move-result-object v1

    .line 162
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerRegisterClipSourceFactory(ILorg/light/AIDLClipSourceFactory;)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 164
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerHasAudio(I)Z

    move-result v0

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 169
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerDuration(I)J

    move-result-wide v0

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    .line 174
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 178
    sget-object v2, Lorg/light/LUTAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/LUTAsset;

    .line 179
    :cond_f
    invoke-interface {p0, v0, v3, v2}, Lorg/light/ILightSDKServiceInterface;->movieControllerReplaceLUTAsset(ILjava/lang/String;Lorg/light/LUTAsset;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 181
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetBoundsTrackTimeRanges(I)[Lorg/light/TimeRange;

    move-result-object v0

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 186
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetTextTimeRanges(I)[Lorg/light/TimeRange;

    move-result-object v0

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 191
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetClipInfos(I)[Lorg/light/ClipInfoArray;

    move-result-object v0

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 196
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetOriginVolume(I)F

    move-result v0

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return v12

    .line 201
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 204
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetOriginVolume(IF)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 206
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 209
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 210
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v8, 0x1

    .line 212
    :cond_11
    invoke-interface {p0, v0, v2, v3, v8}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetClipAssets(ILandroid/os/Bundle;Ljava/lang/String;Z)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 214
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetMediasTotalDurationLimitationStatus(I)Z

    move-result v0

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 219
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v8, 0x1

    .line 222
    :cond_12
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetupMediasTotalDurationLimitationStatus(IZ)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 224
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->movieControllerSetRenderMediaSize(III)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 230
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetClipPlaceHolders(I)[Lorg/light/ClipPlaceHolder;

    move-result-object v0

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 235
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->movieControllerGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;

    move-result-object v0

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 240
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetUEFaceStr(ILjava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 245
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLFilaPositionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLFilaPositionCallback;

    move-result-object v1

    .line 248
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerGetFilamentAssetPosition(ILorg/light/listener/AIDLFilaPositionCallback;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 250
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLHitTestFilaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLHitTestFilaCallback;

    move-result-object v1

    .line 254
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerGetHitTestFilamentAssets(I[FLorg/light/listener/AIDLHitTestFilaCallback;)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 256
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 261
    invoke-interface {p0, v0, v2, v3, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateViewParams(I[F[FF)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 263
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRotateArModelToFront(II)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 268
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 271
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetHitTestAfterUnprojection(I[F)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 273
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 276
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRegister3DAnimation(ILjava/util/List;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 278
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->cameraControllerResume3DAnimation(I)V

    .line 281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 282
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->cameraControllerPause3DAnimation(I)V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 286
    :pswitch_3a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v8, 0x1

    .line 289
    :cond_13
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetSegmentationFastMode(IZ)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 291
    :pswitch_3b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 294
    sget-object v2, Lorg/light/bean/ArFrameInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/bean/ArFrameInfo;

    .line 295
    :cond_14
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetARFrameInfo(ILorg/light/bean/ArFrameInfo;)V

    .line 296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 297
    :pswitch_3c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 300
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchScale(IF)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 302
    :pswitch_3d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 305
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchRotate(I[F)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 307
    :pswitch_3e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 310
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateVoiceDecibel(IF)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 312
    :pswitch_3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 317
    sget-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move v9, v13

    .line 320
    invoke-interface/range {v0 .. v9}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchEvent(IIJJLjava/util/List;II)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 322
    :pswitch_40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 324
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRelease(I)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 326
    :pswitch_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerHasSpecificMakeUpType(II)Z

    move-result v0

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 332
    :pswitch_42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 335
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    .line 336
    :cond_15
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->controllerSetExternalAudioProcessor(ILandroid/os/Bundle;)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 338
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerGetBoundsByKey(ILjava/lang/String;)Landroid/graphics/RectF;

    move-result-object v0

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_16

    .line 343
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {v0, v11, v12}, Landroid/graphics/RectF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 345
    :cond_16
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v12

    .line 346
    :pswitch_44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetEditableWMItems(I)[Lorg/light/bean/WMElement;

    move-result-object v0

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 351
    :pswitch_45
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerResetAsset(I)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 355
    :pswitch_46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerHasAudio(I)Z

    move-result v0

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 360
    :pswitch_47
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerRemoveEntity(II)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 365
    :pswitch_48
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-interface {p0, v0, v2, v3, v1}, Lorg/light/ILightSDKServiceInterface;->controllerAddEntity(IIILjava/lang/String;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 372
    :pswitch_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerUpdateResource(ILjava/lang/String;)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 377
    :pswitch_4a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetTimeLines(I)[Lorg/light/TimeLine;

    move-result-object v0

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 382
    :pswitch_4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/callback/AIDLWillReadSampleCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/callback/AIDLWillReadSampleCallback;

    move-result-object v1

    .line 385
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerSetWillReadSampleCallback(ILorg/light/callback/AIDLWillReadSampleCallback;)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 387
    :pswitch_4c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerRemoveComponentUpdateMonitor(II)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 392
    :pswitch_4d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 395
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerAddComponentUpdateMonitor(II)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 397
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/callback/AIDLComponentUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/callback/AIDLComponentUpdateCallback;

    move-result-object v1

    .line 400
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerSetComponentUpdateCallback(ILorg/light/callback/AIDLComponentUpdateCallback;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 402
    :pswitch_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 405
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerFetchComponent(II)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 408
    :pswitch_50
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerRemoveComponent(IILjava/lang/String;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 414
    :pswitch_51
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerAddComponent(IILjava/lang/String;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 420
    :pswitch_52
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerUpdateComponent(IILjava/lang/String;)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 426
    :pswitch_53
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 429
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    .line 430
    :cond_17
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->controllerSetAssetData(ILandroid/os/Bundle;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 432
    :pswitch_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 434
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetAssetData(I)Landroid/os/Bundle;

    move-result-object v0

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_18

    .line 436
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 438
    :cond_18
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v12

    .line 439
    :pswitch_55
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 443
    sget-object v2, Lorg/light/AudioAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/AudioAsset;

    .line 444
    :cond_19
    invoke-interface {p0, v0, v3, v2}, Lorg/light/ILightSDKServiceInterface;->controllerReplaceAudioAsset(ILjava/lang/String;Lorg/light/AudioAsset;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 446
    :pswitch_56
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 450
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerGetEntitiesUnderPoint(IFF)[I

    move-result-object v0

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v12

    .line 453
    :pswitch_57
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->controllerGetTextPlaceHolderByEntityId(II)[Lorg/light/TextPlaceHolder;

    move-result-object v0

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 459
    :pswitch_58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 463
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerGetEditableTextUnderPoint(IFF)Lorg/light/TextPlaceHolder;

    move-result-object v0

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1a

    .line 465
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    invoke-virtual {v0, v11, v12}, Lorg/light/TextPlaceHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 467
    :cond_1a
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v12

    .line 468
    :pswitch_59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 472
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 473
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/AIDLFaceDetectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/AIDLFaceDetectCallback;

    move-result-object v1

    .line 474
    invoke-interface {p0, v0, v3, v2, v1}, Lorg/light/ILightSDKServiceInterface;->controllerSetMaterialClipAssets(ILjava/lang/String;Landroid/os/Bundle;Lorg/light/AIDLFaceDetectCallback;)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 476
    :pswitch_5a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 480
    sget-object v2, Lorg/light/TextAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/TextAsset;

    .line 481
    :cond_1c
    invoke-interface {p0, v0, v3, v2}, Lorg/light/ILightSDKServiceInterface;->controllerSetTextAsset(ILjava/lang/String;Lorg/light/TextAsset;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 483
    :pswitch_5b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 485
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetTextPlaceHolders(I)[Lorg/light/TextPlaceHolder;

    move-result-object v0

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 488
    :pswitch_5c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetAudioPlaceHolders(I)[Lorg/light/AudioPlaceHolder;

    move-result-object v0

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 493
    :pswitch_5d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->controllerGetSoundEffectIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    .line 498
    :pswitch_5e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->audioOutputRelease(I)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 502
    :pswitch_5f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_a

    :cond_1d
    const/4 v1, 0x0

    .line 505
    :goto_a
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->audioOutputCopyNextSampleSyncEnable(IZ)Lorg/light/AudioFrame;

    move-result-object v0

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1e

    .line 507
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {v0, v11, v12}, Lorg/light/AudioFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 509
    :cond_1e
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v12

    .line 510
    :pswitch_60
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->audioOutputCopyNextSample(I)Lorg/light/AudioFrame;

    move-result-object v0

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1f

    .line 514
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    invoke-virtual {v0, v11, v12}, Lorg/light/AudioFrame;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 516
    :cond_1f
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    return v12

    .line 517
    :pswitch_61
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 520
    invoke-interface {p0, v0, v1, v2}, Lorg/light/ILightSDKServiceInterface;->audioOutputSeekTo(IJ)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 522
    :pswitch_62
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->videoOutputRelease(I)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 526
    :pswitch_63
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v13

    .line 532
    invoke-interface/range {v0 .. v7}, Lorg/light/ILightSDKServiceInterface;->videoOutputReadSample(IIIJJ)Lorg/light/bean/ReadSampleResult;

    move-result-object v0

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_20

    .line 534
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {v0, v11, v12}, Lorg/light/bean/ReadSampleResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    .line 536
    :cond_20
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    return v12

    .line 537
    :pswitch_64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplacePropertiesJsonString(ILjava/lang/String;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 542
    :pswitch_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 544
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportPropertiesJsonString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 547
    :pswitch_66
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplaceInputSourcesJsonString(ILjava/lang/String;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 552
    :pswitch_67
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 554
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportInputSourcesJsonString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 557
    :pswitch_68
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplaceEntityTreeJsonString(ILjava/lang/String;)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 562
    :pswitch_69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportEntityTreeJsonString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 567
    :pswitch_6a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportLightAsset(I)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_21

    .line 571
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 573
    :cond_21
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return v12

    .line 574
    :pswitch_6b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextAddLightAsset(III)Z

    move-result v0

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 581
    :pswitch_6c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextMake(II)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_22

    .line 586
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    .line 588
    :cond_22
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v12

    .line 589
    :pswitch_6d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 591
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetJsonString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 594
    :pswitch_6e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetPerformFinalize(I)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 598
    :pswitch_6f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 600
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetNeedResetAssetWhenStartRecord(I)Z

    move-result v0

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 603
    :pswitch_70
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 605
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetErrorCode(I)I

    move-result v0

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 608
    :pswitch_71
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 610
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetMaterialConfigs(I)[Lorg/light/MaterialConfig;

    move-result-object v0

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 613
    :pswitch_72
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 615
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetMovieConfig(I)Lorg/light/TemplateConfig;

    move-result-object v0

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_23

    .line 617
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-virtual {v0, v11, v12}, Lorg/light/TemplateConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    .line 619
    :cond_23
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v12

    .line 620
    :pswitch_73
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 622
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetBoundsTrackerPlaceHolders(I)[Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    .line 625
    :pswitch_74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetFontAssets(I)[Lorg/light/FontAsset;

    move-result-object v0

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 630
    :pswitch_75
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 632
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetBgmMusicIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    .line 635
    :pswitch_76
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetHeight(I)I

    move-result v0

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 640
    :pswitch_77
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 642
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetWidth(I)I

    move-result v0

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 645
    :pswitch_78
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 647
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetHasFactorMakeup(I)Z

    move-result v0

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 650
    :pswitch_79
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 652
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetForbiddenBasicSmooth(I)Z

    move-result v0

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 655
    :pswitch_7a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 657
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetForbiddenBasicReshape(I)Z

    move-result v0

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 660
    :pswitch_7b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetForbiddenBasicNonReshapeBeauty(I)Z

    move-result v0

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 665
    :pswitch_7c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 667
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetForbiddenBasicMakeup(I)Z

    move-result v0

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 670
    :pswitch_7d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 672
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetHasMakeup(I)Z

    move-result v0

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 675
    :pswitch_7e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetHasMesh(I)Z

    move-result v0

    .line 678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 680
    :pswitch_7f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 682
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetNeedUE4Environment(I)Z

    move-result v0

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 685
    :pswitch_80
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetSupportCameraPosition(I)I

    move-result v0

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 690
    :pswitch_81
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 692
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetDefaultCameraPosition(I)I

    move-result v0

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 695
    :pswitch_82
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 697
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetVoiceEnvironment(I)I

    move-result v0

    .line 698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 700
    :pswitch_83
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 702
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetVoiceKind(I)I

    move-result v0

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 705
    :pswitch_84
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 707
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetLUTPlaceHolders(I)[Lorg/light/LUTPlaceHolder;

    move-result-object v0

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 710
    :pswitch_85
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetMaterialID(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 715
    :pswitch_86
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 717
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetRenderAgentBundleInfos(I)[Lorg/light/bean/LightAgentBundleInfo;

    move-result-object v0

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v11, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v12

    .line 720
    :pswitch_87
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 722
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetGetRenderAgentTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v12

    .line 725
    :pswitch_88
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetNeedRenderAbility(ILjava/lang/String;)Z

    move-result v0

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 731
    :pswitch_89
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 735
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetLoadFromString(Ljava/lang/String;Ljava/lang/String;I)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_24

    .line 737
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    .line 739
    :cond_24
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v12

    .line 740
    :pswitch_8a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 742
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightAssetHasLut(I)Z

    move-result v0

    .line 743
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 745
    :pswitch_8b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 748
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetLoad(Ljava/lang/String;I)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_25

    .line 750
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 752
    :cond_25
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    return v12

    .line 753
    :pswitch_8c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceRelease(I)V

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 757
    :pswitch_8d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 759
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceFreeCache(I)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 761
    :pswitch_8e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 763
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceGetRenderCurrentGLContext(I)J

    move-result-wide v0

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    .line 766
    :pswitch_8f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilCheckUE4Ready()Z

    move-result v0

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 770
    :pswitch_90
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/light/listener/AIDLOnUE4EngineInitFInishListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    move-result-object v0

    .line 772
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->ueUtilSetOnUE4InitFinishListener(Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 774
    :pswitch_91
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->ueUtilStopUE4()V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 777
    :pswitch_92
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/light/listener/AIDLOnUE4EngineInitFInishListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnUE4EngineInitFInishListener;

    move-result-object v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 782
    invoke-interface/range {v0 .. v5}, Lorg/light/ILightSDKServiceInterface;->ueUtilStartUE4(JIILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 784
    :pswitch_93
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 786
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceClearRenderCurrent(I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 788
    :pswitch_94
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 790
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeRenderCurrent(I)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 792
    :pswitch_95
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    .line 795
    sget-object v2, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 796
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 798
    invoke-interface {p0, v0, v2, v3, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceUpdateSize(ILandroid/hardware/HardwareBuffer;II)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 800
    :pswitch_96
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27

    .line 802
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/HardwareBuffer;

    .line 803
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_13

    :cond_28
    const/4 v1, 0x0

    .line 806
    :goto_13
    invoke-interface {p0, v2, v0, v3, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeFromNativeBuffer(Landroid/hardware/HardwareBuffer;IIZ)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_29

    .line 808
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_14

    .line 810
    :cond_29
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_14
    return v12

    .line 811
    :pswitch_97
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 813
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/Surface;

    .line 814
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_15

    :cond_2b
    const/4 v0, 0x0

    .line 815
    :goto_15
    invoke-interface {p0, v2, v0}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeFromSurface(Landroid/view/Surface;Z)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c

    .line 817
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_16

    .line 819
    :cond_2c
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    return v12

    .line 820
    :pswitch_98
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->movieConfigMake()Lorg/light/service/InstanceId;

    move-result-object v0

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2d

    .line 823
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 825
    :cond_2d
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_17
    return v12

    .line 826
    :pswitch_99
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->cameraConfigGetAbnormalFrameDetectResult(I)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 831
    :pswitch_9a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 834
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetAbnormalFrameDetectFrequency(II)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 836
    :pswitch_9b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v8, 0x1

    .line 839
    :cond_2e
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetAutoTestMode(IZ)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 841
    :pswitch_9c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 844
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigCameraSwitched(II)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 846
    :pswitch_9d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 849
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSensorOrientationChanged(II)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 851
    :pswitch_9e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    .line 857
    invoke-interface/range {v0 .. v6}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetRawInputForAR(I[BIIJ)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 859
    :pswitch_9f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 865
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    move-object v7, v0

    goto :goto_18

    :cond_2f
    move-object v7, v2

    :goto_18
    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 866
    invoke-interface/range {v0 .. v5}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetCameraTexture(IIIILandroid/os/ParcelFileDescriptor;)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 868
    :pswitch_a0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30

    .line 872
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    move-object v5, v0

    goto :goto_19

    :cond_30
    move-object v5, v2

    .line 873
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    move v1, v3

    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    .line 876
    invoke-interface/range {v0 .. v6}, Lorg/light/ILightSDKServiceInterface;->cameraConfigUpdateCameraTexture(IILandroid/hardware/HardwareBuffer;III)V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 878
    :pswitch_a1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->cameraConfigMake()Lorg/light/service/InstanceId;

    move-result-object v0

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_31

    .line 881
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 883
    :cond_31
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1a
    return v12

    .line 884
    :pswitch_a2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 886
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configPerformFinalize(I)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 888
    :pswitch_a3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v8, 0x1

    .line 890
    :cond_32
    invoke-interface {p0, v8}, Lorg/light/ILightSDKServiceInterface;->configSetAssetDowngradeFlag(Z)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 892
    :pswitch_a4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->configGetAssetDegradeFlag()Z

    move-result v0

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 896
    :pswitch_a5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->configGetPhonePrefLevel()I

    move-result v0

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 900
    :pswitch_a6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetPreInitAgents(I[Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 905
    :pswitch_a7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 908
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configCleanFileCacheForKey(ILjava/lang/String;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 910
    :pswitch_a8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 912
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configFreeCache(I)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 914
    :pswitch_a9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 916
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configGetDisableRendererFlag(I)Z

    move-result v0

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 919
    :pswitch_aa
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_33

    const/4 v8, 0x1

    .line 922
    :cond_33
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->configSetDisableRendererFlag(IZ)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 924
    :pswitch_ab
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 926
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configGetPerformanceData(I)Lorg/light/PerformanceData;

    move-result-object v0

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_34

    .line 928
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    invoke-virtual {v0, v11, v12}, Lorg/light/PerformanceData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 930
    :cond_34
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    return v12

    .line 931
    :pswitch_ac
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_35

    const/4 v8, 0x1

    .line 934
    :cond_35
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->configSetBGMusicHidden(IZ)V

    .line 935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 936
    :pswitch_ad
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 940
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configSetDowngradeStrategy(ILjava/lang/String;I)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 942
    :pswitch_ae
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configSetDetectShorterEdgeLength(IILjava/lang/String;)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 948
    :pswitch_af
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 951
    invoke-interface {p0, v0, v1, v2}, Lorg/light/ILightSDKServiceInterface;->configSetPredictNextTime(IJ)V

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 953
    :pswitch_b0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_36

    const/4 v8, 0x1

    .line 956
    :cond_36
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->configSetPredictNextFrame(IZ)V

    .line 957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 958
    :pswitch_b1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_37

    const/4 v8, 0x1

    .line 961
    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-interface {p0, v0, v8, v1}, Lorg/light/ILightSDKServiceInterface;->configSetSyncInitFlag(IZLjava/lang/String;)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 964
    :pswitch_b2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    const/4 v8, 0x1

    .line 967
    :cond_38
    invoke-interface {p0, v0, v8}, Lorg/light/ILightSDKServiceInterface;->configSetSyncMode(IZ)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 969
    :pswitch_b3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 971
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configOnResume(I)V

    .line 972
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 973
    :pswitch_b4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 975
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configOnPause(I)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 977
    :pswitch_b5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 979
    sget-object v0, Lorg/light/FontAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/light/FontAsset;

    .line 980
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-interface {p0, v2, v0}, Lorg/light/ILightSDKServiceInterface;->configRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 983
    :pswitch_b6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3a

    .line 986
    sget-object v2, Lorg/light/bean/LightDelegateAgentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/bean/LightDelegateAgentRequest;

    .line 987
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v8, 0x1

    .line 988
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-interface {p0, v0, v2, v8, v1}, Lorg/light/ILightSDKServiceInterface;->configSetDelegateAgentResult(ILorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 991
    :pswitch_b7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnDelegateAgentRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnDelegateAgentRequestListener;

    move-result-object v1

    .line 994
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetDelegateAgentRequestListener(ILorg/light/listener/AIDLOnDelegateAgentRequestListener;)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 996
    :pswitch_b8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnAIDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnAIDataListener;

    move-result-object v1

    .line 999
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetAIDataListener(ILorg/light/listener/AIDLOnAIDataListener;)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1001
    :pswitch_b9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnLoadAssetListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnLoadAssetListener;

    move-result-object v1

    .line 1004
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetLoadAssetListener(ILorg/light/listener/AIDLOnLoadAssetListener;)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1006
    :pswitch_ba
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnTipsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnTipsStatusListener;

    move-result-object v1

    .line 1009
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetTipsStatusListener(ILorg/light/listener/AIDLOnTipsStatusListener;)V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1011
    :pswitch_bb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnWatermarkDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnWatermarkDataListener;

    move-result-object v1

    .line 1015
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configSetWatermarkDataListener(ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1017
    :pswitch_bc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/listener/AIDLOnClickWatermarkListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/listener/AIDLOnClickWatermarkListener;

    move-result-object v1

    .line 1020
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetOnClickWatermarkListener(ILorg/light/listener/AIDLOnClickWatermarkListener;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1022
    :pswitch_bd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 1025
    sget-object v2, Lorg/light/bean/LightAIDataWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/bean/LightAIDataWrapper;

    .line 1026
    :cond_3c
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->configReplaceAIData(ILorg/light/bean/LightAIDataWrapper;)V

    .line 1027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1028
    :pswitch_be
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1032
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configGetAIData(I[Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;

    move-result-object v0

    .line 1033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3d

    .line 1034
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    invoke-virtual {v0, v11, v12}, Lorg/light/bean/LightAIDataWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 1036
    :cond_3d
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    return v12

    .line 1037
    :pswitch_bf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1039
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configGetFaceData(I)Lorg/light/bean/LightFaceData;

    move-result-object v0

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3e

    .line 1041
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    invoke-virtual {v0, v11, v12}, Lorg/light/bean/LightFaceData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 1043
    :cond_3e
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v12

    .line 1044
    :pswitch_c0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1047
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetHorizontalFov(IF)V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1049
    :pswitch_c1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1051
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configGetConfigData(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1052
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3f

    .line 1053
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1054
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1055
    :cond_3f
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    return v12

    .line 1056
    :pswitch_c2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    .line 1059
    sget-object v2, Lorg/light/bean/LightFaceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/bean/LightFaceData;

    .line 1060
    :cond_40
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->configSetExternalFaceData(ILorg/light/bean/LightFaceData;)V

    .line 1061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1062
    :pswitch_c3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1064
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configGetFaceFeature(I)Ljava/util/List;

    move-result-object v0

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v12

    .line 1067
    :pswitch_c4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configRemoveExternalRenderCallback(ILjava/lang/String;)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1072
    :pswitch_c5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/callback/AIDLExternalRenderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/callback/AIDLExternalRenderCallback;

    move-result-object v1

    .line 1076
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configAddExternalRenderCallback(ILjava/lang/String;Lorg/light/callback/AIDLExternalRenderCallback;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1078
    :pswitch_c6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/light/callback/AIDLExternalRenderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/light/callback/AIDLExternalRenderCallback;

    move-result-object v1

    .line 1081
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetExternalRenderCallback(ILorg/light/callback/AIDLExternalRenderCallback;)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1083
    :pswitch_c7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-interface {p0, v0, v2, v3, v1}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPathWithLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1090
    :pswitch_c8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_41

    .line 1094
    sget-object v2, Lorg/light/bean/LightAgentBundleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/bean/LightAgentBundleInfo;

    .line 1095
    :cond_41
    invoke-interface {p0, v0, v3, v2}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPathByAgentInfo(ILjava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1097
    :pswitch_c9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPath(ILjava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1103
    :pswitch_ca
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->configSetDefaultBeautyVersion(ILjava/lang/String;)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1108
    :pswitch_cb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1110
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->configClearAICachedData(I)V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1112
    :pswitch_cc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1116
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->configSetRenderSize(III)V

    .line 1117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1118
    :pswitch_cd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 1121
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    .line 1122
    :cond_42
    invoke-interface {p0, v0, v2}, Lorg/light/ILightSDKServiceInterface;->configSetConfigData(ILandroid/os/Bundle;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1124
    :pswitch_ce
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_43

    .line 1126
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    .line 1127
    :cond_43
    invoke-interface {p0, v2}, Lorg/light/ILightSDKServiceInterface;->lightEngineLoadLibraryForSDKService(Landroid/os/Bundle;)Z

    move-result v0

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1130
    :pswitch_cf
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1132
    sget-object v2, Lorg/light/TemplateClip;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/light/TemplateClip;

    .line 1133
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetTemplateAssets(I[Lorg/light/TemplateClip;)[I

    move-result-object v0

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v12

    .line 1136
    :pswitch_d0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1138
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineRelease(I)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1140
    :pswitch_d1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1142
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineGetOriginTexture(I)I

    move-result v0

    .line 1143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1145
    :pswitch_d2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1147
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineGetResultTexture(I)I

    move-result v0

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1150
    :pswitch_d3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineIsDeviceAbilitySupported(Ljava/lang/String;)Z

    move-result v0

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1155
    :pswitch_d4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineInitDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1160
    :pswitch_d5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightEngineComponentLevel()I

    move-result v0

    .line 1162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1164
    :pswitch_d6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightEngineVersion()Ljava/lang/String;

    move-result-object v0

    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 1168
    :pswitch_d7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightEngineInit()V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1171
    :pswitch_d8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-interface {p0, v0, v2, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineInitAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1178
    :pswitch_d9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetAssetForCamera(II)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_44

    .line 1183
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    .line 1185
    :cond_44
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f
    return v12

    .line 1186
    :pswitch_da
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1189
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetAssetForMovie(II)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_45

    .line 1191
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 1193
    :cond_45
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    return v12

    .line 1194
    :pswitch_db
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineAudioOutput(I)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_46

    .line 1198
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 1200
    :cond_46
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_21
    return v12

    .line 1201
    :pswitch_dc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1203
    invoke-interface {p0, v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineVideoOutput(I)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_47

    .line 1205
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 1207
    :cond_47
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    return v12

    .line 1208
    :pswitch_dd
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1211
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetConfig(II)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    .line 1213
    :pswitch_de
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    invoke-interface {p0, v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetSurface(II)Z

    move-result v0

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1219
    :pswitch_df
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    .line 1221
    sget-object v0, Lorg/light/VideoOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/VideoOutputConfig;

    goto :goto_23

    :cond_48
    move-object v0, v2

    .line 1222
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_49

    .line 1223
    sget-object v3, Lorg/light/AudioOutputConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/AudioOutputConfig;

    goto :goto_24

    :cond_49
    move-object v3, v2

    .line 1224
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    .line 1225
    sget-object v2, Lorg/light/RendererConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/light/RendererConfig;

    .line 1226
    :cond_4a
    invoke-interface {p0, v0, v3, v2}, Lorg/light/ILightSDKServiceInterface;->lightEngineMake(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/service/InstanceId;

    move-result-object v0

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4b

    .line 1228
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    invoke-virtual {v0, v11, v12}, Lorg/light/service/InstanceId;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    .line 1230
    :cond_4b
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeInt(I)V

    :goto_25
    return v12

    .line 1231
    :pswitch_e0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightServicePid()I

    move-result v0

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    .line 1235
    :cond_4c
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
