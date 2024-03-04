package org.libpag;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.opengl.EGLContext;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.TextureView;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.extra.tools.BroadcastUtil;
import org.extra.tools.ScreenBroadcastReceiver;
import org.light.utils.FileUtils;
/* loaded from: classes7.dex */
public class PAGView extends TextureView implements TextureView.SurfaceTextureListener, ScreenBroadcastReceiver.ScreenStateListener {
    private static final int ANDROID_SDK_VERSION_O = 26;
    private static final int MSG_FLUSH = 0;
    private static final int MSG_HANDLER_THREAD_QUITE = 2;
    private static final int MSG_SURFACE_DESTROY = 1;
    private static final String TAG = "PAGView";
    private static final Object g_HandlerLock = new Object();
    private static volatile int g_HandlerThreadCount;
    private static PAGRendererHandler g_PAGRendererHandler;
    private static HandlerThread g_PAGRendererThread;
    private Boolean _isAnimatorPreRunning;
    private boolean _isPlaying;
    private ValueAnimator animator;
    private volatile double animatorProgress;
    private volatile long currentPlayTime;
    private String filePath;
    private SparseArray<PAGImage> imageReplacementMap;
    private boolean isAttachedToWindow;
    private boolean isSync;
    private Runnable mAnimatorCancelRunnable;
    private final AnimatorListenerAdapter mAnimatorListenerAdapter;
    private Runnable mAnimatorStartRunnable;
    private final ValueAnimator.AnimatorUpdateListener mAnimatorUpdateListener;
    private TextureView.SurfaceTextureListener mListener;
    private ArrayList<PAGFlushListener> mPAGFlushListeners;
    private boolean mSaveVisibleState;
    private ArrayList<PAGViewListener> mViewListeners;
    private PAGFile pagFile;
    private PAGPlayer pagPlayer;
    private PAGSurface pagSurface;
    private boolean preAggregatedVisible;
    private EGLContext sharedContext;
    private SparseArray<PAGText> textReplacementMap;

    /* loaded from: classes7.dex */
    public interface PAGFlushListener {
        void onFlush();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class PAGRendererHandler extends Handler {
        private final Object lock;
        private List<PAGView> needsUpdateViews;

        PAGRendererHandler(Looper looper) {
            super(looper);
            this.lock = new Object();
            this.needsUpdateViews = new ArrayList();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ArrayList arrayList;
            super.handleMessage(message);
            int i9 = message.arg1;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 != 2) {
                        return;
                    }
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: org.libpag.PAGView.PAGRendererHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PAGView.HandlerThreadQuit();
                        }
                    });
                    return;
                }
                Object obj = message.obj;
                if (obj instanceof SurfaceTexture) {
                    ((SurfaceTexture) obj).release();
                    return;
                }
                return;
            }
            synchronized (this.lock) {
                arrayList = new ArrayList(this.needsUpdateViews);
                this.needsUpdateViews.clear();
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                if (obj2 instanceof PAGView) {
                    PAGView pAGView = (PAGView) obj2;
                    if (!arrayList2.contains(pAGView)) {
                        pAGView.updateView();
                        arrayList2.add(pAGView);
                    }
                }
            }
        }

        void needsUpdateView(PAGView pAGView) {
            synchronized (this.lock) {
                if (this.needsUpdateViews.isEmpty()) {
                    Message obtainMessage = obtainMessage();
                    obtainMessage.arg1 = 0;
                    sendMessage(obtainMessage);
                }
                this.needsUpdateViews.add(pAGView);
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface PAGViewListener {
        void onAnimationCancel(PAGView pAGView);

        void onAnimationEnd(PAGView pAGView);

        void onAnimationRepeat(PAGView pAGView);

        void onAnimationStart(PAGView pAGView);
    }

    static {
        BroadcastUtil.getInstance().registerScreenBroadcast();
    }

    public PAGView(Context context) {
        super(context);
        this._isPlaying = false;
        this._isAnimatorPreRunning = null;
        this.filePath = "";
        this.isAttachedToWindow = false;
        this.sharedContext = null;
        this.textReplacementMap = new SparseArray<>();
        this.imageReplacementMap = new SparseArray<>();
        this.isSync = false;
        this.mViewListeners = new ArrayList<>();
        this.mPAGFlushListeners = new ArrayList<>();
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.libpag.PAGView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGView.this.currentPlayTime = valueAnimator.getCurrentPlayTime();
                PAGView pAGView = PAGView.this;
                pAGView.onAnimationUpdate(((Float) pAGView.animator.getAnimatedValue()).floatValue());
            }
        };
        this.mAnimatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.libpag.PAGView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ArrayList arrayList;
                super.onAnimationCancel(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationCancel(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArrayList arrayList;
                super.onAnimationEnd(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationEnd(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                ArrayList arrayList;
                super.onAnimationRepeat(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationRepeat(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ArrayList arrayList;
                super.onAnimationStart(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationStart(PAGView.this);
                }
            }
        };
        this.mAnimatorStartRunnable = new Runnable() { // from class: org.libpag.PAGView.5
            @Override // java.lang.Runnable
            public void run() {
                if (PAGView.this.isAttachedToWindow) {
                    PAGView.this.animator.start();
                } else {
                    Log.e(PAGView.TAG, "AnimatorStartRunnable: PAGView is not attached to window");
                }
            }
        };
        this.mAnimatorCancelRunnable = new Runnable() { // from class: org.libpag.PAGView.6
            @Override // java.lang.Runnable
            public void run() {
                PAGView pAGView = PAGView.this;
                pAGView.currentPlayTime = pAGView.animator.getCurrentPlayTime();
                PAGView.this.animator.cancel();
            }
        };
        this.preAggregatedVisible = true;
        setupSurfaceTexture();
    }

    private static synchronized void DestroyHandlerThread() {
        HandlerThread handlerThread;
        synchronized (PAGView.class) {
            g_HandlerThreadCount--;
            if (g_HandlerThreadCount != 0) {
                return;
            }
            if (g_PAGRendererHandler != null && (handlerThread = g_PAGRendererThread) != null) {
                if (handlerThread.isAlive()) {
                    SendMessage(2, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void HandlerThreadQuit() {
        HandlerThread handlerThread;
        if (g_HandlerThreadCount == 0 && g_PAGRendererHandler != null && (handlerThread = g_PAGRendererThread) != null && handlerThread.isAlive()) {
            g_PAGRendererHandler.removeCallbacksAndMessages(null);
            g_PAGRendererThread.quitSafely();
            g_PAGRendererThread = null;
            g_PAGRendererHandler = null;
        }
    }

    private static void NeedsUpdateView(PAGView pAGView) {
        if (pAGView.isSync) {
            pAGView.updateView();
            return;
        }
        PAGRendererHandler pAGRendererHandler = g_PAGRendererHandler;
        if (pAGRendererHandler == null) {
            return;
        }
        pAGRendererHandler.needsUpdateView(pAGView);
    }

    private static void SendMessage(int i9, Object obj) {
        PAGRendererHandler pAGRendererHandler = g_PAGRendererHandler;
        if (pAGRendererHandler == null) {
            return;
        }
        Message obtainMessage = pAGRendererHandler.obtainMessage();
        obtainMessage.arg1 = i9;
        if (obj != null) {
            obtainMessage.obj = obj;
        }
        g_PAGRendererHandler.sendMessage(obtainMessage);
    }

    private static synchronized void StartHandlerThread() {
        synchronized (PAGView.class) {
            g_HandlerThreadCount++;
            if (g_PAGRendererThread == null) {
                HandlerThread handlerThread = new HandlerThread("pag-renderer");
                g_PAGRendererThread = handlerThread;
                handlerThread.start();
            }
            if (g_PAGRendererHandler == null) {
                g_PAGRendererHandler = new PAGRendererHandler(g_PAGRendererThread.getLooper());
            }
        }
    }

    private void applyReplacements() {
        PAGFile pAGFile = (PAGFile) this.pagPlayer.getComposition();
        if (pAGFile == null) {
            return;
        }
        for (int i9 = 0; i9 < this.textReplacementMap.size(); i9++) {
            pAGFile.replaceText(this.textReplacementMap.keyAt(i9), this.textReplacementMap.valueAt(i9));
        }
        this.textReplacementMap.clear();
        for (int i10 = 0; i10 < this.imageReplacementMap.size(); i10++) {
            pAGFile.replaceImage(this.imageReplacementMap.keyAt(i10), this.imageReplacementMap.valueAt(i10));
        }
        this.imageReplacementMap.clear();
    }

    private void cancelAnimator() {
        if (isMainThread()) {
            this.currentPlayTime = this.animator.getCurrentPlayTime();
            this.animator.cancel();
            return;
        }
        removeCallbacks(this.mAnimatorStartRunnable);
        post(this.mAnimatorCancelRunnable);
    }

    private void doPlay() {
        if (!this.isAttachedToWindow) {
            Log.e(TAG, "doPlay: PAGView is not attached to window");
            return;
        }
        Log.i(TAG, "doPlay");
        this.animator.setCurrentPlayTime(this.currentPlayTime);
        startAnimator();
    }

    private boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationUpdate(double d10) {
        this.animatorProgress = d10;
        NeedsUpdateView(this);
    }

    private void pauseAnimator() {
        if (this._isAnimatorPreRunning == null) {
            this._isAnimatorPreRunning = Boolean.valueOf(this.animator.isRunning());
        }
        if (this.animator.isRunning()) {
            cancelAnimator();
        }
    }

    private void resumeAnimator() {
        Boolean bool;
        if (this._isPlaying && !this.animator.isRunning() && ((bool = this._isAnimatorPreRunning) == null || bool.booleanValue())) {
            this._isAnimatorPreRunning = null;
            doPlay();
            return;
        }
        this._isAnimatorPreRunning = null;
    }

    private void setupSurfaceTexture() {
        setOpaque(false);
        this.pagPlayer = new PAGPlayer();
        setSurfaceTextureListener(this);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = ofFloat;
        ofFloat.setRepeatCount(0);
        this.animator.setInterpolator(new LinearInterpolator());
    }

    private void startAnimator() {
        if (isMainThread()) {
            this.animator.start();
            return;
        }
        removeCallbacks(this.mAnimatorCancelRunnable);
        post(this.mAnimatorStartRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateView() {
        if (this.isAttachedToWindow) {
            this.pagPlayer.setProgress(this.animatorProgress);
            flush();
            post(new Runnable() { // from class: org.libpag.PAGView.3
                @Override // java.lang.Runnable
                public void run() {
                    boolean isOpaque = PAGView.this.isOpaque();
                    PAGView.this.setOpaque(!isOpaque);
                    PAGView.this.setOpaque(isOpaque);
                }
            });
            if (this.mPAGFlushListeners.isEmpty()) {
                return;
            }
            post(new Runnable() { // from class: org.libpag.PAGView.4
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList arrayList;
                    synchronized (PAGView.this) {
                        arrayList = new ArrayList(PAGView.this.mPAGFlushListeners);
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((PAGFlushListener) it.next()).onFlush();
                    }
                }
            });
        }
    }

    public void addListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.mViewListeners.add(pAGViewListener);
        }
    }

    public void addPAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.mPAGFlushListeners.add(pAGFlushListener);
        }
    }

    public boolean cacheEnabled() {
        return this.pagPlayer.cacheEnabled();
    }

    public float cacheScale() {
        return this.pagPlayer.cacheScale();
    }

    public long duration() {
        return this.pagPlayer.duration();
    }

    public boolean flush() {
        return this.pagPlayer.flush();
    }

    public void freeCache() {
        PAGSurface pAGSurface = this.pagSurface;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
    }

    public PAGComposition getComposition() {
        return this.pagPlayer.getComposition();
    }

    @Deprecated
    public PAGFile getFile() {
        return this.pagFile;
    }

    public PAGLayer[] getLayersUnderPoint(float f10, float f11) {
        return this.pagPlayer.getLayersUnderPoint(f10, f11);
    }

    public String getPath() {
        return this.filePath;
    }

    public double getProgress() {
        return this.pagPlayer.getProgress();
    }

    @Deprecated
    public PAGComposition getRootComposition() {
        return this.pagPlayer.getComposition();
    }

    public boolean isPlaying() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            return valueAnimator.isRunning();
        }
        return false;
    }

    public boolean isSync() {
        return this.isSync;
    }

    public Matrix matrix() {
        return this.pagPlayer.matrix();
    }

    public float maxFrameRate() {
        return this.pagPlayer.maxFrameRate();
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        this.isAttachedToWindow = true;
        super.onAttachedToWindow();
        this.animator.addListener(this.mAnimatorListenerAdapter);
        BroadcastUtil.getInstance().registerScreenBroadcast(this);
        synchronized (g_HandlerLock) {
            StartHandlerThread();
        }
        resumeAnimator();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.isAttachedToWindow = false;
        super.onDetachedFromWindow();
        BroadcastUtil.getInstance().unregisterScreenBroadcast(this);
        PAGSurface pAGSurface = this.pagSurface;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.pagSurface = null;
        }
        pauseAnimator();
        if (Build.VERSION.SDK_INT < 26) {
            synchronized (g_HandlerLock) {
                DestroyHandlerThread();
            }
        }
        this.animator.removeListener(this.mAnimatorListenerAdapter);
    }

    @Override // org.extra.tools.ScreenBroadcastReceiver.ScreenStateListener
    public void onScreenOff() {
        if (getVisibility() == 0) {
            this.mSaveVisibleState = true;
            setVisibility(4);
        }
    }

    @Override // org.extra.tools.ScreenBroadcastReceiver.ScreenStateListener
    public void onScreenOn() {
        if (this.mSaveVisibleState) {
            setVisibility(0);
        }
        this.mSaveVisibleState = false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i9, int i10) {
        PAGSurface pAGSurface = this.pagSurface;
        if (pAGSurface != null) {
            pAGSurface.release();
            this.pagSurface = null;
        }
        PAGSurface FromSurfaceTexture = PAGSurface.FromSurfaceTexture(surfaceTexture, this.sharedContext);
        this.pagSurface = FromSurfaceTexture;
        this.pagPlayer.setSurface(FromSurfaceTexture);
        if (this.pagSurface == null) {
            return;
        }
        this.animator.addUpdateListener(this.mAnimatorUpdateListener);
        this.pagSurface.clearAll();
        NeedsUpdateView(this);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i9, i10);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.pagPlayer.setSurface(null);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
        }
        PAGSurface pAGSurface = this.pagSurface;
        if (pAGSurface != null) {
            pAGSurface.freeCache();
        }
        this.animator.removeUpdateListener(this.mAnimatorUpdateListener);
        boolean z10 = true;
        if (g_PAGRendererHandler != null && surfaceTexture != null) {
            SendMessage(1, surfaceTexture);
            z10 = false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            synchronized (g_HandlerLock) {
                DestroyHandlerThread();
            }
        }
        return z10;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i9, int i10) {
        PAGSurface pAGSurface = this.pagSurface;
        if (pAGSurface != null) {
            pAGSurface.updateSize();
            this.pagSurface.clearAll();
            NeedsUpdateView(this);
        }
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i9, i10);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
        }
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z10) {
        super.onVisibilityAggregated(z10);
        if (this.preAggregatedVisible == z10) {
            return;
        }
        this.preAggregatedVisible = z10;
        Log.i(TAG, "onVisibilityAggregated isVisible=" + z10);
        if (z10) {
            resumeAnimator();
        } else {
            pauseAnimator();
        }
    }

    public void play() {
        this._isPlaying = true;
        this._isAnimatorPreRunning = null;
        if (this.animatorProgress == 1.0d) {
            setProgress(0.0d);
        }
        doPlay();
    }

    public void removeListener(PAGViewListener pAGViewListener) {
        synchronized (this) {
            this.mViewListeners.remove(pAGViewListener);
        }
    }

    public void removePAGFlushListener(PAGFlushListener pAGFlushListener) {
        synchronized (this) {
            this.mPAGFlushListeners.remove(pAGFlushListener);
        }
    }

    @Deprecated
    public void replaceImage(int i9, PAGImage pAGImage) {
        PAGComposition composition = this.pagPlayer.getComposition();
        if (composition == null || this.pagFile != null) {
            if (composition != null) {
                ((PAGFile) composition).replaceImage(i9, pAGImage);
            } else {
                this.imageReplacementMap.put(i9, pAGImage);
            }
        }
    }

    public int scaleMode() {
        return this.pagPlayer.scaleMode();
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 24 || drawable == null) {
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    public void setCacheEnabled(boolean z10) {
        this.pagPlayer.setCacheEnabled(z10);
    }

    public void setCacheScale(float f10) {
        this.pagPlayer.setCacheScale(f10);
    }

    public void setComposition(PAGComposition pAGComposition) {
        this.filePath = null;
        this.pagFile = null;
        this.pagPlayer.setComposition(pAGComposition);
        this.animator.setDuration(this.pagPlayer.duration() / 1000);
    }

    @Deprecated
    public void setFile(PAGFile pAGFile) {
        setComposition(pAGFile != null ? pAGFile.copyOriginal() : null);
        this.pagFile = pAGFile;
        if (pAGFile != null) {
            applyReplacements();
        }
    }

    public void setMatrix(Matrix matrix) {
        this.pagPlayer.setMatrix(matrix);
    }

    public void setMaxFrameRate(float f10) {
        this.pagPlayer.setMaxFrameRate(f10);
    }

    public boolean setPath(String str) {
        PAGFile Load;
        if (str != null && str.startsWith(FileUtils.RES_PREFIX_ASSETS)) {
            Load = PAGFile.Load(getContext().getAssets(), str.substring(9));
        } else {
            Load = PAGFile.Load(str);
        }
        setComposition(Load);
        this.filePath = str;
        return Load != null;
    }

    public void setProgress(double d10) {
        this.currentPlayTime = (long) (Math.max(0.0d, Math.min(d10, 1.0d)) * this.animator.getDuration());
        this.animator.setCurrentPlayTime(this.currentPlayTime);
    }

    public void setRepeatCount(int i9) {
        if (i9 < 0) {
            i9 = 0;
        }
        this.animator.setRepeatCount(i9 - 1);
    }

    public void setScaleMode(int i9) {
        this.pagPlayer.setScaleMode(i9);
    }

    @Override // android.view.TextureView
    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener == this) {
            super.setSurfaceTextureListener(surfaceTextureListener);
        } else {
            this.mListener = surfaceTextureListener;
        }
    }

    public void setSync(boolean z10) {
        this.isSync = z10;
    }

    @Deprecated
    public void setTextData(int i9, PAGText pAGText) {
        PAGComposition composition = this.pagPlayer.getComposition();
        if (composition == null || this.pagFile != null) {
            if (composition != null) {
                ((PAGFile) composition).replaceText(i9, pAGText);
            } else {
                this.textReplacementMap.put(i9, pAGText);
            }
        }
    }

    public void setVideoEnabled(boolean z10) {
        this.pagPlayer.setVideoEnabled(z10);
    }

    public void stop() {
        Log.i(TAG, "stop");
        this._isPlaying = false;
        this._isAnimatorPreRunning = null;
        cancelAnimator();
    }

    public boolean videoEnabled() {
        return this.pagPlayer.videoEnabled();
    }

    @Deprecated
    public boolean flush(boolean z10) {
        return flush();
    }

    @Deprecated
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.animator.addListener(animatorListener);
    }

    @Deprecated
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.animator.removeListener(animatorListener);
    }

    public PAGView(Context context, EGLContext eGLContext) {
        super(context);
        this._isPlaying = false;
        this._isAnimatorPreRunning = null;
        this.filePath = "";
        this.isAttachedToWindow = false;
        this.sharedContext = null;
        this.textReplacementMap = new SparseArray<>();
        this.imageReplacementMap = new SparseArray<>();
        this.isSync = false;
        this.mViewListeners = new ArrayList<>();
        this.mPAGFlushListeners = new ArrayList<>();
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.libpag.PAGView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGView.this.currentPlayTime = valueAnimator.getCurrentPlayTime();
                PAGView pAGView = PAGView.this;
                pAGView.onAnimationUpdate(((Float) pAGView.animator.getAnimatedValue()).floatValue());
            }
        };
        this.mAnimatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.libpag.PAGView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ArrayList arrayList;
                super.onAnimationCancel(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationCancel(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArrayList arrayList;
                super.onAnimationEnd(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationEnd(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                ArrayList arrayList;
                super.onAnimationRepeat(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationRepeat(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ArrayList arrayList;
                super.onAnimationStart(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationStart(PAGView.this);
                }
            }
        };
        this.mAnimatorStartRunnable = new Runnable() { // from class: org.libpag.PAGView.5
            @Override // java.lang.Runnable
            public void run() {
                if (PAGView.this.isAttachedToWindow) {
                    PAGView.this.animator.start();
                } else {
                    Log.e(PAGView.TAG, "AnimatorStartRunnable: PAGView is not attached to window");
                }
            }
        };
        this.mAnimatorCancelRunnable = new Runnable() { // from class: org.libpag.PAGView.6
            @Override // java.lang.Runnable
            public void run() {
                PAGView pAGView = PAGView.this;
                pAGView.currentPlayTime = pAGView.animator.getCurrentPlayTime();
                PAGView.this.animator.cancel();
            }
        };
        this.preAggregatedVisible = true;
        this.sharedContext = eGLContext;
        setupSurfaceTexture();
    }

    public PAGView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._isPlaying = false;
        this._isAnimatorPreRunning = null;
        this.filePath = "";
        this.isAttachedToWindow = false;
        this.sharedContext = null;
        this.textReplacementMap = new SparseArray<>();
        this.imageReplacementMap = new SparseArray<>();
        this.isSync = false;
        this.mViewListeners = new ArrayList<>();
        this.mPAGFlushListeners = new ArrayList<>();
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.libpag.PAGView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGView.this.currentPlayTime = valueAnimator.getCurrentPlayTime();
                PAGView pAGView = PAGView.this;
                pAGView.onAnimationUpdate(((Float) pAGView.animator.getAnimatedValue()).floatValue());
            }
        };
        this.mAnimatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.libpag.PAGView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ArrayList arrayList;
                super.onAnimationCancel(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationCancel(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArrayList arrayList;
                super.onAnimationEnd(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationEnd(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                ArrayList arrayList;
                super.onAnimationRepeat(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationRepeat(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ArrayList arrayList;
                super.onAnimationStart(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationStart(PAGView.this);
                }
            }
        };
        this.mAnimatorStartRunnable = new Runnable() { // from class: org.libpag.PAGView.5
            @Override // java.lang.Runnable
            public void run() {
                if (PAGView.this.isAttachedToWindow) {
                    PAGView.this.animator.start();
                } else {
                    Log.e(PAGView.TAG, "AnimatorStartRunnable: PAGView is not attached to window");
                }
            }
        };
        this.mAnimatorCancelRunnable = new Runnable() { // from class: org.libpag.PAGView.6
            @Override // java.lang.Runnable
            public void run() {
                PAGView pAGView = PAGView.this;
                pAGView.currentPlayTime = pAGView.animator.getCurrentPlayTime();
                PAGView.this.animator.cancel();
            }
        };
        this.preAggregatedVisible = true;
        setupSurfaceTexture();
    }

    public PAGView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this._isPlaying = false;
        this._isAnimatorPreRunning = null;
        this.filePath = "";
        this.isAttachedToWindow = false;
        this.sharedContext = null;
        this.textReplacementMap = new SparseArray<>();
        this.imageReplacementMap = new SparseArray<>();
        this.isSync = false;
        this.mViewListeners = new ArrayList<>();
        this.mPAGFlushListeners = new ArrayList<>();
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: org.libpag.PAGView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGView.this.currentPlayTime = valueAnimator.getCurrentPlayTime();
                PAGView pAGView = PAGView.this;
                pAGView.onAnimationUpdate(((Float) pAGView.animator.getAnimatedValue()).floatValue());
            }
        };
        this.mAnimatorListenerAdapter = new AnimatorListenerAdapter() { // from class: org.libpag.PAGView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ArrayList arrayList;
                super.onAnimationCancel(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationCancel(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ArrayList arrayList;
                super.onAnimationEnd(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationEnd(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                ArrayList arrayList;
                super.onAnimationRepeat(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationRepeat(PAGView.this);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ArrayList arrayList;
                super.onAnimationStart(animator);
                synchronized (PAGView.this) {
                    arrayList = new ArrayList(PAGView.this.mViewListeners);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PAGViewListener) it.next()).onAnimationStart(PAGView.this);
                }
            }
        };
        this.mAnimatorStartRunnable = new Runnable() { // from class: org.libpag.PAGView.5
            @Override // java.lang.Runnable
            public void run() {
                if (PAGView.this.isAttachedToWindow) {
                    PAGView.this.animator.start();
                } else {
                    Log.e(PAGView.TAG, "AnimatorStartRunnable: PAGView is not attached to window");
                }
            }
        };
        this.mAnimatorCancelRunnable = new Runnable() { // from class: org.libpag.PAGView.6
            @Override // java.lang.Runnable
            public void run() {
                PAGView pAGView = PAGView.this;
                pAGView.currentPlayTime = pAGView.animator.getCurrentPlayTime();
                PAGView.this.animator.cancel();
            }
        };
        this.preAggregatedVisible = true;
        setupSurfaceTexture();
    }
}
