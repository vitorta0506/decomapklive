package com.guochao.faceshow.aaspring.utils.location;

import android.app.Activity;
import android.app.Dialog;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.location.LocationManager;
import android.os.Build;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.modulars.trtc.receive.FaceCastCallService;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.views.d;
import com.guochao.faceshow.views.e;
import eb.b;
import ka.a;
/* loaded from: classes3.dex */
public class LocationService extends Service {
    private Notification createNotification() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
        builder.setContentTitle(b.y());
        builder.setContentText(getString(R.string.fc_locationing));
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setLargeIcon(BitmapFactory.decodeResource(getResources(), R.mipmap.ic_launcher));
        Intent intent = new Intent(this, BaseApplication.getInstance().getCurrTopActivity() == null ? MainActivity.class : BaseApplication.getInstance().getCurrTopActivity().getClass());
        intent.addFlags(809500672);
        builder.setContentIntent(PendingIntent.getActivity(this, 100, intent, DensityUtil.getNotificationFlag()));
        return builder.build();
    }

    public static boolean hasGps(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network");
    }

    public static void openGps(final Activity activity) {
        new e(activity, new e.a() { // from class: com.guochao.faceshow.aaspring.utils.location.LocationService.2
            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                Activity activity2;
                dialog.dismiss();
                if (!z10 || (activity2 = activity) == null || activity2.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                Intent intent = new Intent();
                intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
                intent.setFlags(268435456);
                try {
                    activity.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    intent.setAction("android.settings.SETTINGS");
                    try {
                        activity.startActivity(intent);
                    } catch (Exception unused2) {
                    }
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* bridge */ /* synthetic */ void onCreate(e eVar) {
                d.a(this, eVar);
            }
        }).f(activity.getString(R.string.ugc_can_not_receive_location)).k(activity.getString(R.string.ugc_go_open)).show();
    }

    private static void realRequest(Activity activity, LocationConfig locationConfig, LocationHelper.OnLocationChangedListener onLocationChangedListener) {
        LocationHelper.create(activity).requestLocation(locationConfig, onLocationChangedListener);
    }

    public static void showFocusDialog(FragmentActivity fragmentActivity, a.d dVar) {
        new a().m(fragmentActivity).f("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION").l(R.string.ugc_open_setting_in_system_to_use).g(R.string.str_no).e(dVar).k();
    }

    private void startLocation() {
        final LocationHelper.OnLocationChangedListener onLocationChangedListener = (LocationHelper.OnLocationChangedListener) MemoryCache.getInstance().remove("onLocationChangedListener");
        LocationHelper.create(this).requestLocation((LocationConfig) MemoryCache.getInstance().remove("config"), new LocationHelper.OnLocationChangedListener() { // from class: com.guochao.faceshow.aaspring.utils.location.LocationService.1
            @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
            public void onError(int i9, String str, FcLocation fcLocation) {
                LocationHelper.OnLocationChangedListener onLocationChangedListener2 = onLocationChangedListener;
                if (onLocationChangedListener2 != null) {
                    onLocationChangedListener2.onError(i9, str, fcLocation);
                }
                LocationService.this.stopSelf();
            }

            @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper.OnLocationChangedListener
            public void onReceiveLocation(FcLocation fcLocation) {
                LocationHelper.OnLocationChangedListener onLocationChangedListener2 = onLocationChangedListener;
                if (onLocationChangedListener2 != null) {
                    onLocationChangedListener2.onReceiveLocation(fcLocation);
                }
                LocationService.this.stopSelf();
            }
        });
    }

    public static void startRequestLocation(LocationConfig locationConfig, Activity activity, LocationHelper.OnLocationChangedListener onLocationChangedListener) {
        if (Build.VERSION.SDK_INT >= 29 && !Foreground.get().isForeground()) {
            if (FaceCastCallService.f(LocationService.class.getName())) {
                return;
            }
            Intent intent = new Intent(activity, LocationService.class);
            MemoryCache.getInstance().put("config", locationConfig);
            MemoryCache.getInstance().put("onLocationChangedListener", onLocationChangedListener);
            activity.startForegroundService(intent);
            return;
        }
        realRequest(activity, locationConfig, onLocationChangedListener);
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        startForeground(11, createNotification());
        startLocation();
        return super.onStartCommand(intent, i9, i10);
    }
}
