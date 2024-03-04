package com.unity3d.services.ads.gmascar;

import com.unity3d.scar.adapter.common.GMAAdsError;
import com.unity3d.scar.adapter.common.GMAEvent;
import com.unity3d.scar.adapter.common.IScarAdapter;
import com.unity3d.scar.adapter.common.WebViewAdsError;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.services.ads.gmascar.adapters.ScarAdapterFactory;
import com.unity3d.services.ads.gmascar.bridges.AdapterStatusBridge;
import com.unity3d.services.ads.gmascar.bridges.InitializationStatusBridge;
import com.unity3d.services.ads.gmascar.bridges.InitializeListenerBridge;
import com.unity3d.services.ads.gmascar.bridges.MobileAdsBridge;
import com.unity3d.services.ads.gmascar.finder.GMAInitializer;
import com.unity3d.services.ads.gmascar.finder.PresenceDetector;
import com.unity3d.services.ads.gmascar.finder.ScarVersionFinder;
import com.unity3d.services.ads.gmascar.handlers.ScarInterstitialAdHandler;
import com.unity3d.services.ads.gmascar.handlers.ScarRewardedAdHandler;
import com.unity3d.services.ads.gmascar.handlers.SignalsHandler;
import com.unity3d.services.ads.gmascar.handlers.WebViewErrorHandler;
import com.unity3d.services.ads.gmascar.utils.GMAEventSender;
import com.unity3d.services.core.misc.EventSubject;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.timer.DefaultIntervalTimerFactory;
import java.util.ArrayDeque;
import java.util.Arrays;
/* loaded from: classes4.dex */
public class GMAScarAdapterBridge {
    private GMAEventSender _gmaEventSender;
    private GMAInitializer _gmaInitializer;
    private IScarAdapter _scarAdapter;
    private ScarVersionFinder _scarVersionFinder;
    private final String SCAR_ACTIVITY_CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    private MobileAdsBridge _mobileAdsBridge = new MobileAdsBridge();
    private InitializationStatusBridge _initializationStatusBridge = new InitializationStatusBridge();
    private InitializeListenerBridge _initializationListenerBridge = new InitializeListenerBridge();
    private AdapterStatusBridge _adapterStatusBridge = new AdapterStatusBridge();
    private WebViewErrorHandler _webViewErrorHandler = new WebViewErrorHandler();
    private ScarAdapterFactory _scarAdapterFactory = new ScarAdapterFactory();
    private PresenceDetector _presenceDetector = new PresenceDetector(this._mobileAdsBridge, this._initializationListenerBridge, this._initializationStatusBridge, this._adapterStatusBridge);

    public GMAScarAdapterBridge() {
        GMAInitializer gMAInitializer = new GMAInitializer(this._mobileAdsBridge, this._initializationListenerBridge, this._initializationStatusBridge, this._adapterStatusBridge);
        this._gmaInitializer = gMAInitializer;
        this._scarVersionFinder = new ScarVersionFinder(this._mobileAdsBridge, this._presenceDetector, gMAInitializer);
        this._gmaEventSender = new GMAEventSender();
    }

    private IScarAdapter getScarAdapterObject() {
        if (this._scarAdapter == null) {
            this._scarAdapter = this._scarAdapterFactory.createScarAdapter(this._scarVersionFinder.getGoogleSdkVersionCode(), this._webViewErrorHandler);
        }
        return this._scarAdapter;
    }

    private EventSubject getScarEventSubject(Integer num) {
        return new EventSubject("com.google.android.gms.ads.AdActivity", new ArrayDeque(Arrays.asList(GMAEvent.FIRST_QUARTILE, GMAEvent.MIDPOINT, GMAEvent.THIRD_QUARTILE, GMAEvent.LAST_QUARTILE)), num, new DefaultIntervalTimerFactory());
    }

    private void loadInterstitialAd(ScarAdMetadata scarAdMetadata) {
        this._scarAdapter.loadInterstitialAd(ClientProperties.getApplicationContext(), scarAdMetadata, new ScarInterstitialAdHandler(scarAdMetadata, getScarEventSubject(scarAdMetadata.getVideoLengthMs())));
    }

    private void loadRewardedAd(ScarAdMetadata scarAdMetadata) {
        this._scarAdapter.loadRewardedAd(ClientProperties.getApplicationContext(), scarAdMetadata, new ScarRewardedAdHandler(scarAdMetadata, getScarEventSubject(scarAdMetadata.getVideoLengthMs())));
    }

    public void getSCARSignals(String[] strArr, String[] strArr2) {
        this._scarAdapter = getScarAdapterObject();
        SignalsHandler signalsHandler = new SignalsHandler();
        IScarAdapter iScarAdapter = this._scarAdapter;
        if (iScarAdapter != null) {
            iScarAdapter.getSCARSignals(ClientProperties.getApplicationContext(), strArr, strArr2, signalsHandler);
        } else {
            this._webViewErrorHandler.handleError((WebViewAdsError) GMAAdsError.InternalSignalsError("Could not create SCAR adapter object"));
        }
    }

    public void getVersion() {
        this._scarVersionFinder.getVersion();
    }

    public void initializeScar() {
        if (this._presenceDetector.areGMAClassesPresent()) {
            this._gmaEventSender.send(GMAEvent.SCAR_PRESENT, new Object[0]);
            this._gmaInitializer.initializeGMA();
            return;
        }
        this._webViewErrorHandler.handleError((WebViewAdsError) new GMAAdsError(GMAEvent.SCAR_NOT_PRESENT, new Object[0]));
    }

    public boolean isInitialized() {
        return this._gmaInitializer.isInitialized();
    }

    public void load(boolean z10, String str, String str2, String str3, String str4, int i9) {
        ScarAdMetadata scarAdMetadata = new ScarAdMetadata(str, str2, str4, str3, Integer.valueOf(i9));
        IScarAdapter scarAdapterObject = getScarAdapterObject();
        this._scarAdapter = scarAdapterObject;
        if (scarAdapterObject == null) {
            this._webViewErrorHandler.handleError((WebViewAdsError) GMAAdsError.InternalLoadError(scarAdMetadata, "Scar Adapter object is null"));
        } else if (z10) {
            loadInterstitialAd(scarAdMetadata);
        } else {
            loadRewardedAd(scarAdMetadata);
        }
    }

    public void show(String str, String str2, boolean z10) {
        ScarAdMetadata scarAdMetadata = new ScarAdMetadata(str, str2);
        IScarAdapter scarAdapterObject = getScarAdapterObject();
        this._scarAdapter = scarAdapterObject;
        if (scarAdapterObject != null) {
            scarAdapterObject.show(ClientProperties.getActivity(), str2, str);
        } else {
            this._webViewErrorHandler.handleError((WebViewAdsError) GMAAdsError.InternalShowError(scarAdMetadata, "Scar Adapter object is null"));
        }
    }
}
