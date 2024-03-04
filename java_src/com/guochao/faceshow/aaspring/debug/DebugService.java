package com.guochao.faceshow.aaspring.debug;

import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DebugService extends Service {

    /* renamed from: a  reason: collision with root package name */
    View f16398a;

    /* renamed from: b  reason: collision with root package name */
    ImageView f16399b;

    /* renamed from: c  reason: collision with root package name */
    Button f16400c;

    /* renamed from: d  reason: collision with root package name */
    RecyclerView f16401d;

    /* renamed from: e  reason: collision with root package name */
    WindowManager f16402e;

    /* renamed from: f  reason: collision with root package name */
    WindowManager.LayoutParams f16403f;

    /* renamed from: g  reason: collision with root package name */
    Button f16404g;

    /* renamed from: h  reason: collision with root package name */
    int f16405h;

    /* renamed from: i  reason: collision with root package name */
    private List<x7.a> f16406i = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DebugService.this.f16406i.clear();
            DebugService.this.f16401d.getAdapter().notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DebugService.this.f16401d.getVisibility() == 0) {
                DebugService.this.f16401d.setVisibility(8);
                DebugService.this.f16404g.setVisibility(8);
                return;
            }
            DebugService.this.f16401d.setVisibility(0);
            DebugService.this.f16404g.setVisibility(0);
        }
    }

    /* loaded from: classes3.dex */
    public class c extends Binder {
        public c() {
        }

        public void a(String str, String str2) {
            DebugService.this.f16406i.add(new x7.a(str, str2));
            RecyclerView recyclerView = DebugService.this.f16401d;
            if (recyclerView == null || recyclerView.getAdapter() == null) {
                return;
            }
            DebugService.this.f16401d.getAdapter().notifyDataSetChanged();
            int findLastVisibleItemPosition = ((LinearLayoutManager) DebugService.this.f16401d.getLayoutManager()).findLastVisibleItemPosition();
            if (findLastVisibleItemPosition < 0 || findLastVisibleItemPosition < DebugService.this.f16406i.size() - 2) {
                return;
            }
            DebugService debugService = DebugService.this;
            debugService.f16401d.scrollToPosition(debugService.f16406i.size() - 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class d extends RecyclerView.Adapter<BaseViewHolder> {
        private d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return DebugService.this.f16406i.size();
        }

        /* synthetic */ d(DebugService debugService, a aVar) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            x7.a aVar = (x7.a) DebugService.this.f16406i.get(i9);
            TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.content);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            String str = aVar.c() + " / ";
            String b10 = aVar.b();
            if (TextUtils.isEmpty(b10)) {
                b10 = "Debug";
            }
            String str2 = (str + b10) + " / ";
            SpannableString spannableString = new SpannableString(str2);
            spannableString.setSpan(new ForegroundColorSpan(DebugService.this.getResources().getColor(R.color.color_app_primary)), 0, str2.length(), 33);
            spannableString.setSpan(new BackgroundColorSpan(DebugService.this.getResources().getColor(R.color.half_white)), 0, str2.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) aVar.a());
            textView.setText(spannableStringBuilder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            View inflate = LayoutInflater.from(DebugService.this).inflate(R.layout.list_item_debug_log, viewGroup, false);
            ((TextView) inflate.findViewById(R.id.content)).setTextColor(DebugService.this.getResources().getColor(R.color.white));
            return new BaseViewHolder(inflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        private float f16411a;

        /* renamed from: b  reason: collision with root package name */
        private float f16412b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f16413c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f16414d;

        private e() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
            if (r1 != 3) goto L8;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
            /*
                r6 = this;
                float r7 = r8.getRawX()
                int r7 = (int) r7
                float r0 = r8.getRawY()
                int r0 = (int) r0
                int r1 = r8.getAction()
                r2 = 1
                if (r1 == 0) goto L7c
                r3 = 0
                r4 = 2
                if (r1 == r2) goto L57
                if (r1 == r4) goto L1b
                r7 = 3
                if (r1 == r7) goto L57
                goto L88
            L1b:
                float r1 = r8.getX()
                float r8 = r8.getY()
                float r4 = r6.f16411a
                float r4 = r4 - r1
                float r1 = java.lang.Math.abs(r4)
                r4 = 1077936128(0x40400000, float:3.0)
                int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r1 <= 0) goto L88
                float r1 = r6.f16412b
                float r1 = r1 - r8
                float r8 = java.lang.Math.abs(r1)
                int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r8 <= 0) goto L88
                r6.f16413c = r2
                com.guochao.faceshow.aaspring.debug.DebugService r8 = com.guochao.faceshow.aaspring.debug.DebugService.this
                android.view.WindowManager$LayoutParams r1 = r8.f16403f
                float r7 = (float) r7
                float r2 = r6.f16411a
                float r7 = r7 - r2
                int r7 = (int) r7
                r1.x = r7
                float r7 = (float) r0
                float r0 = r6.f16412b
                float r7 = r7 - r0
                int r7 = (int) r7
                r1.y = r7
                android.view.WindowManager r7 = r8.f16402e
                android.view.View r8 = r8.f16398a
                r7.updateViewLayout(r8, r1)
                return r3
            L57:
                com.guochao.faceshow.aaspring.debug.DebugService r7 = com.guochao.faceshow.aaspring.debug.DebugService.this
                android.view.WindowManager$LayoutParams r8 = r7.f16403f
                int r0 = r8.x
                int r1 = r7.f16405h
                int r5 = r1 / 2
                if (r0 < r5) goto L68
                r8.x = r1
                r6.f16414d = r2
                goto L6f
            L68:
                int r1 = r1 / r4
                if (r0 >= r1) goto L6f
                r6.f16414d = r3
                r8.x = r3
            L6f:
                android.view.WindowManager r0 = r7.f16402e
                android.view.View r7 = r7.f16398a
                r0.updateViewLayout(r7, r8)
                r7 = 0
                r6.f16412b = r7
                r6.f16411a = r7
                goto L88
            L7c:
                float r7 = r8.getX()
                r6.f16411a = r7
                float r7 = r8.getY()
                r6.f16412b = r7
            L88:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.debug.DebugService.e.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }

        /* synthetic */ e(DebugService debugService, a aVar) {
            this();
        }
    }

    private void b() {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL);
        builder.setContentTitle("调试模式已开启");
        builder.setContentText("此通知只会在测试版本出现，正式版本不会开启");
        builder.setTicker("");
        builder.setSmallIcon(R.drawable.jpush_notification_icon);
        builder.setAutoCancel(false);
        builder.setOngoing(true);
        ((NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION)).notify(10000, builder.build());
    }

    private void c() {
        WindowManager windowManager;
        View view = this.f16398a;
        if (view != null && (windowManager = this.f16402e) != null) {
            windowManager.removeView(view);
            this.f16398a = null;
            this.f16402e = null;
        }
        if (this.f16398a == null) {
            int i9 = getResources().getDisplayMetrics().widthPixels;
            int i10 = getResources().getDisplayMetrics().heightPixels / 3;
            this.f16405h = getResources().getDisplayMetrics().widthPixels;
            this.f16402e = (WindowManager) getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f16403f = layoutParams;
            if (Build.VERSION.SDK_INT >= 26) {
                layoutParams.type = 2038;
            } else {
                layoutParams.type = 2002;
            }
            layoutParams.flags = 131080;
            layoutParams.format = 1;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = BadgeDrawable.TOP_START;
            View inflate = LayoutInflater.from(this).inflate(R.layout.layout_debug, (ViewGroup) null);
            this.f16398a = inflate;
            this.f16402e.addView(inflate, this.f16403f);
            this.f16399b = (ImageView) this.f16398a.findViewById(R.id.mini_icon);
            RecyclerView recyclerView = (RecyclerView) this.f16398a.findViewById(R.id.recycler_view);
            this.f16401d = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(this));
            this.f16401d.setAdapter(new d(this, null));
            this.f16399b.setOnTouchListener(new e(this, null));
            this.f16400c = (Button) this.f16398a.findViewById(R.id.mini);
            ViewGroup.LayoutParams layoutParams2 = this.f16401d.getLayoutParams();
            layoutParams2.height = i10;
            layoutParams2.width = i9;
            this.f16401d.setLayoutParams(layoutParams2);
            Button button = (Button) this.f16398a.findViewById(R.id.clear);
            this.f16404g = button;
            button.setOnClickListener(new a());
            this.f16400c.setOnClickListener(new b());
        }
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return new c();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        WindowManager windowManager = this.f16402e;
        if (windowManager != null) {
            windowManager.removeView(this.f16398a);
        }
        ((NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(10000);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        b();
        c();
        return super.onStartCommand(intent, i9, i10);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        WindowManager windowManager = this.f16402e;
        if (windowManager != null) {
            try {
                windowManager.removeView(this.f16398a);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION);
        if (notificationManager != null) {
            notificationManager.cancel(10000);
        }
    }
}
