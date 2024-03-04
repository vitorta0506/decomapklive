package com.facebook.appevents.ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001b\u0010\b\u001a\u00020\u00062\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0007¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J+\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0013H\u0007J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u001e"}, d2 = {"Lcom/facebook/appevents/ml/Operator;", "", "()V", "addmv", "", x.f19108w, "Lcom/facebook/appevents/ml/MTensor;", "b", "concatenate", "tensors", "", "([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "conv1D", "w", "dense", "embedding", "texts", "", "seqLength", "", "([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "flatten", "startDim", "maxPool1D", "poolSize", "mul", "relu", "softmax", "transpose2D", "transpose3D", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Operator {
    @NotNull
    public static final Operator INSTANCE = new Operator();

    private Operator() {
    }

    @JvmStatic
    public static final void addmv(@NotNull MTensor x10, @NotNull MTensor b10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(b10, "b");
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            int shape3 = x10.getShape(2);
            float[] data = x10.getData();
            float[] data2 = b10.getData();
            if (shape <= 0) {
                return;
            }
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                if (shape2 > 0) {
                    int i11 = 0;
                    while (true) {
                        int i12 = i11 + 1;
                        if (shape3 > 0) {
                            int i13 = 0;
                            while (true) {
                                int i14 = i13 + 1;
                                int i15 = (i9 * shape2 * shape3) + (i11 * shape3) + i13;
                                data[i15] = data[i15] + data2[i13];
                                if (i14 >= shape3) {
                                    break;
                                }
                                i13 = i14;
                            }
                        }
                        if (i12 >= shape2) {
                            break;
                        }
                        i11 = i12;
                    }
                }
                if (i10 >= shape) {
                    return;
                }
                i9 = i10;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor concatenate(@NotNull MTensor[] tensors) {
        int i9;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(tensors, "tensors");
            int shape = tensors[0].getShape(0);
            int length = tensors.length - 1;
            if (length >= 0) {
                int i10 = 0;
                i9 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    i9 += tensors[i10].getShape(1);
                    if (i11 > length) {
                        break;
                    }
                    i10 = i11;
                }
            } else {
                i9 = 0;
            }
            MTensor mTensor = new MTensor(new int[]{shape, i9});
            float[] data = mTensor.getData();
            if (shape > 0) {
                int i12 = 0;
                while (true) {
                    int i13 = i12 + 1;
                    int i14 = i12 * i9;
                    int length2 = tensors.length - 1;
                    if (length2 >= 0) {
                        int i15 = 0;
                        while (true) {
                            int i16 = i15 + 1;
                            float[] data2 = tensors[i15].getData();
                            int shape2 = tensors[i15].getShape(1);
                            System.arraycopy(data2, i12 * shape2, data, i14, shape2);
                            i14 += shape2;
                            if (i16 > length2) {
                                break;
                            }
                            i15 = i16;
                        }
                    }
                    if (i13 >= shape) {
                        break;
                    }
                    i12 = i13;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor conv1D(@NotNull MTensor x10, @NotNull MTensor w6) {
        Class<Operator> cls;
        Class<Operator> cls2;
        MTensor mTensor;
        Class<Operator> cls3 = Operator.class;
        if (CrashShieldHandler.isObjectCrashing(cls3)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w6, "w");
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            int shape3 = x10.getShape(2);
            int shape4 = w6.getShape(0);
            int i9 = (shape2 - shape4) + 1;
            int shape5 = w6.getShape(2);
            MTensor mTensor2 = new MTensor(new int[]{shape, i9, shape5});
            float[] data = x10.getData();
            float[] data2 = mTensor2.getData();
            float[] data3 = w6.getData();
            if (shape <= 0) {
                return mTensor2;
            }
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                if (shape5 > 0) {
                    int i12 = 0;
                    while (true) {
                        int i13 = i12 + 1;
                        if (i9 > 0) {
                            int i14 = 0;
                            while (true) {
                                int i15 = i14 + 1;
                                float f10 = 0.0f;
                                if (shape4 > 0) {
                                    int i16 = 0;
                                    while (true) {
                                        cls2 = cls3;
                                        int i17 = i16 + 1;
                                        if (shape3 > 0) {
                                            int i18 = 0;
                                            while (true) {
                                                mTensor = mTensor2;
                                                int i19 = i18 + 1;
                                                try {
                                                    f10 += data[(shape2 * shape3 * i10) + ((i16 + i14) * shape3) + i18] * data3[(((i16 * shape3) + i18) * shape5) + i12];
                                                    if (i19 >= shape3) {
                                                        break;
                                                    }
                                                    i18 = i19;
                                                    mTensor2 = mTensor;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    cls = cls2;
                                                    CrashShieldHandler.handleThrowable(th, cls);
                                                    return null;
                                                }
                                            }
                                        } else {
                                            mTensor = mTensor2;
                                        }
                                        if (i17 >= shape4) {
                                            break;
                                        }
                                        i16 = i17;
                                        cls3 = cls2;
                                        mTensor2 = mTensor;
                                    }
                                } else {
                                    cls2 = cls3;
                                    mTensor = mTensor2;
                                }
                                data2[(i9 * shape5 * i10) + (i14 * shape5) + i12] = f10;
                                if (i15 >= i9) {
                                    break;
                                }
                                i14 = i15;
                                cls3 = cls2;
                                mTensor2 = mTensor;
                            }
                        } else {
                            cls2 = cls3;
                            mTensor = mTensor2;
                        }
                        if (i13 >= shape5) {
                            break;
                        }
                        i12 = i13;
                        cls3 = cls2;
                        mTensor2 = mTensor;
                    }
                } else {
                    cls2 = cls3;
                    mTensor = mTensor2;
                }
                if (i11 >= shape) {
                    return mTensor;
                }
                i10 = i11;
                cls3 = cls2;
                mTensor2 = mTensor;
            }
        } catch (Throwable th3) {
            th = th3;
            cls = cls3;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor dense(@NotNull MTensor x10, @NotNull MTensor w6, @NotNull MTensor b10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w6, "w");
            Intrinsics.checkNotNullParameter(b10, "b");
            int shape = x10.getShape(0);
            int shape2 = b10.getShape(0);
            MTensor mul = mul(x10, w6);
            float[] data = b10.getData();
            float[] data2 = mul.getData();
            if (shape > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (shape2 > 0) {
                        int i11 = 0;
                        while (true) {
                            int i12 = i11 + 1;
                            int i13 = (i9 * shape2) + i11;
                            data2[i13] = data2[i13] + data[i11];
                            if (i12 >= shape2) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    if (i10 >= shape) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return mul;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor embedding(@NotNull String[] texts, int i9, @NotNull MTensor w6) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(texts, "texts");
            Intrinsics.checkNotNullParameter(w6, "w");
            int length = texts.length;
            int shape = w6.getShape(1);
            MTensor mTensor = new MTensor(new int[]{length, i9, shape});
            float[] data = mTensor.getData();
            float[] data2 = w6.getData();
            if (length > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    int[] vectorize = Utils.INSTANCE.vectorize(texts[i10], i9);
                    if (i9 > 0) {
                        int i12 = 0;
                        while (true) {
                            int i13 = i12 + 1;
                            System.arraycopy(data2, vectorize[i12] * shape, data, (shape * i9 * i10) + (i12 * shape), shape);
                            if (i13 >= i9) {
                                break;
                            }
                            i12 = i13;
                        }
                    }
                    if (i11 >= length) {
                        break;
                    }
                    i10 = i11;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    public static final void flatten(@NotNull MTensor x10, int i9) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            if (i9 >= x10.getShapeSize()) {
                return;
            }
            int shapeSize = x10.getShapeSize();
            int i10 = 1;
            if (i9 < shapeSize) {
                int i11 = i9;
                while (true) {
                    int i12 = i11 + 1;
                    i10 *= x10.getShape(i11);
                    if (i12 >= shapeSize) {
                        break;
                    }
                    i11 = i12;
                }
            }
            int[] iArr = new int[i9 + 1];
            int i13 = 0;
            if (i9 > 0) {
                while (true) {
                    int i14 = i13 + 1;
                    iArr[i13] = x10.getShape(i13);
                    if (i14 >= i9) {
                        break;
                    }
                    i13 = i14;
                }
            }
            iArr[i9] = i10;
            x10.reshape(iArr);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor maxPool1D(@NotNull MTensor x10, int i9) {
        int i10;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            int shape3 = x10.getShape(2);
            int i11 = (shape2 - i9) + 1;
            MTensor mTensor = new MTensor(new int[]{shape, i11, shape3});
            float[] data = x10.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i12 = 0;
                while (true) {
                    int i13 = i12 + 1;
                    if (shape3 > 0) {
                        int i14 = 0;
                        while (true) {
                            int i15 = i14 + 1;
                            if (i11 > 0) {
                                int i16 = 0;
                                while (true) {
                                    int i17 = i16 + 1;
                                    int i18 = i16 * shape3;
                                    int i19 = (i12 * i11 * shape3) + i18 + i14;
                                    int i20 = (i12 * shape2 * shape3) + i18 + i14;
                                    data2[i19] = Float.MIN_VALUE;
                                    if (i9 > 0) {
                                        int i21 = 0;
                                        while (true) {
                                            int i22 = i21 + 1;
                                            i10 = shape2;
                                            data2[i19] = Math.max(data2[i19], data[i20 + (i21 * shape3)]);
                                            if (i22 >= i9) {
                                                break;
                                            }
                                            i21 = i22;
                                            shape2 = i10;
                                        }
                                    } else {
                                        i10 = shape2;
                                    }
                                    if (i17 >= i11) {
                                        break;
                                    }
                                    i16 = i17;
                                    shape2 = i10;
                                }
                            } else {
                                i10 = shape2;
                            }
                            if (i15 >= shape3) {
                                break;
                            }
                            i14 = i15;
                            shape2 = i10;
                        }
                    } else {
                        i10 = shape2;
                    }
                    if (i13 >= shape) {
                        break;
                    }
                    i12 = i13;
                    shape2 = i10;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor mul(@NotNull MTensor x10, @NotNull MTensor w6) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            Intrinsics.checkNotNullParameter(w6, "w");
            int shape = x10.getShape(0);
            int shape2 = w6.getShape(0);
            int shape3 = w6.getShape(1);
            MTensor mTensor = new MTensor(new int[]{shape, shape3});
            float[] data = x10.getData();
            float[] data2 = w6.getData();
            float[] data3 = mTensor.getData();
            if (shape > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (shape3 > 0) {
                        int i11 = 0;
                        while (true) {
                            int i12 = i11 + 1;
                            int i13 = (i9 * shape3) + i11;
                            data3[i13] = 0.0f;
                            if (shape2 > 0) {
                                int i14 = 0;
                                while (true) {
                                    int i15 = i14 + 1;
                                    data3[i13] = data3[i13] + (data[(i9 * shape2) + i14] * data2[(i14 * shape3) + i11]);
                                    if (i15 >= shape2) {
                                        break;
                                    }
                                    i14 = i15;
                                }
                            }
                            if (i12 >= shape3) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    if (i10 >= shape) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    public static final void relu(@NotNull MTensor x10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            float[] data = x10.getData();
            int i9 = 0;
            int length = data.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i10 = i9 + 1;
                if (data[i9] < 0.0f) {
                    data[i9] = 0.0f;
                }
                if (i10 > length) {
                    return;
                }
                i9 = i10;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
        }
    }

    @JvmStatic
    public static final void softmax(@NotNull MTensor x10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int i9 = 0;
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            float[] data = x10.getData();
            if (shape <= 0) {
                return;
            }
            while (true) {
                int i10 = i9 + 1;
                int i11 = i9 * shape2;
                int i12 = i11 + shape2;
                float f10 = Float.MIN_VALUE;
                float f11 = 0.0f;
                if (i11 < i12) {
                    int i13 = i11;
                    while (true) {
                        int i14 = i13 + 1;
                        if (data[i13] > f10) {
                            f10 = data[i13];
                        }
                        if (i14 >= i12) {
                            break;
                        }
                        i13 = i14;
                    }
                }
                if (i11 < i12) {
                    int i15 = i11;
                    while (true) {
                        int i16 = i15 + 1;
                        data[i15] = (float) Math.exp(data[i15] - f10);
                        f11 += data[i15];
                        if (i16 >= i12) {
                            break;
                        }
                        i15 = i16;
                    }
                }
                if (i11 < i12) {
                    while (true) {
                        int i17 = i11 + 1;
                        data[i11] = data[i11] / f11;
                        if (i17 >= i12) {
                            break;
                        }
                        i11 = i17;
                    }
                }
                if (i10 >= shape) {
                    return;
                }
                i9 = i10;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor transpose2D(@NotNull MTensor x10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            MTensor mTensor = new MTensor(new int[]{shape2, shape});
            float[] data = x10.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (shape2 > 0) {
                        int i11 = 0;
                        while (true) {
                            int i12 = i11 + 1;
                            data2[(i11 * shape) + i9] = data[(i9 * shape2) + i11];
                            if (i12 >= shape2) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    if (i10 >= shape) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor transpose3D(@NotNull MTensor x10) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x10, "x");
            int shape = x10.getShape(0);
            int shape2 = x10.getShape(1);
            int shape3 = x10.getShape(2);
            MTensor mTensor = new MTensor(new int[]{shape3, shape2, shape});
            float[] data = x10.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (shape2 > 0) {
                        int i11 = 0;
                        while (true) {
                            int i12 = i11 + 1;
                            if (shape3 > 0) {
                                int i13 = 0;
                                while (true) {
                                    int i14 = i13 + 1;
                                    data2[(i13 * shape * shape2) + (i11 * shape) + i9] = data[(i9 * shape2 * shape3) + (i11 * shape3) + i13];
                                    if (i14 >= shape3) {
                                        break;
                                    }
                                    i13 = i14;
                                }
                            }
                            if (i12 >= shape2) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    if (i10 >= shape) {
                        break;
                    }
                    i9 = i10;
                }
            }
            return mTensor;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, Operator.class);
            return null;
        }
    }
}
