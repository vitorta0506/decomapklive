package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
class TileList<T> {
    Tile<T> mLastAccessedTile;
    final int mTileSize;
    private final SparseArray<Tile<T>> mTiles = new SparseArray<>(10);

    /* loaded from: classes.dex */
    public static class Tile<T> {
        public int mItemCount;
        public final T[] mItems;
        Tile<T> mNext;
        public int mStartPosition;

        public Tile(Class<T> cls, int i9) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i9));
        }

        boolean containsPosition(int i9) {
            int i10 = this.mStartPosition;
            return i10 <= i9 && i9 < i10 + this.mItemCount;
        }

        T getByPosition(int i9) {
            return this.mItems[i9 - this.mStartPosition];
        }
    }

    public TileList(int i9) {
        this.mTileSize = i9;
    }

    public Tile<T> addOrReplace(Tile<T> tile) {
        int indexOfKey = this.mTiles.indexOfKey(tile.mStartPosition);
        if (indexOfKey < 0) {
            this.mTiles.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> valueAt = this.mTiles.valueAt(indexOfKey);
        this.mTiles.setValueAt(indexOfKey, tile);
        if (this.mLastAccessedTile == valueAt) {
            this.mLastAccessedTile = tile;
        }
        return valueAt;
    }

    public void clear() {
        this.mTiles.clear();
    }

    public Tile<T> getAtIndex(int i9) {
        if (i9 < 0 || i9 >= this.mTiles.size()) {
            return null;
        }
        return this.mTiles.valueAt(i9);
    }

    public T getItemAt(int i9) {
        Tile<T> tile = this.mLastAccessedTile;
        if (tile == null || !tile.containsPosition(i9)) {
            int indexOfKey = this.mTiles.indexOfKey(i9 - (i9 % this.mTileSize));
            if (indexOfKey < 0) {
                return null;
            }
            this.mLastAccessedTile = this.mTiles.valueAt(indexOfKey);
        }
        return this.mLastAccessedTile.getByPosition(i9);
    }

    public Tile<T> removeAtPos(int i9) {
        Tile<T> tile = this.mTiles.get(i9);
        if (this.mLastAccessedTile == tile) {
            this.mLastAccessedTile = null;
        }
        this.mTiles.delete(i9);
        return tile;
    }

    public int size() {
        return this.mTiles.size();
    }
}
