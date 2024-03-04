package androidx.recyclerview.widget;

import androidx.recyclerview.widget.TileList;
/* loaded from: classes.dex */
interface ThreadUtil<T> {

    /* loaded from: classes.dex */
    public interface BackgroundCallback<T> {
        void loadTile(int i9, int i10);

        void recycleTile(TileList.Tile<T> tile);

        void refresh(int i9);

        void updateRange(int i9, int i10, int i11, int i12, int i13);
    }

    /* loaded from: classes.dex */
    public interface MainThreadCallback<T> {
        void addTile(int i9, TileList.Tile<T> tile);

        void removeTile(int i9, int i10);

        void updateItemCount(int i9, int i10);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}
