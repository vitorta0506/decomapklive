package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
/* loaded from: classes.dex */
public class Transformations {
    private Transformations() {
    }

    @MainThread
    public static <X, Y> LiveData<Y> map(@NonNull LiveData<X> liveData, @NonNull final Function<X, Y> function) {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations.1
            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable X x10) {
                MediatorLiveData.this.setValue(function.apply(x10));
            }
        });
        return mediatorLiveData;
    }

    @MainThread
    public static <X, Y> LiveData<Y> switchMap(@NonNull LiveData<X> liveData, @NonNull final Function<X, LiveData<Y>> function) {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer<X>() { // from class: androidx.lifecycle.Transformations.2
            LiveData<Y> mSource;

            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable X x10) {
                LiveData<Y> liveData2 = (LiveData) Function.this.apply(x10);
                Object obj = this.mSource;
                if (obj == liveData2) {
                    return;
                }
                if (obj != null) {
                    mediatorLiveData.removeSource(obj);
                }
                this.mSource = liveData2;
                if (liveData2 != 0) {
                    mediatorLiveData.addSource(liveData2, new Observer<Y>() { // from class: androidx.lifecycle.Transformations.2.1
                        @Override // androidx.lifecycle.Observer
                        public void onChanged(@Nullable Y y10) {
                            mediatorLiveData.setValue(y10);
                        }
                    });
                }
            }
        });
        return mediatorLiveData;
    }
}
