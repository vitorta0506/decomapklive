package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes.dex */
class FocusStrategy {

    /* loaded from: classes.dex */
    public interface BoundsAdapter<T> {
        void obtainBounds(T t10, Rect rect);
    }

    /* loaded from: classes.dex */
    public interface CollectionAdapter<T, V> {
        V get(T t10, int i9);

        int size(T t10);
    }

    /* loaded from: classes.dex */
    private static class SequentialComparator<T> implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean z10, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z10;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t10, T t11) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t10, rect);
            this.mAdapter.obtainBounds(t11, rect2);
            int i9 = rect.top;
            int i10 = rect2.top;
            if (i9 < i10) {
                return -1;
            }
            if (i9 > i10) {
                return 1;
            }
            int i11 = rect.left;
            int i12 = rect2.left;
            if (i11 < i12) {
                return this.mIsLayoutRtl ? 1 : -1;
            } else if (i11 > i12) {
                return this.mIsLayoutRtl ? -1 : 1;
            } else {
                int i13 = rect.bottom;
                int i14 = rect2.bottom;
                if (i13 < i14) {
                    return -1;
                }
                if (i13 > i14) {
                    return 1;
                }
                int i15 = rect.right;
                int i16 = rect2.right;
                if (i15 < i16) {
                    return this.mIsLayoutRtl ? 1 : -1;
                } else if (i15 > i16) {
                    return this.mIsLayoutRtl ? -1 : 1;
                } else {
                    return 0;
                }
            }
        }
    }

    private FocusStrategy() {
    }

    private static boolean beamBeats(int i9, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean beamsOverlap = beamsOverlap(i9, rect, rect2);
        if (beamsOverlap(i9, rect, rect3) || !beamsOverlap) {
            return false;
        }
        return !isToDirectionOf(i9, rect, rect3) || i9 == 17 || i9 == 66 || majorAxisDistance(i9, rect, rect2) < majorAxisDistanceToFarEdge(i9, rect, rect3);
    }

    private static boolean beamsOverlap(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 != 17) {
            if (i9 != 33) {
                if (i9 != 66) {
                    if (i9 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l10, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t10, @NonNull Rect rect, int i9) {
        Rect rect2 = new Rect(rect);
        if (i9 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i9 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i9 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i9 == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t11 = null;
        int size = collectionAdapter.size(l10);
        Rect rect3 = new Rect();
        for (int i10 = 0; i10 < size; i10++) {
            T t12 = collectionAdapter.get(l10, i10);
            if (t12 != t10) {
                boundsAdapter.obtainBounds(t12, rect3);
                if (isBetterCandidate(i9, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t11 = t12;
                }
            }
        }
        return t11;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l10, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t10, int i9, boolean z10, boolean z11) {
        int size = collectionAdapter.size(l10);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(collectionAdapter.get(l10, i10));
        }
        Collections.sort(arrayList, new SequentialComparator(z10, boundsAdapter));
        if (i9 != 1) {
            if (i9 == 2) {
                return (T) getNextFocusable(t10, arrayList, z11);
            }
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        return (T) getPreviousFocusable(t10, arrayList, z11);
    }

    private static <T> T getNextFocusable(T t10, ArrayList<T> arrayList, boolean z10) {
        int size = arrayList.size();
        int lastIndexOf = (t10 == null ? -1 : arrayList.lastIndexOf(t10)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static <T> T getPreviousFocusable(T t10, ArrayList<T> arrayList, boolean z10) {
        int size = arrayList.size();
        int indexOf = (t10 == null ? size : arrayList.indexOf(t10)) - 1;
        if (indexOf >= 0) {
            return arrayList.get(indexOf);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int getWeightedDistanceFor(int i9, int i10) {
        return (i9 * 13 * i9) + (i10 * i10);
    }

    private static boolean isBetterCandidate(int i9, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (isCandidate(rect, rect2, i9)) {
            if (isCandidate(rect, rect3, i9) && !beamBeats(i9, rect, rect2, rect3)) {
                return !beamBeats(i9, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i9, rect, rect2), minorAxisDistance(i9, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i9, rect, rect3), minorAxisDistance(i9, rect, rect3));
            }
            return true;
        }
        return false;
    }

    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int i9) {
        if (i9 == 17) {
            int i10 = rect.right;
            int i11 = rect2.right;
            return (i10 > i11 || rect.left >= i11) && rect.left > rect2.left;
        } else if (i9 == 33) {
            int i12 = rect.bottom;
            int i13 = rect2.bottom;
            return (i12 > i13 || rect.top >= i13) && rect.top > rect2.top;
        } else if (i9 == 66) {
            int i14 = rect.left;
            int i15 = rect2.left;
            return (i14 < i15 || rect.right <= i15) && rect.right < rect2.right;
        } else if (i9 == 130) {
            int i16 = rect.top;
            int i17 = rect2.top;
            return (i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static boolean isToDirectionOf(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 == 17) {
            return rect.left >= rect2.right;
        } else if (i9 == 33) {
            return rect.top >= rect2.bottom;
        } else if (i9 == 66) {
            return rect.right <= rect2.left;
        } else if (i9 == 130) {
            return rect.bottom <= rect2.top;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static int majorAxisDistance(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i9, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        int i10;
        int i11;
        if (i9 == 17) {
            i10 = rect.left;
            i11 = rect2.right;
        } else if (i9 == 33) {
            i10 = rect.top;
            i11 = rect2.bottom;
        } else if (i9 == 66) {
            i10 = rect2.left;
            i11 = rect.right;
        } else if (i9 == 130) {
            i10 = rect2.top;
            i11 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i10 - i11;
    }

    private static int majorAxisDistanceToFarEdge(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i9, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        int i10;
        int i11;
        if (i9 == 17) {
            i10 = rect.left;
            i11 = rect2.left;
        } else if (i9 == 33) {
            i10 = rect.top;
            i11 = rect2.top;
        } else if (i9 == 66) {
            i10 = rect2.right;
            i11 = rect.right;
        } else if (i9 == 130) {
            i10 = rect2.bottom;
            i11 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i10 - i11;
    }

    private static int minorAxisDistance(int i9, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i9 != 17) {
            if (i9 != 33) {
                if (i9 != 66) {
                    if (i9 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
