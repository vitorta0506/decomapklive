package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.f;
import e.l;
import j.c;
import m.d;
/* loaded from: classes.dex */
public class MergePaths implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f3755a;

    /* renamed from: b  reason: collision with root package name */
    private final MergePathsMode f3756b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f3757c;

    /* loaded from: classes.dex */
    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i9) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return MERGE;
                            }
                            return EXCLUDE_INTERSECTIONS;
                        }
                        return INTERSECT;
                    }
                    return SUBTRACT;
                }
                return ADD;
            }
            return MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z10) {
        this.f3755a = str;
        this.f3756b = mergePathsMode;
        this.f3757c = z10;
    }

    @Override // j.c
    @Nullable
    public e.c a(f fVar, com.airbnb.lottie.model.layer.a aVar) {
        if (!fVar.o()) {
            d.c("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new l(this);
    }

    public MergePathsMode b() {
        return this.f3756b;
    }

    public String c() {
        return this.f3755a;
    }

    public boolean d() {
        return this.f3757c;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f3756b + '}';
    }
}
