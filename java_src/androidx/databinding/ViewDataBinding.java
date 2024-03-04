package androidx.databinding;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.Observable;
import androidx.databinding.ObservableList;
import androidx.databinding.ObservableMap;
import androidx.databinding.library.R;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {
    private static final int BINDING_NUMBER_START = 8;
    public static final String BINDING_TAG_PREFIX = "binding_";
    private static final int HALTED = 2;
    private static final int REBIND = 1;
    private static final int REBOUND = 3;
    protected final DataBindingComponent mBindingComponent;
    private Choreographer mChoreographer;
    private ViewDataBinding mContainingBinding;
    private final Choreographer.FrameCallback mFrameCallback;
    private boolean mInLiveDataRegisterObserver;
    private boolean mIsExecutingPendingBindings;
    private LifecycleOwner mLifecycleOwner;
    private WeakListener[] mLocalFieldObservers;
    private OnStartListener mOnStartListener;
    private boolean mPendingRebind;
    private CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> mRebindCallbacks;
    private boolean mRebindHalted;
    private final Runnable mRebindRunnable;
    private final View mRoot;
    private Handler mUIThreadHandler;
    static int SDK_INT = Build.VERSION.SDK_INT;
    private static final boolean USE_CHOREOGRAPHER = true;
    private static final CreateWeakListener CREATE_PROPERTY_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.1
        @Override // androidx.databinding.ViewDataBinding.CreateWeakListener
        public WeakListener create(ViewDataBinding viewDataBinding, int i9) {
            return new WeakPropertyListener(viewDataBinding, i9).getListener();
        }
    };
    private static final CreateWeakListener CREATE_LIST_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.2
        @Override // androidx.databinding.ViewDataBinding.CreateWeakListener
        public WeakListener create(ViewDataBinding viewDataBinding, int i9) {
            return new WeakListListener(viewDataBinding, i9).getListener();
        }
    };
    private static final CreateWeakListener CREATE_MAP_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.3
        @Override // androidx.databinding.ViewDataBinding.CreateWeakListener
        public WeakListener create(ViewDataBinding viewDataBinding, int i9) {
            return new WeakMapListener(viewDataBinding, i9).getListener();
        }
    };
    private static final CreateWeakListener CREATE_LIVE_DATA_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBinding.4
        @Override // androidx.databinding.ViewDataBinding.CreateWeakListener
        public WeakListener create(ViewDataBinding viewDataBinding, int i9) {
            return new LiveDataListener(viewDataBinding, i9).getListener();
        }
    };
    private static final CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> REBIND_NOTIFIER = new CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void>() { // from class: androidx.databinding.ViewDataBinding.5
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        public void onNotifyCallback(OnRebindCallback onRebindCallback, ViewDataBinding viewDataBinding, int i9, Void r42) {
            if (i9 == 1) {
                if (onRebindCallback.onPreBind(viewDataBinding)) {
                    return;
                }
                viewDataBinding.mRebindHalted = true;
            } else if (i9 == 2) {
                onRebindCallback.onCanceled(viewDataBinding);
            } else if (i9 != 3) {
            } else {
                onRebindCallback.onBound(viewDataBinding);
            }
        }
    };
    private static final ReferenceQueue<ViewDataBinding> sReferenceQueue = new ReferenceQueue<>();
    private static final View.OnAttachStateChangeListener ROOT_REATTACHED_LISTENER = new View.OnAttachStateChangeListener() { // from class: androidx.databinding.ViewDataBinding.6
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.getBinding(view).mRebindRunnable.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface CreateWeakListener {
        WeakListener create(ViewDataBinding viewDataBinding, int i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class IncludedLayouts {
        public final int[][] indexes;
        public final int[][] layoutIds;
        public final String[][] layouts;

        public IncludedLayouts(int i9) {
            this.layouts = new String[i9];
            this.indexes = new int[i9];
            this.layoutIds = new int[i9];
        }

        public void setIncludes(int i9, String[] strArr, int[] iArr, int[] iArr2) {
            this.layouts[i9] = strArr;
            this.indexes[i9] = iArr;
            this.layoutIds[i9] = iArr2;
        }
    }

    /* loaded from: classes.dex */
    private static class LiveDataListener implements Observer, ObservableReference<LiveData<?>> {
        LifecycleOwner mLifecycleOwner;
        final WeakListener<LiveData<?>> mListener;

        public LiveDataListener(ViewDataBinding viewDataBinding, int i9) {
            this.mListener = new WeakListener<>(viewDataBinding, i9, this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public WeakListener<LiveData<?>> getListener() {
            return this.mListener;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable Object obj) {
            ViewDataBinding binder = this.mListener.getBinder();
            if (binder != null) {
                WeakListener<LiveData<?>> weakListener = this.mListener;
                binder.handleFieldChange(weakListener.mLocalFieldId, weakListener.getTarget(), 0);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
            LiveData<?> target = this.mListener.getTarget();
            if (target != null) {
                if (this.mLifecycleOwner != null) {
                    target.removeObserver(this);
                }
                if (lifecycleOwner != null) {
                    target.observe(lifecycleOwner, this);
                }
            }
            this.mLifecycleOwner = lifecycleOwner;
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void addListener(LiveData<?> liveData) {
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            if (lifecycleOwner != null) {
                liveData.observe(lifecycleOwner, this);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void removeListener(LiveData<?> liveData) {
            liveData.removeObserver(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface ObservableReference<T> {
        void addListener(T t10);

        WeakListener<T> getListener();

        void removeListener(T t10);

        void setLifecycleOwner(LifecycleOwner lifecycleOwner);
    }

    /* loaded from: classes.dex */
    static class OnStartListener implements LifecycleObserver {
        final WeakReference<ViewDataBinding> mBinding;

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = this.mBinding.get();
            if (viewDataBinding != null) {
                viewDataBinding.executePendingBindings();
            }
        }

        private OnStartListener(ViewDataBinding viewDataBinding) {
            this.mBinding = new WeakReference<>(viewDataBinding);
        }
    }

    /* loaded from: classes.dex */
    protected static abstract class PropertyChangedInverseListener extends Observable.OnPropertyChangedCallback implements InverseBindingListener {
        final int mPropertyId;

        public PropertyChangedInverseListener(int i9) {
            this.mPropertyId = i9;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i9) {
            if (i9 == this.mPropertyId || i9 == 0) {
                onChange();
            }
        }
    }

    /* loaded from: classes.dex */
    private static class WeakListListener extends ObservableList.OnListChangedCallback implements ObservableReference<ObservableList> {
        final WeakListener<ObservableList> mListener;

        public WeakListListener(ViewDataBinding viewDataBinding, int i9) {
            this.mListener = new WeakListener<>(viewDataBinding, i9, this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public WeakListener<ObservableList> getListener() {
            return this.mListener;
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onChanged(ObservableList observableList) {
            ObservableList target;
            ViewDataBinding binder = this.mListener.getBinder();
            if (binder != null && (target = this.mListener.getTarget()) == observableList) {
                binder.handleFieldChange(this.mListener.mLocalFieldId, target, 0);
            }
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeChanged(ObservableList observableList, int i9, int i10) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeInserted(ObservableList observableList, int i9, int i10) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeMoved(ObservableList observableList, int i9, int i10, int i11) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ObservableList.OnListChangedCallback
        public void onItemRangeRemoved(ObservableList observableList, int i9, int i10) {
            onChanged(observableList);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void addListener(ObservableList observableList) {
            observableList.addOnListChangedCallback(this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void removeListener(ObservableList observableList) {
            observableList.removeOnListChangedCallback(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WeakListener<T> extends WeakReference<ViewDataBinding> {
        protected final int mLocalFieldId;
        private final ObservableReference<T> mObservable;
        private T mTarget;

        public WeakListener(ViewDataBinding viewDataBinding, int i9, ObservableReference<T> observableReference) {
            super(viewDataBinding, ViewDataBinding.sReferenceQueue);
            this.mLocalFieldId = i9;
            this.mObservable = observableReference;
        }

        protected ViewDataBinding getBinder() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) get();
            if (viewDataBinding == null) {
                unregister();
            }
            return viewDataBinding;
        }

        public T getTarget() {
            return this.mTarget;
        }

        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
            this.mObservable.setLifecycleOwner(lifecycleOwner);
        }

        public void setTarget(T t10) {
            unregister();
            this.mTarget = t10;
            if (t10 != null) {
                this.mObservable.addListener(t10);
            }
        }

        public boolean unregister() {
            boolean z10;
            T t10 = this.mTarget;
            if (t10 != null) {
                this.mObservable.removeListener(t10);
                z10 = true;
            } else {
                z10 = false;
            }
            this.mTarget = null;
            return z10;
        }
    }

    /* loaded from: classes.dex */
    private static class WeakMapListener extends ObservableMap.OnMapChangedCallback implements ObservableReference<ObservableMap> {
        final WeakListener<ObservableMap> mListener;

        public WeakMapListener(ViewDataBinding viewDataBinding, int i9) {
            this.mListener = new WeakListener<>(viewDataBinding, i9, this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public WeakListener<ObservableMap> getListener() {
            return this.mListener;
        }

        @Override // androidx.databinding.ObservableMap.OnMapChangedCallback
        public void onMapChanged(ObservableMap observableMap, Object obj) {
            ViewDataBinding binder = this.mListener.getBinder();
            if (binder == null || observableMap != this.mListener.getTarget()) {
                return;
            }
            binder.handleFieldChange(this.mListener.mLocalFieldId, observableMap, 0);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void addListener(ObservableMap observableMap) {
            observableMap.addOnMapChangedCallback(this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void removeListener(ObservableMap observableMap) {
            observableMap.removeOnMapChangedCallback(this);
        }
    }

    /* loaded from: classes.dex */
    private static class WeakPropertyListener extends Observable.OnPropertyChangedCallback implements ObservableReference<Observable> {
        final WeakListener<Observable> mListener;

        public WeakPropertyListener(ViewDataBinding viewDataBinding, int i9) {
            this.mListener = new WeakListener<>(viewDataBinding, i9, this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public WeakListener<Observable> getListener() {
            return this.mListener;
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i9) {
            ViewDataBinding binder = this.mListener.getBinder();
            if (binder != null && this.mListener.getTarget() == observable) {
                binder.handleFieldChange(this.mListener.mLocalFieldId, observable, i9);
            }
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void addListener(Observable observable) {
            observable.addOnPropertyChangedCallback(this);
        }

        @Override // androidx.databinding.ViewDataBinding.ObservableReference
        public void removeListener(Observable observable) {
            observable.removeOnPropertyChangedCallback(this);
        }
    }

    protected ViewDataBinding(DataBindingComponent dataBindingComponent, View view, int i9) {
        this.mRebindRunnable = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.mPendingRebind = false;
                }
                ViewDataBinding.processReferenceQueue();
                if (!ViewDataBinding.this.mRoot.isAttachedToWindow()) {
                    ViewDataBinding.this.mRoot.removeOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
                    ViewDataBinding.this.mRoot.addOnAttachStateChangeListener(ViewDataBinding.ROOT_REATTACHED_LISTENER);
                    return;
                }
                ViewDataBinding.this.executePendingBindings();
            }
        };
        this.mPendingRebind = false;
        this.mRebindHalted = false;
        this.mBindingComponent = dataBindingComponent;
        this.mLocalFieldObservers = new WeakListener[i9];
        this.mRoot = view;
        if (Looper.myLooper() != null) {
            if (USE_CHOREOGRAPHER) {
                this.mChoreographer = Choreographer.getInstance();
                this.mFrameCallback = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
                    @Override // android.view.Choreographer.FrameCallback
                    public void doFrame(long j10) {
                        ViewDataBinding.this.mRebindRunnable.run();
                    }
                };
                return;
            }
            this.mFrameCallback = null;
            this.mUIThreadHandler = new Handler(Looper.myLooper());
            return;
        }
        throw new IllegalStateException("DataBinding must be created in view's UI Thread");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ViewDataBinding bind(Object obj, View view, int i9) {
        return DataBindingUtil.bind(checkAndCastToBindingComponent(obj), view, i9);
    }

    private static DataBindingComponent checkAndCastToBindingComponent(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    private void executeBindingsInternal() {
        if (this.mIsExecutingPendingBindings) {
            requestRebind();
        } else if (hasPendingBindings()) {
            this.mIsExecutingPendingBindings = true;
            this.mRebindHalted = false;
            CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.mRebindCallbacks;
            if (callbackRegistry != null) {
                callbackRegistry.notifyCallbacks(this, 1, null);
                if (this.mRebindHalted) {
                    this.mRebindCallbacks.notifyCallbacks(this, 2, null);
                }
            }
            if (!this.mRebindHalted) {
                executeBindings();
                CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry2 = this.mRebindCallbacks;
                if (callbackRegistry2 != null) {
                    callbackRegistry2.notifyCallbacks(this, 3, null);
                }
            }
            this.mIsExecutingPendingBindings = false;
        }
    }

    protected static void executeBindingsOn(ViewDataBinding viewDataBinding) {
        viewDataBinding.executeBindingsInternal();
    }

    private static int findIncludeIndex(String str, int i9, IncludedLayouts includedLayouts, int i10) {
        CharSequence subSequence = str.subSequence(str.indexOf(47) + 1, str.length() - 2);
        String[] strArr = includedLayouts.layouts[i10];
        int length = strArr.length;
        while (i9 < length) {
            if (TextUtils.equals(subSequence, strArr[i9])) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    private static int findLastMatching(ViewGroup viewGroup, int i9) {
        String str = (String) viewGroup.getChildAt(i9).getTag();
        String substring = str.substring(0, str.length() - 1);
        int length = substring.length();
        int childCount = viewGroup.getChildCount();
        for (int i10 = i9 + 1; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            String str2 = childAt.getTag() instanceof String ? (String) childAt.getTag() : null;
            if (str2 != null && str2.startsWith(substring)) {
                if (str2.length() == str.length() && str2.charAt(str2.length() - 1) == '0') {
                    return i9;
                }
                if (isNumeric(str2, length)) {
                    i9 = i10;
                }
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewDataBinding getBinding(View view) {
        if (view != null) {
            return (ViewDataBinding) view.getTag(R.id.dataBinding);
        }
        return null;
    }

    public static int getBuildSdkInt() {
        return SDK_INT;
    }

    protected static int getColorFromResource(View view, int i9) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColor(i9);
        }
        return view.getResources().getColor(i9);
    }

    protected static ColorStateList getColorStateListFromResource(View view, int i9) {
        if (Build.VERSION.SDK_INT >= 23) {
            return view.getContext().getColorStateList(i9);
        }
        return view.getResources().getColorStateList(i9);
    }

    protected static Drawable getDrawableFromResource(View view, int i9) {
        return view.getContext().getDrawable(i9);
    }

    protected static <K, T> T getFrom(Map<K, T> map, K k10) {
        if (map == null) {
            return null;
        }
        return map.get(k10);
    }

    protected static <T> T getFromArray(T[] tArr, int i9) {
        if (tArr == null || i9 < 0 || i9 >= tArr.length) {
            return null;
        }
        return tArr[i9];
    }

    protected static <T> T getFromList(List<T> list, int i9) {
        if (list == null || i9 < 0 || i9 >= list.size()) {
            return null;
        }
        return list.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFieldChange(int i9, Object obj, int i10) {
        if (!this.mInLiveDataRegisterObserver && onFieldChange(i9, obj, i10)) {
            requestRebind();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static <T extends ViewDataBinding> T inflateInternal(@NonNull LayoutInflater layoutInflater, int i9, @Nullable ViewGroup viewGroup, boolean z10, @Nullable Object obj) {
        return (T) DataBindingUtil.inflate(layoutInflater, i9, viewGroup, z10, checkAndCastToBindingComponent(obj));
    }

    private static boolean isNumeric(String str, int i9) {
        int length = str.length();
        if (length == i9) {
            return false;
        }
        while (i9 < length) {
            if (!Character.isDigit(str.charAt(i9))) {
                return false;
            }
            i9++;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object[] mapBindings(DataBindingComponent dataBindingComponent, View view, int i9, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i9];
        mapBindings(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        return objArr;
    }

    protected static boolean parse(String str, boolean z10) {
        return str == null ? z10 : Boolean.parseBoolean(str);
    }

    private static int parseTagInt(String str, int i9) {
        int length = str.length();
        int i10 = 0;
        while (i9 < length) {
            i10 = (i10 * 10) + (str.charAt(i9) - '0');
            i9++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processReferenceQueue() {
        while (true) {
            Reference<? extends ViewDataBinding> poll = sReferenceQueue.poll();
            if (poll == null) {
                return;
            }
            if (poll instanceof WeakListener) {
                ((WeakListener) poll).unregister();
            }
        }
    }

    protected static int safeUnbox(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    protected static void setBindingInverseListener(ViewDataBinding viewDataBinding, InverseBindingListener inverseBindingListener, PropertyChangedInverseListener propertyChangedInverseListener) {
        if (inverseBindingListener != propertyChangedInverseListener) {
            if (inverseBindingListener != null) {
                viewDataBinding.removeOnPropertyChangedCallback((PropertyChangedInverseListener) inverseBindingListener);
            }
            if (propertyChangedInverseListener != null) {
                viewDataBinding.addOnPropertyChangedCallback(propertyChangedInverseListener);
            }
        }
    }

    protected static <T> void setTo(T[] tArr, int i9, T t10) {
        if (tArr == null || i9 < 0 || i9 >= tArr.length) {
            return;
        }
        tArr[i9] = t10;
    }

    private boolean updateRegistration(int i9, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return unregisterFrom(i9);
        }
        WeakListener weakListener = this.mLocalFieldObservers[i9];
        if (weakListener == null) {
            registerTo(i9, obj, createWeakListener);
            return true;
        } else if (weakListener.getTarget() == obj) {
            return false;
        } else {
            unregisterFrom(i9);
            registerTo(i9, obj, createWeakListener);
            return true;
        }
    }

    public void addOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        if (this.mRebindCallbacks == null) {
            this.mRebindCallbacks = new CallbackRegistry<>(REBIND_NOTIFIER);
        }
        this.mRebindCallbacks.add(onRebindCallback);
    }

    protected void ensureBindingComponentIsNotNull(Class<?> cls) {
        if (this.mBindingComponent != null) {
            return;
        }
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    protected abstract void executeBindings();

    public void executePendingBindings() {
        ViewDataBinding viewDataBinding = this.mContainingBinding;
        if (viewDataBinding == null) {
            executeBindingsInternal();
        } else {
            viewDataBinding.executePendingBindings();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceExecuteBindings() {
        executeBindings();
    }

    @Nullable
    public LifecycleOwner getLifecycleOwner() {
        return this.mLifecycleOwner;
    }

    protected Object getObservedField(int i9) {
        WeakListener weakListener = this.mLocalFieldObservers[i9];
        if (weakListener == null) {
            return null;
        }
        return weakListener.getTarget();
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.mRoot;
    }

    public abstract boolean hasPendingBindings();

    public abstract void invalidateAll();

    protected abstract boolean onFieldChange(int i9, Object obj, int i10);

    protected void registerTo(int i9, Object obj, CreateWeakListener createWeakListener) {
        if (obj == null) {
            return;
        }
        WeakListener weakListener = this.mLocalFieldObservers[i9];
        if (weakListener == null) {
            weakListener = createWeakListener.create(this, i9);
            this.mLocalFieldObservers[i9] = weakListener;
            LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
            if (lifecycleOwner != null) {
                weakListener.setLifecycleOwner(lifecycleOwner);
            }
        }
        weakListener.setTarget(obj);
    }

    public void removeOnRebindCallback(@NonNull OnRebindCallback onRebindCallback) {
        CallbackRegistry<OnRebindCallback, ViewDataBinding, Void> callbackRegistry = this.mRebindCallbacks;
        if (callbackRegistry != null) {
            callbackRegistry.remove(onRebindCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void requestRebind() {
        ViewDataBinding viewDataBinding = this.mContainingBinding;
        if (viewDataBinding != null) {
            viewDataBinding.requestRebind();
            return;
        }
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        if (lifecycleOwner == null || lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            synchronized (this) {
                if (this.mPendingRebind) {
                    return;
                }
                this.mPendingRebind = true;
                if (USE_CHOREOGRAPHER) {
                    this.mChoreographer.postFrameCallback(this.mFrameCallback);
                } else {
                    this.mUIThreadHandler.post(this.mRebindRunnable);
                }
            }
        }
    }

    protected void setContainedBinding(ViewDataBinding viewDataBinding) {
        if (viewDataBinding != null) {
            viewDataBinding.mContainingBinding = this;
        }
    }

    @MainThread
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        WeakListener[] weakListenerArr;
        LifecycleOwner lifecycleOwner2 = this.mLifecycleOwner;
        if (lifecycleOwner2 == lifecycleOwner) {
            return;
        }
        if (lifecycleOwner2 != null) {
            lifecycleOwner2.getLifecycle().removeObserver(this.mOnStartListener);
        }
        this.mLifecycleOwner = lifecycleOwner;
        if (lifecycleOwner != null) {
            if (this.mOnStartListener == null) {
                this.mOnStartListener = new OnStartListener();
            }
            lifecycleOwner.getLifecycle().addObserver(this.mOnStartListener);
        }
        for (WeakListener weakListener : this.mLocalFieldObservers) {
            if (weakListener != null) {
                weakListener.setLifecycleOwner(lifecycleOwner);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRootTag(View view) {
        view.setTag(R.id.dataBinding, this);
    }

    public abstract boolean setVariable(int i9, @Nullable Object obj);

    public void unbind() {
        WeakListener[] weakListenerArr;
        for (WeakListener weakListener : this.mLocalFieldObservers) {
            if (weakListener != null) {
                weakListener.unregister();
            }
        }
    }

    protected boolean unregisterFrom(int i9) {
        WeakListener weakListener = this.mLocalFieldObservers[i9];
        if (weakListener != null) {
            return weakListener.unregister();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean updateLiveDataRegistration(int i9, LiveData<?> liveData) {
        this.mInLiveDataRegisterObserver = true;
        try {
            return updateRegistration(i9, liveData, CREATE_LIVE_DATA_LISTENER);
        } finally {
            this.mInLiveDataRegisterObserver = false;
        }
    }

    protected static byte parse(String str, byte b10) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b10;
        }
    }

    protected static long safeUnbox(Long l10) {
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    protected void setRootTag(View[] viewArr) {
        for (View view : viewArr) {
            view.setTag(R.id.dataBinding, this);
        }
    }

    protected static boolean getFromArray(boolean[] zArr, int i9) {
        if (zArr == null || i9 < 0 || i9 >= zArr.length) {
            return false;
        }
        return zArr[i9];
    }

    protected static <T> T getFromList(SparseArray<T> sparseArray, int i9) {
        if (sparseArray == null || i9 < 0) {
            return null;
        }
        return sparseArray.get(i9);
    }

    protected static Object[] mapBindings(DataBindingComponent dataBindingComponent, View[] viewArr, int i9, IncludedLayouts includedLayouts, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i9];
        for (View view : viewArr) {
            mapBindings(dataBindingComponent, view, objArr, includedLayouts, sparseIntArray, true);
        }
        return objArr;
    }

    protected static short parse(String str, short s10) {
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s10;
        }
    }

    protected static short safeUnbox(Short sh2) {
        if (sh2 == null) {
            return (short) 0;
        }
        return sh2.shortValue();
    }

    protected static void setTo(boolean[] zArr, int i9, boolean z10) {
        if (zArr == null || i9 < 0 || i9 >= zArr.length) {
            return;
        }
        zArr[i9] = z10;
    }

    protected static <T> T getFromList(LongSparseArray<T> longSparseArray, int i9) {
        if (longSparseArray == null || i9 < 0) {
            return null;
        }
        return longSparseArray.get(i9);
    }

    protected static int parse(String str, int i9) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i9;
        }
    }

    protected static byte safeUnbox(Byte b10) {
        if (b10 == null) {
            return (byte) 0;
        }
        return b10.byteValue();
    }

    protected static byte getFromArray(byte[] bArr, int i9) {
        if (bArr == null || i9 < 0 || i9 >= bArr.length) {
            return (byte) 0;
        }
        return bArr[i9];
    }

    protected static <T> T getFromList(androidx.collection.LongSparseArray<T> longSparseArray, int i9) {
        if (longSparseArray == null || i9 < 0) {
            return null;
        }
        return longSparseArray.get(i9);
    }

    protected static long parse(String str, long j10) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    protected static char safeUnbox(Character ch2) {
        if (ch2 == null) {
            return (char) 0;
        }
        return ch2.charValue();
    }

    protected static void setTo(byte[] bArr, int i9, byte b10) {
        if (bArr == null || i9 < 0 || i9 >= bArr.length) {
            return;
        }
        bArr[i9] = b10;
    }

    protected static boolean getFromList(SparseBooleanArray sparseBooleanArray, int i9) {
        if (sparseBooleanArray == null || i9 < 0) {
            return false;
        }
        return sparseBooleanArray.get(i9);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void mapBindings(androidx.databinding.DataBindingComponent r16, android.view.View r17, java.lang.Object[] r18, androidx.databinding.ViewDataBinding.IncludedLayouts r19, android.util.SparseIntArray r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.databinding.ViewDataBinding.mapBindings(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[], androidx.databinding.ViewDataBinding$IncludedLayouts, android.util.SparseIntArray, boolean):void");
    }

    protected static float parse(String str, float f10) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f10;
        }
    }

    protected static double safeUnbox(Double d10) {
        if (d10 == null) {
            return 0.0d;
        }
        return d10.doubleValue();
    }

    protected static short getFromArray(short[] sArr, int i9) {
        if (sArr == null || i9 < 0 || i9 >= sArr.length) {
            return (short) 0;
        }
        return sArr[i9];
    }

    protected static int getFromList(SparseIntArray sparseIntArray, int i9) {
        if (sparseIntArray == null || i9 < 0) {
            return 0;
        }
        return sparseIntArray.get(i9);
    }

    protected static double parse(String str, double d10) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d10;
        }
    }

    protected static float safeUnbox(Float f10) {
        if (f10 == null) {
            return 0.0f;
        }
        return f10.floatValue();
    }

    protected static void setTo(short[] sArr, int i9, short s10) {
        if (sArr == null || i9 < 0 || i9 >= sArr.length) {
            return;
        }
        sArr[i9] = s10;
    }

    protected boolean updateRegistration(int i9, Observable observable) {
        return updateRegistration(i9, observable, CREATE_PROPERTY_LISTENER);
    }

    protected static long getFromList(SparseLongArray sparseLongArray, int i9) {
        if (sparseLongArray == null || i9 < 0) {
            return 0L;
        }
        return sparseLongArray.get(i9);
    }

    protected static char parse(String str, char c10) {
        return (str == null || str.isEmpty()) ? c10 : str.charAt(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean safeUnbox(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    protected boolean updateRegistration(int i9, ObservableList observableList) {
        return updateRegistration(i9, observableList, CREATE_LIST_LISTENER);
    }

    protected static char getFromArray(char[] cArr, int i9) {
        if (cArr == null || i9 < 0 || i9 >= cArr.length) {
            return (char) 0;
        }
        return cArr[i9];
    }

    protected static void setTo(char[] cArr, int i9, char c10) {
        if (cArr == null || i9 < 0 || i9 >= cArr.length) {
            return;
        }
        cArr[i9] = c10;
    }

    protected boolean updateRegistration(int i9, ObservableMap observableMap) {
        return updateRegistration(i9, observableMap, CREATE_MAP_LISTENER);
    }

    protected static int getFromArray(int[] iArr, int i9) {
        if (iArr == null || i9 < 0 || i9 >= iArr.length) {
            return 0;
        }
        return iArr[i9];
    }

    protected static void setTo(int[] iArr, int i9, int i10) {
        if (iArr == null || i9 < 0 || i9 >= iArr.length) {
            return;
        }
        iArr[i9] = i10;
    }

    protected static long getFromArray(long[] jArr, int i9) {
        if (jArr == null || i9 < 0 || i9 >= jArr.length) {
            return 0L;
        }
        return jArr[i9];
    }

    protected static void setTo(long[] jArr, int i9, long j10) {
        if (jArr == null || i9 < 0 || i9 >= jArr.length) {
            return;
        }
        jArr[i9] = j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewDataBinding(Object obj, View view, int i9) {
        this(checkAndCastToBindingComponent(obj), view, i9);
    }

    protected static float getFromArray(float[] fArr, int i9) {
        if (fArr == null || i9 < 0 || i9 >= fArr.length) {
            return 0.0f;
        }
        return fArr[i9];
    }

    protected static void setTo(float[] fArr, int i9, float f10) {
        if (fArr == null || i9 < 0 || i9 >= fArr.length) {
            return;
        }
        fArr[i9] = f10;
    }

    protected static double getFromArray(double[] dArr, int i9) {
        if (dArr == null || i9 < 0 || i9 >= dArr.length) {
            return 0.0d;
        }
        return dArr[i9];
    }

    protected static void setTo(double[] dArr, int i9, double d10) {
        if (dArr == null || i9 < 0 || i9 >= dArr.length) {
            return;
        }
        dArr[i9] = d10;
    }

    protected static <T> void setTo(List<T> list, int i9, T t10) {
        if (list == null || i9 < 0 || i9 >= list.size()) {
            return;
        }
        list.set(i9, t10);
    }

    protected static <T> void setTo(SparseArray<T> sparseArray, int i9, T t10) {
        if (sparseArray == null || i9 < 0 || i9 >= sparseArray.size()) {
            return;
        }
        sparseArray.put(i9, t10);
    }

    protected static <T> void setTo(LongSparseArray<T> longSparseArray, int i9, T t10) {
        if (longSparseArray == null || i9 < 0 || i9 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i9, t10);
    }

    protected static <T> void setTo(androidx.collection.LongSparseArray<T> longSparseArray, int i9, T t10) {
        if (longSparseArray == null || i9 < 0 || i9 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i9, t10);
    }

    protected static void setTo(SparseBooleanArray sparseBooleanArray, int i9, boolean z10) {
        if (sparseBooleanArray == null || i9 < 0 || i9 >= sparseBooleanArray.size()) {
            return;
        }
        sparseBooleanArray.put(i9, z10);
    }

    protected static void setTo(SparseIntArray sparseIntArray, int i9, int i10) {
        if (sparseIntArray == null || i9 < 0 || i9 >= sparseIntArray.size()) {
            return;
        }
        sparseIntArray.put(i9, i10);
    }

    protected static void setTo(SparseLongArray sparseLongArray, int i9, long j10) {
        if (sparseLongArray == null || i9 < 0 || i9 >= sparseLongArray.size()) {
            return;
        }
        sparseLongArray.put(i9, j10);
    }

    protected static <K, T> void setTo(Map<K, T> map, K k10, T t10) {
        if (map == null) {
            return;
        }
        map.put(k10, t10);
    }
}
